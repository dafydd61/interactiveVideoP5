/*
arduino_test

Dead simple test to make sure Arduino and Processing can see each other.

You need: an Arduino

1. In Arduino, upload Standard Firmata (File > Examples > Firmata > Standard Firmata).
2. In Processing, make sure you have the Arduino (Firmata) library installed:
   a. Tools > Add Tool...
   b. Under Libraries, search for "arduino" and install.
3. With the Arduino connected, run this sketch. It should auto-detect the correct port. If so, you'll get a "Using Serial port..." message in the console below.
   If it doesn't see the correct port, you may need to look at the list of ports - you're looking for one that says either "...tty.usbmodem..." or "...cu.usbmodem...".
   Simply replace "arduinoPort" on line 55 with the correct port number.
4. You should see a window with a single square in it. When you click the square, the light beside pin 13 on the Arduino should light up.
5. Works? Great. Done!
6. Doesn't work? Call me: 416-712-2791.

*/

import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

int[] values = { Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW,
 Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW,
 Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW, Arduino.LOW };

void setup() {
  size(470, 200);
  
  int arduinoPort = 0;
  
  // Prints out the available serial ports.
  for (int i = 0; i < Arduino.list().length; i++) {
    println(i + ": " + Arduino.list()[i]);
    String[] m = match(Arduino.list()[i], "tty.usbmodem");
    if (m != null) {
      arduinoPort = i;
    }
  }
  
  // Modify this line, by changing the "0" to the index of the serial
  // port corresponding to your Arduino board (as it appears in the list
  // printed by the line above).
  println();
  println("Using Serial port " + arduinoPort + "(" + Arduino.list()[arduinoPort] + ")");
  
  // If I can't autodetect your port, just replace "arduinoPort" below with the correct port number:
  arduino = new Arduino(this, Arduino.list()[arduinoPort], 57600);
  
  // Alternatively, use the name of the serial port corresponding to your
  // Arduino (in double-quotes), as in the following line.
  //arduino = new Arduino(this, "/dev/tty.usbmodem621", 57600);
  
  // Set the Arduino digital pins as outputs.
  for (int i = 0; i <= 13; i++)
    arduino.pinMode(i, Arduino.OUTPUT);
}

void draw() {
  background(off);
  stroke(on);
  
  for (int i = 13; i <= 13; i++) {
    if (values[i] == Arduino.HIGH)
      fill(on);
    else
      fill(off);
      
    rect(420 - i * 30, 30, 20, 20);
  }
}

void mousePressed()
{
  int pin = (450 - mouseX) / 30;
  
  // Toggle the pin corresponding to the clicked square.
  if (values[pin] == Arduino.LOW) {
    arduino.digitalWrite(pin, Arduino.HIGH);
    values[pin] = Arduino.HIGH;
  } else {
    arduino.digitalWrite(pin, Arduino.LOW);
    values[pin] = Arduino.LOW;
  }
}