package luanho.onlinebookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import luanho.onlinebookstore.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

}
