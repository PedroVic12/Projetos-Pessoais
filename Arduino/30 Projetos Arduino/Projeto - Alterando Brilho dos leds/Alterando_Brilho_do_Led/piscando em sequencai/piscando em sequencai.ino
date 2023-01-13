// Projeto - Piscando Leds em Sequencia

int LED1 =2;
int LED2=4;  
int LED3 =7;  
int LED4 =9;  

int num_vezes = 1;
int i = 1;

void acenderLed(int num_led){
  digitalWrite(num_led,HIGH);
  delay(100);
  digitalWrite(num_led,LOW);
  Serial.println(num_led);

}

void setup() {
    // put your setup code here, to run once:
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);

  Serial.begin(9600);


}

void loop() {
  // put your main code here, to run repeatedly:

  while(num_vezes <=50){

    acenderLed(LED1);
    delay(200);

    acenderLed(LED2);
    delay(200);

    acenderLed(LED3);
    delay(200);

    acenderLed(LED4);
    num_vezes++;

  }

}
