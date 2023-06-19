package pl.coderslab.service;

import pl.coderslab.entity.Book;
import java.util.List;
import java.util.Optional;

public interface BookService {
    List<Book> getBooks();

    Optional<Book> getBook(Long id);

    void add(Book book);

    void update(Book book);

    void delete(Long id);
}
