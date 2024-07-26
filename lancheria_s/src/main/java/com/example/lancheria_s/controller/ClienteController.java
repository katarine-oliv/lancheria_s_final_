package com.example.lancheria_s.controller;

import com.example.lancheria_s.dao.ClienteDao;
import com.example.lancheria_s.dao.ProdutoDao;
import com.example.lancheria_s.model.Cliente;
import com.example.lancheria_s.model.Produto;
import com.example.lancheria_s.service.ClienteService;
import com.example.lancheria_s.service.ProdutoService;
import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;


@Controller
@RequestMapping(value = "clientes")
public class ClienteController {


    @GetMapping("/cadastrarCli")
    public String cadastrarCli(Model model){
        model.addAttribute("cliente",new Cliente());
        model.addAttribute("clientes", new ClienteDao().getClientes());
        return "cadastroCliente";
    }

    @PostMapping("/cadastrarCli")
    public RedirectView  cadastrarCli(@ModelAttribute("cliente")Cliente cliente, RedirectAttributes attributes) throws PSQLException {
        RedirectView redirect = new RedirectView("/lan/clientes/cadastrarCli");
        System.out.println("___CONTROLLER___");
        System.out.println("Nome:"+cliente.getNome());
        System.out.println("Telefone:"+cliente.getTelefone());
        new ClienteDao().setCliente(cliente);


        return redirect;
    }

    @GetMapping("/editarCli")
    public String editarCli(Model model, @RequestParam("c")int c){
        model.addAttribute("cliente",new Cliente());
        Cliente cliente =new ClienteService().pegar(c);
        model.addAttribute("cliente",cliente);
        return "editarCliente";
    }

    @PostMapping("/editarCli")
    public RedirectView editarCli(@ModelAttribute("cliente")Cliente cliente){
        RedirectView redirect = new RedirectView("/lan/clientes/cadastrarCli");

        System.out.println("___CONTROLLER___");
        System.out.println("Nome:"+cliente.getNome());
        System.out.println("telefone:"+cliente.getTelefone());

        new ClienteDao().editarCliente(cliente);

        return redirect;

    }

    @GetMapping("/excluirCli")
    public String excluirCli(Model model, @RequestParam("c")int c){
        model.addAttribute("cliente",new Cliente());
        new ClienteDao().excluirCliente(c);
        model.addAttribute("clientes", new ClienteDao().getClientes());
        return "cadastroCliente";
    }




}
