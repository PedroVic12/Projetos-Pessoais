from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from anticaptchaofficial.recaptchav2proxyless import *
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from datetime import datetime
from datetime import date
import pyscreenshot
import xlsxwriter
import pdfkit
import time

# Esse robô só funciona com versão do Office 2010 ou superior.

#! Pasta onde os arquivos serão encontrados
diretorio_pdf = r'C:\Users\lorena.machado\Documents\robo-custas-bb\pdf'
diretorio_codigos = r'C:\Users\lorena.machado\Documents\robo-custas-bb\ids\ids.txt'
diretorio_excel = r'C:\Users\lorena.machado\Documents\robo-custas-bb\relatorio'

# Criar excel para registro de downloads
data = (f'{datetime.today():%d-%m-%Y}')
hora = (f'{datetime.now():%H-%M}')
nome_arquivo = f'{data}_{hora}.xlsx'
excel = xlsxwriter.Workbook(f'{diretorio_excel}\\Relatorio_{nome_arquivo}')
planilha = excel.add_worksheet()
planilha.write(0, 0, 'Código')
planilha.write(0, 1, 'Codigo encontrado?')

# Abrir o Chrome no endereço dos comprovantes
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
driver.maximize_window()
link = "https://www63.bb.com.br/portalbb/djo/id/comprovante/consultaDepositoJudicial,802,4647,4650,0,1.bbx"
driver.get(link)

# Loop pelos códigos do arquivo txt e busca no site
ct_linha = 0

with open(diretorio_codigos) as arquivo:
        linhas = arquivo.readlines()
        for linha in linhas:
                codigo = linha.strip()

                #! Erro aqui
                campo = driver.find_element(
                By.XPATH, '//*[@id="formulario:numPreDeposito"]')
                campo.clear()
                campo.send_keys(codigo)
                break

# Verificar se existe mensagem de erro do comprovante
 ct_linha += 1

try:
        element = WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.XPATH, '/html/body/div[1]/div/div/div[1]/div/div/ul/li')))
        time.sleep(3)

except:
       # Quando tem o comprovante
        planilha.write(ct_linha, 0, codigo)
        planilha.write(ct_linha, 1, 'Sim')
        time.sleep(2)

        chave_captcha = driver.find_element(
            By.CLASS_NAME, 'g-recaptcha').get_attribute('data-sitekey')
        solver = recaptchaV2Proxyless()
        solver.set_verbose(1)
        solver.set_key('chavedaapi')
        solver.set_website_url(link)
        solver.set_website_key(chave_captcha)

        resposta = solver.solve_and_return_solution()
        time.sleep(3)
        if resposta != 0:
            print(resposta)

# preencher o campo do token do captcha
# g-recaptcha-response

        driver.execute_script(
            f"document.getElementById('g-recaptcha-response').innerHTML = '{resposta}'")
        driver.find_element(By.ID, 'formulario:btnContinuar').click()
        time.sleep(2)
        driver.find_element(
            By.CSS_SELECTOR, "input[type='radio'][value='0']").click()
        time.sleep(2)
        driver.find_element(By.ID, 'formulario:btnVisualizar').click()
        time.sleep(3)
# print
        image = pyscreenshot.grab(bbox=(210, 130, 1500, 690))
        image.show()
        image.save((f'{diretorio_pdf}\\{codigo}.pdf'))
        image.close()
        time.sleep(2)
# botão de visualizar
        driver.find_element(By.ID, 'formulario:botaoRetornar').click()

    else:
       # Quando não tem o comprovante
        planilha.write(ct_linha, 0, codigo)
        planilha.write(ct_linha, 1, 'Não')

        time.sleep(2)
        continue

# Fim Loop
# by using configuration you can add path value.
wkhtml_path = pdfkit.configuration(
wkhtmltopdf="C:/Program Files/wkhtmltopdf/bin/wkhtmltopdf.exe")

pdfkit.from_string(html, nome_pdf, configuration=wkhtml_path)
time.sleep(3)

# Salvar excel e fechar chrome
excel.close()
driver.close()
