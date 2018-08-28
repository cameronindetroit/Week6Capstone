package co.grandcircus.week6Capstone.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private User user;
	private String name;
	private String description;
	private String dueDate;
	private Boolean isComplete;

	public Task(Long id, User user, String name, String description, String dueDate, Boolean isComplete) {
		super();
		this.id = id;
		this.user = user;
		this.name = name;
		this.description = description;
		this.dueDate = dueDate;
		this.isComplete = isComplete;
	}

	public Task() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	public Boolean getIsComplete() {
		return isComplete;
	}

	public void setIsComplete(Boolean isComplete) {
		this.isComplete = isComplete;
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", user=" + user + ", name=" + name + ", description=" + description + ", dueDate="
				+ dueDate + ", isComplete=" + isComplete + "]";
	}

}
