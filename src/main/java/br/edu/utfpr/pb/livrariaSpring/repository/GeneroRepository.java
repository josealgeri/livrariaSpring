package br.edu.utfpr.pb.livrariaSpring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.utfpr.pb.livrariaSpring.model.Genero;

public interface GeneroRepository extends JpaRepository<Genero, Long> {
	
	public List<Genero> findByDescricaoContainingIgnoreCase (String descricao);

}
