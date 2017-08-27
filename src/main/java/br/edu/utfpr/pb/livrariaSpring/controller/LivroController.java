package br.edu.utfpr.pb.livrariaSpring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.utfpr.pb.livrariaSpring.model.Livro;
import br.edu.utfpr.pb.livrariaSpring.repository.AutorRepository;
import br.edu.utfpr.pb.livrariaSpring.repository.EditoraRepository;
import br.edu.utfpr.pb.livrariaSpring.repository.GeneroRepository;
import br.edu.utfpr.pb.livrariaSpring.repository.LivroRepository;

@Controller
@RequestMapping("/livro")
public class LivroController {

	@Autowired
	private LivroRepository livroRepository;

	@Autowired
	private EditoraRepository editoraRepository;

	@Autowired
	private GeneroRepository generoRepository;

	@Autowired
	private AutorRepository autorRepository;

	// Lista de Livros
	@GetMapping("/")
	public String list(Model model) {
		model.addAttribute("livros", livroRepository.findAll());
		model.addAttribute("editoras", editoraRepository.findAll());
		return "livro/list";
	}

	// Chama formulário
	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("editoras", editoraRepository.findAll());
		model.addAttribute("generos", generoRepository.findAll());
		model.addAttribute("autores", autorRepository.findAll());
		model.addAttribute("livro", new Livro());
		return "livro/form";

	}

	// Salva o formulário
	@PostMapping("/salvar")
	public String salvar(Livro livro) {
		livroRepository.save(livro);
		return "redirect:/livro/";
	}

	// Edição de registro
	@GetMapping("/{id}")
	public String editar(@PathVariable Long id, Model model) {
		model.addAttribute("editoras", editoraRepository.findAll());
		model.addAttribute("generos", generoRepository.findAll());
		model.addAttribute("autores", autorRepository.findAll());
		model.addAttribute("livro", livroRepository.findOne(id));
		return "livro/form";
	}

	// Deletar registro
	@GetMapping("/remover/{id}")
	public String remover(@PathVariable Long id) {
		livroRepository.delete((id));
		return "redirect:/livro/";
	}
}
