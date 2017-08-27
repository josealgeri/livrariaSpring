package br.edu.utfpr.pb.livrariaSpring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.utfpr.pb.livrariaSpring.model.Genero;
import br.edu.utfpr.pb.livrariaSpring.repository.GeneroRepository;

@Controller
@RequestMapping("/genero")
public class GeneroController {

	@Autowired
	private GeneroRepository generoRepository;

	// Lista de Gêneros
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("generos", generoRepository.findAll());
		return "genero/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("genero", new Genero());
		return "genero/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Genero genero) {
		generoRepository.save(genero);
		return "redirect:/genero/";
	}

	// Edição de registro
	@GetMapping("/{id}")
	public String editar(@PathVariable Long id, Model model) {
		model.addAttribute("genero", generoRepository.findOne(id));
		return "genero/form";
	}

	// Deletar registro
	@GetMapping("/remover/{id}")
	public String remover(@PathVariable Long id) {
		generoRepository.delete((id));
		return "redirect:/genero/";
	}
}
