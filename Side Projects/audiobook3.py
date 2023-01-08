import pyttsx3
import PyPDF2


def abrir_pdf():
    #!path = input("Digite o caminho completo do arquivo PDF: ")
    with open(r"Projects/Aula 8 P MAIS L Tarefas 1 a 10 - Parte 1 turma A1 em  14-10-2022.pdf", "rb") as arquivo_pdf:

        pdf = PyPDF2.PdfFileReader(arquivo_pdf)
        numero_paginas = pdf.numPages
        print("Numero de paginas do Documento ", numero_paginas)

        pagina = pdf.getPage(2)
        texto = pagina.extractText()
        return texto


def falar(txt):
    ellie = pyttsx3.init(driverName="espeak")
    ellie.setProperty("voice", "brazil")
    ellie.setProperty('rate', 200)  # Opcional
    ellie.say(txt)
    ellie.runAndWait()


if __name__ == "__main__":

    livro = abrir_pdf()

    falar(livro)
