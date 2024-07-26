package com.example.lancheria_s.controller;

import com.example.lancheria_s.dao.ProdutoDao;
import com.example.lancheria_s.model.Produto;
import com.example.lancheria_s.service.ProdutoService;
import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;


@Controller
@RequestMapping(value = "/produtos")
public class ProdutoController {
    private ProdutoService produtoService;


    public ProdutoController() {
        this.produtoService = new ProdutoService();
    }

    @GetMapping("/cadastrarProd")
    public String cadastrarProd(Model model){
        model.addAttribute("produto",new Produto());
        model.addAttribute("produtos", new ProdutoDao().getProdutoss());
        return "cadastroProduto";
    }

    @PostMapping("/cadastrarProd")
    public String logar(@ModelAttribute("produto")Produto produto, RedirectAttributes attributes, Model model) throws PSQLException {
        System.out.println("___CONTROLLER___");
        System.out.println(produto.getId());
        System.out.println("Nome:"+produto.getNome());
        System.out.println("Preço:"+produto.getValor());
        model.addAttribute("produto", new ProdutoDao().getProdutoss());
       new ProdutoService().cadastro(produto);

        return "redirect:/produtos/cadastrarProd";

    }

    @GetMapping("/editarProd")
    public String editarProd(Model model, @RequestParam("n")int n){
        model.addAttribute("produto",new Produto());
      Produto produto =new ProdutoService().pegar(n);
        model.addAttribute("produto",produto);
       return "editarProduto";
    }

    @PostMapping("/editarProd")
    public RedirectView editarProd(@ModelAttribute("produto")Produto produto){
        RedirectView redirect = new RedirectView("/lan/produtos/cadastrarProd");

        System.out.println("___CONTROLLER___");
        System.out.println("Nome:"+produto.getNome());
        System.out.println("Preço:"+produto.getValor());

        new ProdutoDao().editarProduto(produto);

        return redirect;

    }

    @GetMapping("/excluirProd")
    public String excluirProd(Model model, @RequestParam("n")int n){
        model.addAttribute("produto",new Produto());
      new ProdutoDao().excluirProduto(n);
        model.addAttribute("produtos", new ProdutoDao().getProdutoss());
        return "cadastroProduto";
    }

}
