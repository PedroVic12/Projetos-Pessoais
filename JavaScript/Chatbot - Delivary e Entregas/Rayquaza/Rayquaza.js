const { Client, LocalAuth, Buttons, List, MessageMedia, MessageAck } = require('whatsapp-web.js');



//! 0. conectando wpp
const client = new Client();

client.on('qr', qr => {
    qrcode.generate(qr, { small: true });
});

client.on('ready', () => {
    console.log('Client is ready!');
});

client.initialize();


//! 1. apresentação
function boasVindas(message) {
    this.whatsapp.sendMessage(message.from, 'Bem vindo a Citta Lanchonete, nos agradecemos sua preferencia');
    this.whatsapp.sendMessage(message.from, 'Bem vindo ao Robô Groundon! \n\n Eu vou ser responsável pelo seu atendimento \n Antes de começarmos,  *Digite seu Nome*:');
}


function getNome(message) {

    this.nome_cliente = message.body;

    this.pedido_iniciado = true;
    return this.nome_cliente;
}

function getCliente() {
    //procurar o cliente na base de dados

}

function mostrarCliente() {
    //mostrar o cliente na tela

}


//! 2. cardápio

function mostrarMenu(message) {

    //let estagio2 = new Estagio2(this.whatsapp)

    //Apresentando o Menu
    let button = new Buttons(`Vamos lá, ${this.nome_cliente}! Escolha uma opção abaixo do que voce deseja`, [
        { body: 'Ver Cardápio' },
        { body: 'Fazer Pedido' },
        { body: 'Ver nossa Localização' }
    ], 'Chatbot Groundon', `Horário de Atendimento = ${this.getHoras()}`);

    this.whatsapp.sendMessage(message.from, button)


}


//! 3. pedido
//! 4. pagamento
//! 5. resumo