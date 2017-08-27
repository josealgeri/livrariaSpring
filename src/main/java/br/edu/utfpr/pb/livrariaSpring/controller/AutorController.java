package br.edu.utfpr.pb.livrariaSpring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.utfpr.pb.livrariaSpring.model.Autor;
import br.edu.utfpr.pb.livrariaSpring.repository.AutorRepository;

@Controller
@RequestMapping("/autor")
public class AutorController {

	@Autowired
	private AutorRepository autorRepository;

	// Lista de Autores
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("autores", autorRepository.findAll());
		return "autor/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("autor", new Autor());
		return "autor/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Autor autor) {
		autorRepository.save(autor);
		return "redirect:/autor/";
	}

	// Edição de registro
	@GetMapping("/{id}")
	public String editar(@PathVariable Long id, Model model) {
		model.addAttribute("autor", autorRepository.findOne(id));
		return "autor/form";
	}

	// Deletar registro
	@GetMapping("/remover/{id}")
	public String remover(@PathVariable Long id) {
		autorRepository.delete((id));
		return "redirect:/autor/";

	}
}
