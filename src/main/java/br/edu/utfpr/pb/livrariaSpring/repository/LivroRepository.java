package br.edu.utfpr.pb.livrariaSpring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.utfpr.pb.livrariaSpring.model.Livro;

public interface LivroRepository extends JpaRepository<Livro, Long> {
	
	public List<Livro> findByTituloContainingIgnoreCase (String titulo);

}
