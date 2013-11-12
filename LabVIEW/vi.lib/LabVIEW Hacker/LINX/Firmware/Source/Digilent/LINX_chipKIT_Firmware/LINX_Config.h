/****************************************************************************************
**  Configuration
****************************************************************************************/


//Prevent Multiple Includes
#ifndef LINX_CONFIG_H
#define LINX_CONFIG_H

/****************************************************************************************
**
**--------------------------- DEVICE CONFIGURATION -------------------------------------- 
**
****************************************************************************************/

/*------------------------------------ DEVICE -----------------------------------------*/
//    DIGILENT
//#define CHIPKIT_UC32
//#define CHIPKIT_UNO32
#define CHIPKIT_MAX32

//    ARDUINO
//#define ARDUINO_UNO

/*----------------------------------- INTERFACE ---------------------------------------*/

//Serial
#define LINX_SERIAL_INTERFACE_ENABLED 1

//Ethernet
//#define LINX_ETHERNET_INTERFACE_ENABLED 1
//#define LINX_ETHERNET_DEFAULT_IP {10, 2, 106, 213}
//#define LINX_ETHERNET_RX_BUFF_SIZE 256
//#define LINX_ETHERNET_TX_BUFF_SIZE 256
//#define LINX_ETHERNET_DEFAULT_TIMEOUT 1000              //Ethernet Timeout In mS

//WIFI
//#define LINX_WIFI_INTERFACE_ENABLED 1

        //Device ID
        //#define DEVICE_FAMILY 1
        //#define DEVICE_ID 1
   
/*------------------------------------- DEBUG -----------------------------------------*/
//Uncomment To Enable Debugging On The Secondary Serial Port.

#define DEBUG_ENABLED 1


/****************************************************************************************
**
**--------------------------- PERIPHERAL CONFIGURATION ---------------------------------- 
** (THIS SHOULD EVENTUALLY BE MOVED TO LV CONFIGURABLE)
****************************************************************************************/

//--------------------------- SPI -----------------------------------------------------//
unsigned char SPI_csActiveLow  = 1;  //CS Pin Defaults To Active Low
unsigned char SPI_csPin = 10;        //Default CS Pin
#endif  //LINX_CONFIG_H
