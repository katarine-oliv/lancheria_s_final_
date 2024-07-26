package com.example.lancheria_s.controller;

import com.example.lancheria_s.dao.UsuarioDao;
import com.example.lancheria_s.model.Usuario;
import com.example.lancheria_s.service.UsuarioService;
import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class LoginController {

    @GetMapping
    public String logar(Model model, Usuario Usuario) {
        model.addAttribute("usuario", new Usuario());
        return "login";
    }

    @PostMapping
    public String logar(@ModelAttribute("usuario") Usuario usuario, RedirectAttributes attributes, HttpServletRequest req) throws PSQLException {

        System.out.println("___CONTROLLER___");
        System.out.println("Email:" + usuario.getEmail());
        System.out.println("Senha:" + usuario.getSenha());




        boolean autenticado = new UsuarioService().autenticacao(usuario.getEmail(), usuario.getSenha());

        if (autenticado) {
            System.out.println("___CONTROLLER___");
            System.out.printf("Dados são retornados para o controller");
            System.out.println("\nLogin Liberado!");

            Usuario user = new UsuarioDao().getUsuario(usuario.getEmail());

            HttpSession session = req.getSession();
            session.setAttribute("usuario_logado", user);

            return "dashboard";

        } else {
            System.out.println("Usuário não encontrado!");
            return "login";
        }

    }

    @GetMapping("/voltar")
    public String voltar(){return "dashboard";}

}
