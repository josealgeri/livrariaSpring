package br.edu.utfpr.pb.livrariaSpring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class Livro {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(length = 50, nullable = false)
	private String titulo;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idEditora", referencedColumnName = "id")
	private Editora editora;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idGenero", referencedColumnName = "id")
	private Genero genero;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idAutor", referencedColumnName = "id")
	private Autor autor;

	@Column(nullable = false)
	private Integer ano;

	@Column(length = 50, nullable = false)
	private String isbn;

}
