int ledPin = 9;
int inputPin = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
}

void loop() {

  int reading = analogRead(inputPin);
  
  analogWrite(ledPin, reading/4);
  delay(30);
}
