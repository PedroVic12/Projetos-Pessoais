import speech_recognition as c3po
import os

"""
TODO - Criar classes e diagramas uml

- Som do c3po

- Som apos sair e receber o audio

- Frases c3po

- frases r2d2

- show me the day

- to do list do dia dia

- qual seu humor hoje?

- passar tudo para o ambiente virtual
"""

#Função para ouvir e reconhecer a fala
def ouvir_microfone():

    #Habilita o microfone do usuário
    microfone = c3po.Recognizer()

    #Usando o microfone
    with c3po.Microphone() as source:

        #Chama um algorítimo de redução de ruídos no som
        microfone.adjust_for_ambient_noise(source)

        print('Diga alguma coisa :) -> ')

        audio = microfone.listen(source)
    
    try:

        frase = microfone.recognize_google(audio, language="pt-BR")

        if "navegador" in frase:
            os.system('firefox')
            print('Okay mestre')

        if "meus documentos" in frase:
            os.system('thunar')
            print('Okay mestre')

        print('Acho que esta tudo bem. Ate logo, mestre!')

    except c3po.UnknownValueError:
        print('Não entendi, mestre.')
        return frase

ouvir_microfone()
