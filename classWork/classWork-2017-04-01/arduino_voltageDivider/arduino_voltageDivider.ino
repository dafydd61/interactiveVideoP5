int led = 9;

void setup() {
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int reading = analogRead(0);
  Serial.println(reading);

  int brightness = map(reading, 54, 974, 0, 255);
  brightness = constrain(brightness, 0, 255);

  analogWrite(led, brightness);
  delay(30);
}
