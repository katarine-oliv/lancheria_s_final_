package com.example.lancheria_s.service;

import com.example.lancheria_s.dao.ProdutoDao;
import com.example.lancheria_s.model.Produto;

import java.util.List;

public class ProdutoService {

    public Produto cadastro(Produto produto){

        System.out.println("___PRODUTO SERVICE___");
        System.out.println("Nome:"+ produto.getNome());
        System.out.println("Valor:" + produto.getValor());

        new ProdutoDao().setProduto(produto);

        return null;
    }

    public Produto pegar(int n){
        System.out.println("Nome editar:"+n);
        Produto produto = new  ProdutoDao().pegarId(n);

        return produto;
    }

    public Produto excluir(int n){
        System.out.println("ID excluir:"+n);
        new  ProdutoDao().excluirProduto(n);

        return null;
    }


}
