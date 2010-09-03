
#define RX_ENABLE_PIN   13
#define TX_ENABLE_PIN   12
#define DEBUG_PIN 0

void setup()
{
 pinMode(RX_ENABLE_PIN, OUTPUT);
 pinMode(TX_ENABLE_PIN, OUTPUT);
 pinMode(DEBUG_PIN, OUTPUT);

  digitalWrite(TX_ENABLE_PIN, HIGH); //enable tx
  digitalWrite(RX_ENABLE_PIN, LOW); //enable rx
  digitalWrite(DEBUG_PIN, LOW); //disable led

  Serial.begin(9600);
  Serial.println("started");
  
  Serial1.begin(9600);
  Serial1.println("hello?");

  if (Serial1.available() > 0)
  {
    digitalWrite(DEBUG_PIN, HIGH);
    Serial.println("RS485 active.");
  }
}

void loop()
{
}
