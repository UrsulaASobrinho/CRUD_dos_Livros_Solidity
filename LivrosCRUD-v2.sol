// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LivroCRUD {
    uint public contadorLivros = 0;

    struct Livro {
        uint id;
        string titulo;
        string autor;
        bool ativo;
    }

    mapping(uint => Livro) public livros;
    uint[] public idsLivros;

    // Criar
    function adicionarLivro(string memory _titulo, string memory _autor) public returns (uint) {
        contadorLivros++;
        livros[contadorLivros] = Livro(contadorLivros, _titulo, _autor, true);
        idsLivros.push(contadorLivros);
        return contadorLivros;
    }

    // Buscar
    function buscarLivro(uint _id) public view returns (string memory, string memory) {
        require(livros[_id].ativo, "Livro nao encontrado ou foi deletado");
        Livro memory livro = livros[_id];
        return (livro.titulo, livro.autor);
    }

    // Atualizar
    function atualizarLivro(uint _id, string memory _novoTitulo, string memory _novoAutor) public {
        require(livros[_id].ativo, "Livro nao encontrado ou foi deletado");
        livros[_id].titulo = _novoTitulo;
        livros[_id].autor = _novoAutor;
    }

    // Deletar
    function deletarLivro(uint _id) public {
        require(livros[_id].ativo, "Livro nao encontrado ou ja foi deletado");
        livros[_id].ativo = false;
    }

    // Verificar se o livro está ativo
    function livroExiste(uint _id) public view returns (bool) {
        return livros[_id].ativo;
    }

    
    // Listar todos os livros ativos
    function listarLivrosAtivos() public view returns (Livro[] memory) {
    uint totalAtivos = 0;

    for (uint i = 0; i < idsLivros.length; i++) {
        if (livros[idsLivros[i]].ativo) {
            totalAtivos++;
        }
    }

    Livro[] memory livrosAtivos = new Livro[](totalAtivos);
    uint index = 0;

    for (uint i = 0; i < idsLivros.length; i++) {
        if (livros[idsLivros[i]].ativo) {
            livrosAtivos[index] = livros[idsLivros[i]];
            index++;
        }
    }

    return livrosAtivos;
}


 
}
