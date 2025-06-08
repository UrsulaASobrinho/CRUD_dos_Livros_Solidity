# Como Selecionar o Ambiente MetaMask no Remix

## Pré-requisitos

Antes de começar, certifique-se de que você já possui os seguintes requisitos cumpridos:

- Projeto criado utilizando **Remix** - è aprimeira parte  livrosCRUD.sol  pega a versao 2 livrosCRUD-v2.sol
- CRUD totalmente implementado e testado **livrosCRUD-v2.sol**
- **MetaMask** instalada no navegador - se tiver dúvida pega algum tutorial na net é fácil a instalação. ahh!!! não utiliza a que vc coloca suas cripsta rsrsrs



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