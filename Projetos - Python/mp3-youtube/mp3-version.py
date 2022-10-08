import pytube
#from pytube import Youtube
import moviepy.editor as mp
import re
import os

link = input("Digite o link do video no Youtube: ")
path = r"/home/pedrov/Vídeos/"
yt = pytube.Youtube(link)
print(yt)

#Começando o download
