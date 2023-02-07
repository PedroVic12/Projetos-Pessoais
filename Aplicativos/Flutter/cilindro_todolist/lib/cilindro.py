import matplotlib.pyplot as plt
import math

# Constante Pi
pi = math.pi

# Raio do cilindro
r = 5

# Taxa de entrada do líquido
V = 4 * pi

# Cálculo da área da base do cilindro
A = pi * r**2

# Cálculo do volume do cilindro


def volume(h):
    return pi * r**2 * h

# Cálculo da taxa de aumento da altura do líquido


def taxa_aumento_altura(h):
    return V/A


# Gráfico da taxa de aumento da altura do líquido em função do tempo

h = [0, 1, 2, 3, 4, 5]
dhdt = [taxa_aumento_altura(i) for i in h]

plt.plot(h, dhdt)
plt.xlabel('Altura (m)')
plt.ylabel('Taxa de aumento da altura (m/s)')
plt.title('Taxa de aumento da altura do líquido em função da altura')
plt.show()
