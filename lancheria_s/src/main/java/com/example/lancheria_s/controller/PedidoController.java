package com.example.lancheria_s.controller;

import com.example.lancheria_s.dao.ClienteDao;
import com.example.lancheria_s.dao.PedidoDao;
import com.example.lancheria_s.dao.ProdutoDao;
import com.example.lancheria_s.model.Cliente;
import com.example.lancheria_s.model.Pedido;
import com.example.lancheria_s.service.ClienteService;
import com.example.lancheria_s.service.PedidoService;
import com.fasterxml.jackson.datatype.jdk8.WrappedIOException;
import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping(value = "pedidos")
public class PedidoController {


    @GetMapping("/cadastrarPed")
    public String cadastrarPed(Model model){
        model.addAttribute("pedido",new Pedido());
        model.addAttribute("clientes",new ClienteDao().getClientes());
        model.addAttribute("produtos",new ProdutoDao().getProdutoss());
        model.addAttribute("pedidos", new PedidoDao().getPedidos());

        return "cadastroPedido";
    }

    @PostMapping("/cadastrarPed")
    public RedirectView cadastrarPed(@ModelAttribute("pedido")Pedido pedido, RedirectAttributes attributes,Model model) throws PSQLException {
        RedirectView redirect = new RedirectView("/lan/pedidos/cadastrarPed");
        System.out.println("___CONTROLLER___");
        System.out.println("ID:"+pedido.getId());
//        System.out.println("Total:"+pedido.getTotal());
        new PedidoDao().setPedido(pedido);
       // model.addAttribute("pedido",new Pedido());


        return redirect;

    }

    @GetMapping("/editarPed")
    public String editarPed(Model model, @RequestParam("id")int id){
//        Pedido pedido =new PedidoService().pegarP(id);
        model.addAttribute("pedido", new PedidoService().pegarP(id));
        model.addAttribute("clientes",new ClienteDao().getClientes());
        model.addAttribute("produtos",new ProdutoDao().getProdutoss());
        return "editarPedido";
    }

    @PostMapping("/editarPed")
    public RedirectView editarPed(@ModelAttribute("pedido")Pedido pedido){
        RedirectView redirect = new RedirectView("/lan/pedidos/cadastrarPed");

        System.out.println("___CONTROLLER___");

        new PedidoDao().editarPedido(pedido);

        return redirect;

    }

    @GetMapping("/excluirPed")
    public String excluirPed(Model model, @RequestParam("id")int id){
        model.addAttribute("pedido",new Pedido());
        new PedidoDao().excluirPedido(id);
        model.addAttribute("pedidos", new PedidoDao().getPedidos());
        return "cadastroPedido";
    }

}