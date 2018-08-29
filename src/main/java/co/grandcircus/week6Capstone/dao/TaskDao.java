package co.grandcircus.week6Capstone.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.week6Capstone.entity.Task;
import co.grandcircus.week6Capstone.entity.User;

public interface TaskDao extends JpaRepository<Task, Long> {

	List<Task> findAllByOrderByName();

	List<Task> findAllByUser(User user);

}
