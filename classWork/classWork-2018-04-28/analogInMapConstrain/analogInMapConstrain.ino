int ledPin = 9;
int inputPin = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  int reading = analogRead(inputPin);
  Serial.println(reading);

  float mappedValue = map(reading, 55, 470, 0, 255);
  float constrainedValue = constrain(mappedValue, 0, 255);
  
  analogWrite(ledPin, constrainedValue);
  delay(30);
}
