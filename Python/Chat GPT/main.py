import os
import openai
import credential

apiKey = credential.OPENAI_API_KEY
openai.api_key = apiKey

robotIsOn = True

while robotIsOn:
    pergunta = input("Ola mestre, qual sua duvida? \n\n")
    response = openai.Completion.create(
    model="text-davinci-003",
    prompt=pergunta,
    temperature=0.9,
    max_tokens=150,
    top_p=1,
    frequency_penalty=0.0,
    presence_penalty=0.6,
    stop=[" Human:", " AI:"]
    )

    texto_robo = response.choices[0].text
    print('\n\nResposta = ', texto_robo)