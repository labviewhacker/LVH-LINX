/****************************************************************************************	
**  This is example LINX firmware for use with the chipKIT WiFIRE with the WIFI
**  interface enabled.
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sudharsan Sukumar
**
**  BSD2 license.
****************************************************************************************/

//Include All Peripheral Libraries Used By LINX
#include <SPI.h>
#include <Wire.h>
#include <EEPROM.h>
#include <Servo.h>

#include <MRF24G.h>
#include <DEIPcK.h>
#include <DEWFcK.h>

//Include Device Specific Header From Sketch>>Import Library (In This Case LinxChipkitMax32.h)
//Also Include Desired LINX Listener From Sketch>>Import Library (In This Case LinxSerialListener.h)
#include <LinxChipkitWifire.h>
#include <LinxChipkitWifiListener.h>
 
//Create A Pointer To The LINX Device Object We Instantiate In Setup()
LinxChipkitWifire* LinxDevice;

//Initialize LINX Device And Listener
void setup()
{
  //Instantiate The LINX Device
  LinxDevice = new LinxChipkitWifire();
  
   //The LINX Serial Listener Is Included In WIFI Listener And Pre Instantiated.
  LinxSerialConnection.Start(LinxDevice, 0);  
  
  //The LINX Listener Is Pre Instantiated.  
  //Set SSID (Network Name), Security Type, Passphrase/Key, And Call Start With Desired Device IP and Port
  LinxWifiConnection.SetSsid("Put YOUR SSID Here");
  LinxWifiConnection.SetSecurity(WPA2_PASSPHRASE);    		   //NONE, WPA2_PASSPHRASE, WPA2_KEY, WEP40, WEO104
  LinxWifiConnection.SetPassphrase("Put YOUR Password Here");    			   //NONE, WPA2_PASSPHRASE, WPA2_KEY, WEP40, WEO104
  LinxWifiConnection.Start(LinxDevice, 192, 168, 1, 128, 44300);  //Start With Fixed IP and Port.  When Using This Method You Cannot Update The IP/Port Using LINX VIs
}

void loop()
{
  //Listen For New Packets From LabVIEW
  LinxWifiConnection.CheckForCommands();
  
  //Your Code Here, But It will Slow Down The Connection With LabVIEW
}


