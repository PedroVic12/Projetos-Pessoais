//! ============== MANUTENÇÃO ==============
/**
 *  Use funções para evitar repetição de código: ao invés de escrever o mesmo código várias vezes, crie uma função que realize essa tarefa e chame-a sempre que necessário.

    Use variáveis em vez de escrever o mesmo valor várias vezes: ao invés de escrever o mesmo valor várias vezes, crie uma variável e atribua-lhe esse valor. Depois, basta chamar a variável sempre que precisar desse valor.

    Limite o uso de bibliotecas externas: ao invés de incluir muitas bibliotecas externas, tente usar apenas aquelas que realmente são necessárias para seu projeto. Isso pode ajudar a reduzir o tamanho do seu código.

    Use a sintaxe de funções arrow: a sintaxe de funções arrow é mais curta que a sintaxe de funções convencional, o que pode ajudar a reduzir o tamanho do seu código.

    Remova comentários desnecessários: remova comentários que já são explicativos pelo próprio código ou que não acrescentam nenhum valor ao seu projeto. Isso pode ajudar a reduzir o tamanho do seu código.
*/
//! ============== MANUTENÇÃO ==============

// let citta = new Lanchonete();
// teste = citta.verBebidas()
// console.log(teste)

let Estagio1 = require("./rayquaza")

let etapa1 = new Estagio1(this.whatsapp)

const { Client, LocalAuth, Buttons, List, MessageMedia, MessageAck } = require('whatsapp-web.js');
const qrcode = require('qrcode-terminal');

const whatsapp = new Client({
    authStrategy: new LocalAuth({ whatsappId: "cliente-one" })
});

//! Estágio 1 - Apresentação
etapa1.conectandoWpp()
etapa1.recebeMensagem()



//! Estágio 2 - Mostrar Opções



//! Estágio 3 - Pedido


//! Estagio 4 - Pagamento


//! Estagio 5 - Entrega e Resumo
