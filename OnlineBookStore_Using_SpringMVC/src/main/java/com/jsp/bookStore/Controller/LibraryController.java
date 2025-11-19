package com.jsp.bookStore.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jsp.bookStore.DAO.BookDAO;
import com.jsp.bookStore.DAO.OrderDAO;
import com.jsp.bookStore.DAO.UserDAO;
import com.jsp.bookStore.DTO.Book;
import com.jsp.bookStore.DTO.Order;
import com.jsp.bookStore.DTO.User;

@Controller
public class LibraryController {

	@Autowired
	BookDAO bookDao;
	
	@Autowired
	UserDAO userDao;
	
	@Autowired
	OrderDAO orderDao;
	
	// to get register.jsp file
	@GetMapping("/register")
	public String showRegisterPage() {
		return "register";
	}
	
	// to save user
	@PostMapping("/create")
	public String registerUser(@ModelAttribute User user) {
		userDao.saveUser(user);
		return "redirect:/login";
	}
	
	// to get login.jsp file
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}
	
	// to verify login credentials
	@PostMapping("/loginhere")
	public String loginUser(@RequestParam String email , @RequestParam String password, 
			HttpSession session , HttpServletRequest request) {
		
		User user = userDao.findUserByEmailAndPassword(email, password);
		if(user !=null) {
			session.setAttribute("user", user);
//			return "home";
			return "redirect:/home";
		}
		
		else {
			request.setAttribute("error", "INCORRECT USERNAME OR PASSWORD...!");
			return "login";
		}
	}
	// to get home.jsp page
//		@GetMapping("/home")
//		public String getHome() {
//			return "home";
//		}
		
	// Show home page with all books
    @GetMapping("/home")
    public String home(Model model) {
        List<Book> allBooks = bookDao.getAllBooks();  // Make sure DAO has this method
        model.addAttribute("allBooks", allBooks);
        return "home";
    }

	// TO SEARCH FOR A BOOK
	@GetMapping("/search")
	public String searchBook(@RequestParam("title") String title, Model model) {
		
		List<Book> books = bookDao.getBookByTitle(title);
		model.addAttribute("books",books);
		return "home";
	}
	
	// to add the book to the cart of the user who is logged in
	@PostMapping("/addToCart")
	public String addToCart(@RequestParam int bookid , HttpSession session) {
		// first , get the object of user who is logged in currently.
		// so, getting the logged in user object from current session.
		User loggedUser = (User)session.getAttribute("user");
		
		// based on book id , getting the book from DB , which should be added to cart
		Book book = bookDao.getBookById(bookid);
		
		//***************
		// here, we will check if the users cart (book list) exists or not
		if(loggedUser.getCart()==null) {
			// if not, then we are creating a new list (new cart) and setting it to the user
			loggedUser.setCart(new ArrayList<Book>());
			// so now, the logged in User has a cart to which we can add books.
		}
		
		// getting the cart for this user and adding the book to that cart.
		loggedUser.getCart().add(book);
		// finally , merge and updated user object into DB.
		userDao.updateLoggedInUser(loggedUser);
		
		return "redirect:/home";
	}
	
	// to get cart.jsp page
	@GetMapping("/cart")
	public String getCart() {
		return "cart";
	}
	
	
	// to place order
	@PostMapping("/placeOrder")
	public String placeOrder(HttpSession session) {
		
		User loggedUser = (User) session.getAttribute("user");
		
		// create a new order
		Order order = new Order();
		
		// setting all values to the order
		order.setUser(loggedUser);
		
		// creating a new List to avoid confusion 
		// to Store books from the cart which is ordered
		List<Book> orderedBooks = new ArrayList<Book>();
		
		
		double total = 0;
		
		for(Book book : loggedUser.getCart()) {
			total = total + book.getPrice();
			// adding all the books from the cart into ordered Book list.
			orderedBooks.add(book);
			
		}
		// setting the list of orderedBooks to order.
		order.setBooks(orderedBooks);
		order.setTotalAmount(total);
		order.setStatus("PLACED");
		
		//storing the order object into DB
		orderDao.placeOrder(order);
		
		// clearing the books from the cart (clearing the book list)
		loggedUser.getCart().clear();
		
		// Update user object
		userDao.updateLoggedInUser(loggedUser);
		
		return "redirect:/home?orderPlaced=1";
	}
	
	// to get viewOrder.jsp
	@GetMapping("/view")
	public String getAllOrders(HttpSession session , Model model) {
		User loggedUser = (User) session.getAttribute("user");
		
		List<Order> orders = orderDao.getOrderByUserId(loggedUser.getId());
		
		model.addAttribute("orders" , orders);
		
		return "viewOrder";
		
	}
	
	// a helper method which helps to take us to viewOrder.jsp along with parameter - cancelled = 1
	@GetMapping("/vieworder")
	public String getViewOrder(){
		return "viewOrder";
	}
	
	// to cancel order
	@PostMapping("/cancelOrder")
	public String cancelOrder(@RequestParam int id) {
		orderDao.cancelOrder(id);
		return "redirect:/vieworder?cancelled=1";
	}
	
	// to logout
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	
} // end of LibraryController class Block











