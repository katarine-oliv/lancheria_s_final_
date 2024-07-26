package com.example.lancheria_s.service;

import com.example.lancheria_s.dao.ClienteDao;
import com.example.lancheria_s.dao.PedidoDao;
import com.example.lancheria_s.dao.ProdutoDao;
import com.example.lancheria_s.model.Cliente;
import com.example.lancheria_s.model.Pedido;

import java.util.List;

public class PedidoService {

    public static Pedido cadastroPe(Pedido pedido){

        System.out.println("___PEDIDO SERVICE___");
        System.out.println("ID:"+pedido.getId());

//        System.out.println("Total:"+pedido.getTotal());

//        new PedidoDao().getPedidos(String.valueOf(pedido));

        return null;
    }

    public Pedido pegarP(int x){
        System.out.println("Nome editar pedido:"+x);
        Pedido pedido= new PedidoDao().getPedidos(x);
        return pedido;
    }

    public static List<Pedido> getPedidos() {
        return new PedidoDao().getPedidos();
    }

}
