package br.edu.utfpr.pb.livrariaSpring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.utfpr.pb.livrariaSpring.model.Editora;

public interface EditoraRepository extends JpaRepository<Editora, Long> {

	public List<Editora> findByNomeContainingIgnoreCase(String nome);

}
