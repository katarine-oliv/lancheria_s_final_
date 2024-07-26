package com.example.lancheria_s.service;

import com.example.lancheria_s.dao.ClienteDao;
import com.example.lancheria_s.dao.ProdutoDao;
import com.example.lancheria_s.model.Cliente;
import com.example.lancheria_s.model.Produto;

import java.util.List;

public class ClienteService {

    public static Cliente cadastroC(Cliente cliente){

        System.out.println("___CLIENTE SERVICE___");
        System.out.println("Nome:"+ cliente.getNome());
        System.out.println("Telefone:" + cliente.getTelefone());

//        new ProdutoDao().getProdutos(String.valueOf(cliente));

        return null;
    }

    public Cliente pegar(int n){
        System.out.println("Nome editar cliente:"+n);
        Cliente cliente= new ClienteDao().clienteId(n);
        return cliente;
    }




}
