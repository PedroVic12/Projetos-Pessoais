import matplotlib.pyplot as plt
import math


class Cilindro:
    def init(self, raio, taxa_entrada):

        self.pi = math.pi
        self.raio = raio
        self.taxa_entrada = taxa_entrada
        self.area = self.pi * self.raio ** 2

    def calcular_volume(self, altura):
        return self.pi * self.raio ** 2 * altura

    def taxa_aumento_altura(self, altura):
        return self.taxa/self.area

    def calcular_escoamento(self, altura):
        return self.taxa_aumento_altura(altura)

    def aumentar_volume(self, altura_inicial, tempo):
        altura_final = altura_inicial + \
            self.calcular_escoamento(altura_inicial) * tempo
        return self.calcular_volume(altura_final)

    def diminuir_volume(self, altura_inicial, tempo):
        altura_final = altura_inicial - \
            self.calcular_escoamento(altura_inicial) * tempo
        return self.calcular_volume(altura_final)


tx = 4 * math.pi
cilindro = Cilindro(5,  4 * math.pi)

print("Volume inicial: ", cilindro.calcular_volume(0))
print("Volume após 1 minuto: ", cilindro.aumentar_volume(0, 1))
print("Volume após 2 minutos: ", cilindro.aumentar_volume(0, 2))
print("Volume após 3 minutos: ", cilindro.aumentar_volume(0, 3))

h = [0, 1, 2, 3, 4, 5]
dhdt = [cilindro.calcular_escoamento(i) for i in h]

plt.plot(h, dhdt)
plt.xlabel('Altura (m)')
plt.ylabel('Taxa de aumento da altura (m/s)')
plt.title('Taxa de aumento da altura do líquido em função da altura')
plt.show()
