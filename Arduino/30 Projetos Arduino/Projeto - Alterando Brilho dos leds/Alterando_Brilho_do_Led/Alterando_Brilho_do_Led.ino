//sudo chmod a+rw /dev/ttyUSB0


const int LED1=8;
const int LED2=9;
const int LED3=10;
const int LED4=11;

int brilho =0;
int i = 1;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(LED4,OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

if (brilho > 500){

  i = -1;
} else if (brilho <50){
  i = 1;
}

brilho = brilho + i;

analogWrite(LED1,brilho);
analogWrite(LED2,brilho);
analogWrite(LED3,brilho);
analogWrite(LED4,brilho);
delay(50);

}
