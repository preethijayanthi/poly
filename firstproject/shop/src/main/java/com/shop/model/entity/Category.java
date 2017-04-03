package com.shop.model.entity;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category  {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int Categoryid;
private String Categoryname;
private String Categorydescription;

public int getCategoryid() {
	return Categoryid;
}
public void setCategoryid(int categoryid) {
	Categoryid = categoryid;
}
public String getCategoryname() {
	return Categoryname;
}
public void setCategoryname(String categoryname) {
	Categoryname = categoryname;
}
public String getCategorydescription() {
	return Categorydescription;
}
public void setCategorydescription(String categorydescription) {
	Categorydescription = categorydescription;
}
public Category()
{
}
public Category(int Categoryid,String Categoryname,String Categorytdescription){
	this.Categoryid=Categoryid;
	this.Categoryname=Categoryname;
	this.Categorydescription=Categorydescription;
}


}