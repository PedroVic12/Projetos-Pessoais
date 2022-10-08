import pyautogui as bot


# link do tweet -> https://twitter.com/bdfurduncin/status/1570828368932900864

for i in range(325, 631):
    # Ir para a pagina certa do tt manualmente
    bot.sleep(3)

    # clicar para twettar
    bot.click(x=323, y=558)

    # Digitar
    bot.click()
    bot.write(f"FURDUNCIN ME LEVA PRA ESSE BAILON {i}")
    bot.sleep(1)

    # Enviar tweet
    bot.click(x=900, y=638)
    bot.sleep(3)
