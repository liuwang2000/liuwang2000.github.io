package com.ttjsyxt.entity;

public class goods {
	private String goodsName;
	private String barcode;
	private String price;
	private String brand;
	private int number;
	private String supplier;
	private String message;
	private String sellprice;

	public String getSellprice() {
		return sellprice;
	}

	public void setSellprice(String sellprice) {
		this.sellprice = sellprice;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public goods() {
		super();
	}

	public goods(String goodsName, String barcode, String price, String brand) {
		super();
		this.goodsName = goodsName;
		this.barcode = barcode;
		this.price = price;
		this.brand = brand;
	}

	public goods(String goodsName, String barcode, String price, String brand, int number, String supplier) {
		super();
		this.goodsName = goodsName;
		this.barcode = barcode;
		this.price = price;
		this.brand = brand;
		this.number = number;
		this.supplier = supplier;
	}

	public goods(String goodsName, String barcode, String price, String brand, int number, String supplier,
			String message, String sellprice) {
		super();
		this.goodsName = goodsName;
		this.barcode = barcode;
		this.price = price;
		this.brand = brand;
		this.number = number;
		this.supplier = supplier;
		this.message = message;
		this.sellprice = sellprice;
	}

}
