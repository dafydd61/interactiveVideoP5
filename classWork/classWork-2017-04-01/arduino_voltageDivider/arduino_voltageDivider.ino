int led = 3;

void setup() {
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int reading = analogRead(0)/4;
  Serial.write(reading);

  analogWrite(led, reading);
  delay(30);
}
