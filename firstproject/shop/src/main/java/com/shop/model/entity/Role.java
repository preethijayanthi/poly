package com.shop.model.entity;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Role implements Serializable   {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy=GenerationType.AUTO)

private int id;
//@Size(min=3,max=10,message="hello")
@OneToOne
@JoinColumn(name="userid")
private Register id_fk;
private String userrole;
public Role()
{
}
public Role(int id,String userrole){
	this.id=id;
	this.userrole=userrole;	
}
public int getId() {
	return id;
}
public Register getId_fk() {
	return id_fk;
}
public void setId_fk(Register id_fk) {
	this.id_fk = id_fk;
}
public void setId(int id) {
	this.id = id;
}

public String getUserrole() {
	return userrole;
}
public void setUserrole(String userrole) {
	this.userrole = userrole;
}

}