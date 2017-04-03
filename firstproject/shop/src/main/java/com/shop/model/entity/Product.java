package com.shop.model.entity;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Product  {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotNull(message="Enter the valid name")
private String Productname;
@NotNull(message="Enter the valid price")
/*@Size(min=1,message="price is invalid")*/
private int Productprice;
private String Productdescription;
private String Categoryname;
private String Name;
private String quantity;
/*@ManyToOne
@JsonIgnore
@JoinColumn(name="cartitemid")
private Cartitems items;*/


/*public Cartitems getItems() {
	return items;
}

public void setItems(Cartitems items) {
	this.items = items;
}*/

public Product()
{
}

public String getQuantity() {
	return quantity;
}

public void setQuantity(String quantity) {
	this.quantity = quantity;
}

public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
@Transient
private MultipartFile file;
public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}
public String getCategoryname() {
	return Categoryname;
}
public void setCategoryname(String categoryname) {
	Categoryname = categoryname;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getProductname() {
	return Productname;
}
public void setProductname(String productname) {
	Productname = productname;
}

public int getProductprice() {
	return Productprice;
}

public void setProductprice(int productprice) {
	Productprice = productprice;
}

public String getProductdescription() {
	return Productdescription;
}
public void setProductdescription(String productdescription) {
	Productdescription = productdescription;
}

}