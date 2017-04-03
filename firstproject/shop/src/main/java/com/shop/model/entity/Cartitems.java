package com.shop.model.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class Cartitems implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartitemid;
	private int Total;
	private int Quantity;
	
	@ManyToOne
    @JoinColumn(name = "id")
    private Product product;
	/*@OneToMany(mappedBy = "items",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	@Fetch(FetchMode.JOIN)
	private List<Product> product;*/
	@ManyToOne
    @JoinColumn(name = "cartid")
    private Cart cart;
	
	
	@OneToOne
	@JoinColumn(name="userid")
	@JsonIgnore
	private Register id_fk;
	
	public int getCartitemid() {
		return cartitemid;
	}
	public void setCartitemid(int cartitemid) {
		this.cartitemid = cartitemid;
	}
	
	
	/*public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}*/
	
	public int getTotal() {
		return Total;
	}
	public Register getId_fk() {
		return id_fk;
	}
	public void setId_fk(Register id_fk) {
		this.id_fk = id_fk;
	}
	public void setTotal(int total) {
		Total = total;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	

}

