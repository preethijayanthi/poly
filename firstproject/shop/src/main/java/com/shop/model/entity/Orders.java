package com.shop.model.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Orders implements Serializable {
	public Orders()
	{
		
	}
	
	private static final long serialVersionUID = 1L;
	
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int orderId;

    @OneToOne
    @JoinColumn(name ="cartid")
    private Cart cart;
    @OneToOne
    @JoinColumn(name = "userid")
    private Register regdet;
    
  
    public int getOrderId() {
		return orderId;
	}


	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}


	public Cart getCart() {
		return cart;
	}


	public void setCart(Cart cart) {
		this.cart = cart;
	}


	public Register getRegdet() {
		return regdet;
	}


	public void setRegdet(Register regdet) {
		this.regdet = regdet;
	}


	public BillingAddress getShipment() {
		return shipment;
	}


	public void setShipment(BillingAddress shipment) {
		this.shipment = shipment;
	}

	@OneToOne
    @JoinColumn(name="shipId")
    private BillingAddress shipment;


	

}
