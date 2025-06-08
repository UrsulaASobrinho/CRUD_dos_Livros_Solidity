# Projeto Remix com CRUD e Integração MetaMask

Bem-vindo, um contrato inteligente em Solidity para gerenciar uma pequena biblioteca de livros direto na blockchain!

Vou dividir em fases

 - 1 BackEnd a criação do CRUD 
 - 2 Integração MetaMask
 - 3 FrontEnd exemplo com HTML e JavaScript

# 📚 LivrosCRUD

Bem-vindo ao **LivrosCRUD**, um contrato inteligente em Solidity para gerenciar uma pequena biblioteca de livros direto na blockchain!

Este projeto demonstra como criar um CRUD básico (Criar, Ler, Atualizar, Deletar) para livros, usando Solidity — ideal para quem está começando a explorar contratos inteligentes.

---

## ✨ Funcionalidades

- **Adicionar livros** com título e autor
- **Buscar livros** por ID
- **Atualizar informações** de um livro existente
- **Deletar livros** do sistema

---

## 💻 Como funciona

### 1. Declaração do Contrato

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LivroCRUD { ... }
```

- **SPDX-License-Identifier:** Indica a licença do código (MIT).
- **pragma solidity:** Define a versão mínima do compilador Solidity.
- **contract LivroCRUD:** Declara o contrato principal.

---

### 2. Variáveis e Estruturas

```solidity
uint public contadorLivros = 0;

struct Livro {
    uint id;
    string titulo;
    string autor;
}

mapping(uint => Livro) public livros;
```

- **contadorLivros:** Conta quantos livros já foram adicionados.
- **struct Livro:** Define os dados de um livro (id, título, autor).
- **mapping(uint => Livro):** Armazena os livros, usando o id como chave.

---

### 3. Operações CRUD

#### ➕ Adicionar Livro

```solidity
function adicionarLivro(string memory _titulo, string memory _autor) public returns (uint) {
    contadorLivros++;
    livros[contadorLivros] = Livro(contadorLivros, _titulo, _autor);
    return contadorLivros;
}
```
- Incrementa o contador e gera um novo ID.
- Cria e armazena o livro no mapping.
- Retorna o ID do novo livro.

#### 🔍 Buscar Livro

```solidity
function buscarLivro(uint _id) public view returns (string memory, string memory) {
    require(_id > 0 && _id <= contadorLivros, "Livro nao encontrado");
    Livro memory livro = livros[_id];
    return (livro.titulo, livro.autor);
}
```
- Verifica se o ID é válido.
- Retorna o título e autor do livro correspondente.

#### ✏️ Atualizar Livro

```solidity
function atualizarLivro(uint _id, string memory _novoTitulo, string memory _novoAutor) public {
    require(_id > 0 && _id <= contadorLivros, "Livro nao encontrado");
    livros[_id] = Livro(_id, _novoTitulo, _novoAutor);
}
```
- Verifica se o livro existe.
- Atualiza o título e autor.

#### ❌ Deletar Livro

```solidity
function deletarLivro(uint _id) public {
    require(_id > 0 && _id <= contadorLivros, "Livro nao encontrado");
    delete livros[_id];
}
```
- Verifica se o livro existe.
- Remove o livro (zera os dados no mapping).

---

## 🧑‍💻 Resumo Rápido

Este contrato permite:

- Adicionar livros com título e autor
- Buscar livros por ID
- Atualizar informações de um livro
- Deletar livros

---

## ⚠️ Observações Importantes

### Sobre a deleção de livros

Quando você deleta vários livros, **os IDs continuam existindo no mapping!** Porém, os dados ficam zerados:

| ID | Título     | Autor     |
|----|------------|-----------|
| 1  | "Livro A"  | "Autor A" |
| 2  | ""         | ""        |
| 3  | "Livro C"  | "Autor C" |
| 4  | ""         | ""        |
| 5  | "Livro E"  | "Autor E" |

Isso acontece porque:
- O mapping em Solidity não permite remover chaves.
- O comando `delete` apenas zera os dados do struct, mas o ID ainda existe.
- Isso pode confundir quem for listar todos os livros.

---

### 🚀 Melhorias (LivrosCRUD_v2)

Para resolver esse problema, uma sugestão é adicionar um campo `ativo` (booleano) na struct Livro. Assim, ao deletar, basta marcar o livro como inativo:

```solidity
struct Livro {
    uint id;
    string titulo;
    string autor;
    bool ativo;
}
```
Ao deletar:
```solidity
livros[_id].ativo = false;
```

**Vantagens:**
- Mantém o histórico dos livros
- Evita IDs "vazios" sem dados
- Facilita a listagem apenas dos livros ativos

---

## 📝 Testes

Faça os testes usando frameworks como [Remix IDE](https://remix.ethereum.org/) para interagir com o contrato e garantir o funcionamento de todas as operações.

---

## 📄 Licença

MIT

---

## 🤝 Contribua

Fique à vontade para sugerir melhorias, abrir issues ou enviar PRs!

---

Feito com carinho por [Ursula Sobrinho] 🚀