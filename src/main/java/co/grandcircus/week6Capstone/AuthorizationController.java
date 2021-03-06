package co.grandcircus.week6Capstone;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.week6Capstone.dao.UserDao;
import co.grandcircus.week6Capstone.entity.User;

@Controller
public class AuthorizationController {

	@Autowired
	UserDao userDao;

	@PostMapping("/login")
	// get the username and password from the form when it's submitted.
	public ModelAndView submitLoginForm(HttpSession session, @RequestParam("email") String email,
			@RequestParam("password") String password, RedirectAttributes redir) {

		User user = userDao.findByEmail(email);

		if (user != null && password.equals(user.getPassword())) {

			// Match!
			session.setAttribute("user", user);
			System.out.println("Email:" + user.getEmail());

			// On successful login, add the user to the session.
			session.setAttribute("user", user);

			// A flash message will only show on the very next page. Then it will go away.
			// It is useful with redirects since you can't add attributes to the mav.
			redir.addFlashAttribute("message", "Logged in.");
			return new ModelAndView("redirect:/show");

		} else {

			ModelAndView mav = new ModelAndView("index");
			mav.addObject("message", "Incorrect username or password");
			// Not a match
			return mav;

		}

	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, RedirectAttributes redir) {
		// invalidate clears the current user session and starts a new one.
		session.invalidate();

		// A flash message will only show on the very next page. Then it will go away.
		// It is useful with redirects since you can't add attributes to the mav.
		redir.addFlashAttribute("message", "Logged out.");
		return new ModelAndView("redirect:/");
	}

}
