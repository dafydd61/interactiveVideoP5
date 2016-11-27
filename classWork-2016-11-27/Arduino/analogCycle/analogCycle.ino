int ledPin1 = 9;

void setup() {
  pinMode(ledPin1, OUTPUT);
}

void loop() {
  analogWrite(ledPin1, 255);
  delay(500);
  analogWrite(ledPin1, 0);
  delay(500);
  analogWrite(ledPin1, 200);
  delay(500);
  analogWrite(ledPin1, 100);
  delay(500);
  analogWrite(ledPin1, 50);
  delay(1000);
}
