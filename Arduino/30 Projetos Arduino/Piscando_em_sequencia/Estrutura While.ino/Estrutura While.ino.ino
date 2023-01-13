int valor = 1;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // Laço While pode ser usado para pegar os dados dos sensores
  while (valor <= 200){
    Serial.println(valor);
    delay(50);
    valor ++;
  }

  valor = 0;

}
