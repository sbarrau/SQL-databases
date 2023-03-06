#! /bin/bash

echo -e "\n***** BARBI-CHAN BODY PIERCING *****\n"

echo -e "\n¡Bienvenidos! ¿Como podemos ayudarlo?\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  # display the list of services
  PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
  SERVICES=$($PSQL "SELECT * FROM services")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # get service_id
  read SERVICE_ID_SELECTED
  # get the name of the service
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  # if it doesn't exist
  if [[ -z $SERVICE_NAME ]]
  then
    # send to the main menu
    MAIN_MENU "Ingrese una opcion valida. ¿Como podemos ayudarlo?"
  else
    # ask for phone number
    echo -e "\n Ingrese su numero telefonico"
    read CUSTOMER_PHONE
    # get the customer's name
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
    # if not found
    if [[ -z $CUSTOMER_NAME ]]
    then
      # ask for name
      echo -e "\nSu numero no se encuentra en nuestra base de datos, ¿Cual es su nombre?"
      read CUSTOMER_NAME
      # insert new customer
      INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    fi
    
    SERVICE_NAME_FORMATTED=$(echo $SERVICE_NAME | sed 's/ //g')
    CUSTOMER_NAME_FORMATTED=$(echo $CUSTOMER_NAME | sed 's/ //g')
    # ask for the time of appointment
    echo -e "\nCuando desea realizarse su $SERVICE_NAME_FORMATTED, $CUSTOMER_NAME_FORMATTED?"
    read SERVICE_TIME

    # get the customer ID
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
    INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
    echo -e "\nTurno agendado para  $SERVICE_NAME_FORMATTED con fecha  $SERVICE_TIME, $CUSTOMER_NAME_FORMATTED."

  fi

}

MAIN_MENU
