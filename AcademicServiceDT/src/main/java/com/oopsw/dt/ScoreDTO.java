package com.oopsw.dt;

public class ScoreDTO {
	
	private String year;
	private String semester;
	private String subject_code;
	private String subject_name;
	private String score;
	private String credit;
	private String category;
	private String professor_name;
	
	private String scoreChange;
	private String averageChange;
	
	public String getAverageChange() {
		return averageChange;
	}
	public void setAverageChange(String averageChange) {
		this.averageChange = averageChange;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getScoreChange() {
		return scoreChange;
	}
	public void setScoreChange(String scoreChange) {
		this.scoreChange = scoreChange;
	}
	public String getSubject_code() {
		return subject_code;
	}
	public void setSubject_code(String subject_code) {
		this.subject_code = subject_code;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProfessor_name() {
		return professor_name;
	}
	public void setProfessor_name(String professor_name) {
		this.professor_name = professor_name;
	}
	
}
