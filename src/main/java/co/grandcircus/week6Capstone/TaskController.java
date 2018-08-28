package co.grandcircus.week6Capstone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.week6Capstone.dao.TaskDao;
import co.grandcircus.week6Capstone.dao.UserDao;
import co.grandcircus.week6Capstone.entity.Task;
import co.grandcircus.week6Capstone.entity.User;

@Controller
public class TaskController {

	@Autowired
	private TaskDao dao;

	@Autowired
	private UserDao userDao;

	@RequestMapping("/index")
	public ModelAndView home() {

		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping("/show")
	public ModelAndView task() {
		List<Task> tasks = dao.findAll();

		ModelAndView mav = new ModelAndView("task-show", "task", tasks);
		return mav;
	}

	@RequestMapping("/task/{id}")
	public ModelAndView showItems(@PathVariable("id") Task task) {
		System.out.println(task);
		ModelAndView mav = new ModelAndView("details");
		mav.addObject("task", dao.findAll());
		return mav;

	}

	@RequestMapping("/task/add")
	public ModelAndView addTask() {
		ModelAndView mav = new ModelAndView("task-add");
		return mav;
	}

	@PostMapping("/task/submit")
	public ModelAndView submitTask(Task task) {
		dao.save(task);
		ModelAndView mav = new ModelAndView("redirect:/index");
		return mav;
	}

	@RequestMapping("/task/{id}/delete")
	public ModelAndView delete(@PathVariable("id") Long id) {
		dao.deleteById(id);
		return new ModelAndView("redirect:/index");
	}

	// setting up form
	@RequestMapping("/register-user")
	public ModelAndView showForm() {

		return new ModelAndView("register-user", "title", "Please fill out the form to register");

	}

	// results to be sent back
	@RequestMapping(value = "/register-result", method = RequestMethod.POST)
	public ModelAndView submitCreateForm(User user) {
		userDao.save(user);
		return new ModelAndView("/index");
	}
}
