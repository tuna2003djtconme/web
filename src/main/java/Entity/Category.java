package Entity;

import java.time.LocalDate;


public class Category {
	String i;
	String name_category;
	LocalDate created_at;
	LocalDate updated_at;
	public Category(String i, String name_category, LocalDate created_at, LocalDate updated_at) {
		super();
		this.i = i;
		this.name_category = name_category;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	public String getName_category() {
		return name_category;
	}
	public void setName_category(String name_category) {
		this.name_category = name_category;
	}
	public LocalDate getCreated_at() {
		return created_at;
	}
	public void setCreated_at(LocalDate created_at) {
		this.created_at = created_at;
	}
	public LocalDate getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(LocalDate updated_at) {
		this.updated_at = updated_at;
	}
	@Override
	public String toString() {
		return "Category [i=" + i + ", name_category=" + name_category + ", created_at=" + created_at + ", updated_at="
				+ updated_at + "]";
	} 

}
