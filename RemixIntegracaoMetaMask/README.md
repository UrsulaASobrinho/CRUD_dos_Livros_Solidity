# Como Selecionar o Ambiente MetaMask no Remix

## Pré-requisitos

Antes de começar, certifique-se de que você já possui os seguintes requisitos cumpridos:

- Projeto criado utilizando **Remix** - è aprimeira parte  livrosCRUD.sol  pega a versao 2 livrosCRUD-v2.sol
- CRUD totalmente implementado e testado **livrosCRUD-v2.sol**
- **MetaMask** instalada no navegador - [https://metamask.io/download/] 

## 1. Configurando a MEtaMask 
-  instalada no navegador - [https://metamask.io/download/] Caso tenha alguma dificuldade , veja alguns vídeo no youtube que explicam a istalação;

**Habilitar Redes de Teste na MetaMask** 

- Apos sua intslação padrão vamos cofigurar para o ambiente de testNet, onde vamos fazer todos os nossos teste;

1. Abra sua Extensão MetaMask: Clique no ícone da raposa no seu navegador.
2. Clique no Seletor de Rede: No canto superior esquerdo da janela da MetaMask, você verá o nome da rede atual (geralmente "Ethereum Mainnet" ou "Rede Principal Ethereum"). Clique nele.
3. Habilitar Redes de Teste: Role para baixo na lista de redes. Você deve ver um botão ou um toggle que diz "Show test networks" (Mostrar redes de teste) ou "Mostrar redes de teste". Ative essa opção.
![Exemplo de Imagem](img/matamesk-selecionarBotaoBuscaTesNet-1.png)
4. Selecione a Testnet: Depois de habilitar, as redes de teste (como "Sepolia Network") aparecerão na lista. Clique na testnet que você deseja usar (por exemplo, Sepolia é a mais recomendada atualmente para testes na rede Ethereum).

**Faucet - Obtenha Ether de testnet**

- Vá para um faucet  
https://cloud.google.com/application/web3/faucet/ethereum/sepolia
e cole seu endereço para receber ETH de teste.
- Dá para pesquisa por faucet etherium evai encontrar , na minha pesquisa consegui esta acima mencionada.


Siga os passos abaixo para configurar o Remix IDE e conectar com a MetaMask:

---

## 1. Abra o Remix IDE

Acesse: [https://remix.ethereum.org](https://remix.ethereum.org)

---

## 2. Acesse a Aba "Deploy & Run Transactions"

No menu lateral esquerdo, clique no ícone de Ethereum (ícone de plug), que é a aba chamada **Deploy & Run Transactions**.

---

## 3. Selecione o Ambiente MetaMask

No topo dessa aba, você verá um campo chamado **Environment** com um menu suspenso. Ele provavelmente estará como:

- Remix VM (London) **ou**
- Remix VM (Prague)

Clique nesse menu suspenso e selecione a opção:

> ✅ **Injected Provider - MetaMask**

⚠️ **Nota:** Essa opção só aparece se o MetaMask estiver instalado e desbloqueado no seu navegador.

---

## 4. Permita a Conexão com a MetaMask

Assim que você selecionar, o Remix vai pedir permissão para conectar à sua carteira MetaMask. Aceite a conexão.

Depois disso, o campo **Account** será preenchido com o endereço da sua carteira.

---

## 5. Pronto para Deploy

Agora você pode clicar em **Deploy** para implantar o contrato na rede selecionada da MetaMask (por exemplo, Sepolia, Goerli, etc.).

---

## ❓ Problemas Comuns

Se você **não vê a opção "Injected Provider - MetaMask"**:

- Verifique se o MetaMask está instalado no navegador.
- Certifique-se de que o MetaMask está desbloqueado (você fez login).
- Atualize a página do Remix após desbloquear o MetaMask.

---

Eu tive erro basico quando estava tentando o deploy na MEtaMask voi a verão do no meeu contrato estava solidity ^0.8.0; e no Remix esta outro é so deixar igual. Abaixo segue um ckecklist para evitar erros bobos...

# ✅ Checklist para implantação com MetaMask (Sepolia)

Siga este checklist para garantir uma implantação tranquila do seu contrato na testnet Sepolia usando MetaMask.

---

## 1. Conta da MetaMask conectada à Sepolia?

- Verifique no topo da MetaMask se está na **rede Sepolia**.
- Se não estiver, **mude manualmente** para Sepolia.

## 2. Tem saldo de ETH Sepolia?

- Você precisa de um pouco de ETH da testnet para pagar o **gas**.
- Verifique seu saldo em [Sepolia Etherscan](https://sepolia.etherscan.io).
- Se precisar, utilize um **faucet de Sepolia** para obter ETH.

## 3. Contrato está compilado com a versão correta?

- Acesse **Solidity Compiler** no Remix.
- Certifique-se de que a versão está em **0.8.x** (igual à do seu contrato).
- Clique em **Compile** antes de tentar implantar.

## 4. Deploy com Injected Provider - MetaMask

- Vá em **Deploy & Run Transactions**.
- Selecione **Injected Provider - MetaMask**.
- Certifique-se de que a conta da MetaMask está **conectada ao Remix**.
- Clique em **Deploy**.

---

## Consegui!!!! 🎉


![Exemplo de Imagem](img/solicitacao-MetaMask.png)
A MetaMask abre uma pergunta de confirmacao e de quanto gas vai utiliza para o processo de deploy

![Exemplo de Imagem](img/confirmacao-terminal-remix.png)
Não sabe a alegria que dá rsrsrs sucesso.

## Transações

- [Ver transação no Etherscan (Sepolia)](https://sepolia.etherscan.io/tx/0x4c3aa88bed4b99182739340f4f8ea753afbce5dad2c27348da9e22014f66f2b1)
- [Ver transação no Blockscout (Sepolia)](https://eth-sepolia.blockscout.com/tx/0x4c3aa88bed4b99182739340f4f8ea753afbce5dad2c27348da9e22014f66f2b1)


