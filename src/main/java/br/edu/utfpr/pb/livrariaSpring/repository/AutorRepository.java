package br.edu.utfpr.pb.livrariaSpring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.utfpr.pb.livrariaSpring.model.Autor;

public interface AutorRepository extends JpaRepository<Autor, Long> {
	
	public List<Autor> findByNomeContainingIgnoreCase (String nome);

}
