# importações
from kivy.app import App
from kivy.lang import Builder

# from datetime import Datetime
# print(Datetime.today())
"""
20 Exercicios de Calculo 2
5 Exercicios de Python + 5 C++ + 1 Projetinho do Arduino
"""



# Criando o Objeto Tela
tela = Builder.load_file("tela.kv")

# Rodando o APP
class Aplicativo(App):
    def build(self):
        return tela

    def iniciar(self):
        self.root.ids["titulo"].text = "12 de setembro"


Aplicativo().run()
