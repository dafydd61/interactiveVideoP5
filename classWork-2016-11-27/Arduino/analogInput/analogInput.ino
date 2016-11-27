int ledPin1 = 9;

void setup() {
  pinMode(ledPin1, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  int reading = analogRead(0);
  Serial.println(reading);
  
  int brightness = map(reading, 0, 800, 0, 255);
  
  analogWrite(ledPin1, brightness);
  delay(5);
}
