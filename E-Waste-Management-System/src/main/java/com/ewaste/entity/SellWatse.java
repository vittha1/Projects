package com.ewaste.entity;
public class SellWatse 
{
    private int id;
    private String category;
    private String name;
    private String email;
    private String mobno;
    private String address;
    private String bname;
    private String condition;
    private String hold;
    private String quantity;
    private String price;
    
	public int getId() 
	{ 
		return id;
    }
	public void setId(int id) 
	{ 
		this.id = id; 
	}
	
	public String getCategory() 
	{
		return category;
	}
	public void setCategory(String category)
	{ 
		this.category = category; 
	}
	
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public String getMobno() 
	{
		return mobno;
	}
	public void setMobno(String mobno) 
	{
		this.mobno = mobno;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}
	public String getBname() 
	{
		return bname;
	}
	public void setBname(String bname)
	{
		this.bname = bname;
	}
	public String getCondition() 
	{
		return condition;
	}
	public void setCondition(String condition) 
	{
		this.condition = condition;
	}
	public String getHold()
	{
		return hold;
	}
	public void setHold(String hold)
	{
		this.hold = hold;
	}
	public String getQuantity()
	{
		return quantity;
	}
	public void setQuantity(String quantity) 
	{
		this.quantity = quantity;
	}
	public String getPrice()
	{
		return price;
	}
	public void setPrice(String price) 
	{
		this.price = price;
	}
	@Override
	public String toString() {
		
		return "SellWatse [id=" + id + ", category=" + category + ", name=" + name + ", email=" + email + ", mobno="
				+ mobno + ", address=" + address + ", bname=" + bname + ", condition=" + condition + ", hold=" + hold
				+ ", quantity=" + quantity + ", price=" + price + "]";
	}

}
