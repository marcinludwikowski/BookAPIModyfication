package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Book;
import pl.coderslab.service.BookService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class ManageBookController {

    private final BookService bookService;

    public ManageBookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/all")
    public String showPosts(Model model) {
        List<Book> books = bookService.getBooks();
        model.addAttribute("books", books);
        return "/books/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddForm(Model model) {
        model.addAttribute("book", new Book());
        return "books/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveBook(@Valid Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "books/add";
        }
        bookService.add(book);
        return "redirect:/admin/books/all";
    }

    @GetMapping("/show/{id}")
    public String showBook(Model model, @PathVariable long id) {
        model.addAttribute("book", bookService.getBook(id).orElseThrow(EntityNotFoundException::new));
        return "books/show";
    }
}
