# Puzzlebot firmware

## 1. Features
The puzzlebot firmware implements functionality for handling sensors, actuators and communication for a ground mobile robot.
Currently, the software is designed to work on an espressif esp32 microcontroller. Developement and uploading is done using the **Arduino IDE**.

The existing functionality is detailed in the following.


Sensors:
 - encoders (Encoder class);
 - sonars (Sonar class);
 - reflectance sensors (ReflectanceSensor class);


Actuators:
 - dc motors and brushless motors (MotorDriver class);
 - servomotor (ServoMotor class);


Communication:
 - implementation of a peer to peer communication protocol. Used for direct communication over wifi with programs developped in  matlab, Labview, python, c++ etc (RobotServer class);
 - communication with robot operationg system - ROS (serial or wifi);
 - web server - implements communication with a web browser and allows setting, reading parameters and editing text files;
 - WiFi access point setup (RobotServer class);


Others:
 - incremental PID controler (PIDController class);
 - display support (Screen class);
 - loading config parameters from text files stored in the esp32 flash memory (RobotServer class);

## 2. Build
Building and flashing the project can be done using the **[Arduino IDE](https://www.arduino.cc/en/main/software)**.

### Dependencies
The following libraries need to be installed in the **Arduino IDE**:
 - Espressif esp32 library: https://github.com/espressif/arduino-esp32 (follow instructions)

 - Ros library for arduino: http://wiki.ros.org/rosserial_arduino/Tutorials/Arduino%20IDE%20Setup . Command line for **Ubuntu** with **ROS Melodic**:
 ```
  sudo apt-get install ros-melodic-rosserial-arduino
  sudo apt-get install ros-melodic-rosserial
  cd <sketchbook>/libraries
  rm -rf ros_lib
  rosrun rosserial_arduino make_libraries.py .
  ```

 - File system uploader: Follow tutorial --> https://randomnerdtutorials.com/install-esp32-filesystem-uploader-arduino-ide/

 - Display library: ESP8266_and_ESP32_OLED_driver_for_SSD1306_displays (Install from arduino library manager)
 
 ## 3. Flash with binaries
Get latest binaries from https://github.com/codres-ali/puzzlebot-firmware/releases  
The firmware utilities allow for flashing the puzzlebot firmware and SPIFFS file system data on the ESP32 chip.

### Linux
To flash the data files to the esp32 execute the following in a terminal:
```
./DataFlash.sh
```
To flash the firmware to the esp32 execute the following in a terminal:
```
./FirmwareFlash.sh
```
The script files are located in the */Linux* folder from the downloaded binaries. Set permission to be executed in properties to both files.

The default usb port used in the srcipts is `/dev/ttyUSB0`. It can be changed in both script files in case a different usb port is alocated to the esp32. 

### Windows
To flash the data files to the esp32 run `DataFlash.bat`.  
To flash the firmware to the esp32 run `FirmwareFlash.bat`.

The script files are located in the */Windows* folder from the downloaded binaries.

The default usb port used in the srcipts is `COM3`. It can be changed in both script files in case a different usb port is alocated to the esp32.

## 4. Robot configuration

**ToDo**


