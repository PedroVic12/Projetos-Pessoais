from kivymd.app import MDApp
from kivy.lang import Builder
from kivymd.uix.floatlayout import MDFloatLayout
from pytube import YouTube
from kivymd.uix.dialog import MDDialog

# Pode ser num arquivo Separado
kv = """<Tela@MDFloatLayout>:
    MDLabel:
        pos_hint:{"center_x":.60, "center_y":.8}
        text:'Downloader Youtube'
        font_size: "70sp"
    
    MDTextField:
        pos_hint:{"center_x":.5,"center_y":.6}
        size_hint_x:.5 
        size_hint_y:.1
        required: True
        id: url
        icon_right: "video"
        
    MDRaisedButton:
        text:"Download video"
        pos_hint:{"center_x":.35,"center_y":.5}
        disabled: True if titulo.text =='' else False
        on_press: root.baixar()
        md_bg_color: 1,0,0,1  
        
    MDRaisedButton:
        text:"Procurar video"
        pos_hint:{"center_x":.68,"center_y":.5}
        disabled: True if url.text == '' else False
        on_press: root.procurar()
        md_bg_color: 0,.5,0,1    
        
    MDLabel:
        text:"Título do Video"
        pos_hint:{"center_x":.5, "center_y":.4}
        id: titulo
        font_size:"25sp"
        size_hint_y:.2

    AsyncImage:
        pos_hint:{"center_x":.5,"center_y":.2}
        id: imagem
        size_hint_x: .3
        size_hint_y: .3
Tela
"""


class Tela(MDFloatLayout):
    dialog = None

    def baixar(self):
        try:
            YouTube(self.ids.url.text).streams.first().download()
            self.downloadConcluido()
        except:
            print("====== ERRO AO BAIXAR O VÍDEO =======")

    def procurar(self):
        try:
            yt = YouTube(self.ids.url.text)
            self.ids.titulo.text = yt.title
            self.ids.imagem.source = yt.thumbnail_url
        except:
            print("====== ERRO AO PROCURAR O VÍDEO =======")

    def downloadConcluido(self):
        if not self.dialog:
            self.dialog = MDDialog(text="Download Concluído! :)")
        self.dialog.open()


# Configurando o KivyMD
class App(MDApp):
    def build(self):
        return Builder.load_string(kv)

    pass


if __name__ == "__main__":
    App().run()
