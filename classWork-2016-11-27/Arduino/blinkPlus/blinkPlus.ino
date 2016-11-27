int ledPin1 = 13;

void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin1, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(ledPin1, HIGH);
  delay(200);
  digitalWrite(ledPin1, LOW);
  delay(50);
}
