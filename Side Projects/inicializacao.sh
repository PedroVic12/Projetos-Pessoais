echo "Inicializando o pc... \n"

arquivo="./teste.txt"
dataHora=$(date "+%d/%m/%Y %H:%M:%S")
texto="$dataHora - Script executado!"
echo $texto >> $arquivo
