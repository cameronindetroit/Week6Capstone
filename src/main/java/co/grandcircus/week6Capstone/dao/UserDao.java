package co.grandcircus.week6Capstone.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.week6Capstone.entity.User;

public interface UserDao extends JpaRepository<User, Long> {

	List<User> findAllByOrderByName();

	User findByEmail(String email);

}
