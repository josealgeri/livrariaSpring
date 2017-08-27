package br.edu.utfpr.pb.livrariaSpring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.utfpr.pb.livrariaSpring.model.Editora;
import br.edu.utfpr.pb.livrariaSpring.repository.EditoraRepository;

@Controller
@RequestMapping("/editora")
public class EditoraController {

	@Autowired
	private EditoraRepository editoraRepository;

	// Lista de Editoras
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("editoras", editoraRepository.findAll());
		return "editora/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("editora", new Editora());
		return "editora/form";
	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Editora editora) {
		editoraRepository.save(editora);
		return "redirect:/editora/";
	}

	// Edição de registro
	@GetMapping("/{id}")
	public String editar(@PathVariable Long id, Model model) {
		model.addAttribute("editora", editoraRepository.findOne(id));
		return "editora/form";
	}

	// Deletar registro
	@GetMapping("/remover/{id}")
	public String remover(@PathVariable Long id) {
		editoraRepository.delete((id));
		return "redirect:/editora/";
	}
}
