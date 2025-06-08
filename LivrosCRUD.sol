// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LivrosCRUD {
    uint public contadorLivros = 0;

    struct Livro {
        uint id;
        string titulo;
        string autor;
    }

    mapping(uint => Livro) public livros;

    // Criar
    function adicionarLivro(string memory _titulo, string memory _autor) public returns (uint) {
    contadorLivros++; // incrementa o contador
    livros[contadorLivros] = Livro(contadorLivros, _titulo, _autor); // cria o livro
    return contadorLivros; // retorna o ID do novo livro
}

    
    // buscar/visualizar
    function buscarLivro(uint _id) public view returns (string memory, string memory) {
        require(_id > 0 && _id <= contadorLivros, "Livro nao encontrado");
        Livro memory livro = livros[_id];
        return (livro.titulo, livro.autor);
    }

    // Atualizar
    function atualizarLivro(uint _id, string memory _novoTitulo, string memory _novoAutor) public {
        require(_id > 0 && _id <= contadorLivros, "Livro nao encontrado");
        livros[_id] = Livro(_id, _novoTitulo, _novoAutor);
    }

    // Deletar
    function deletarLivro(uint _id) public {
        require(_id > 0 && _id <= contadorLivros, "Livro nao encontrado");
        delete livros[_id];
    }

   
}
