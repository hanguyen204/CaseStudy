package com.example.casestudy.Model;

public class Product {
    private int id;
    private String url;
    private String name;
    private Double price;
    private int quantity;
    private String describes;

    public Product() {
    }

    public Product(String url, String name, Double price, int quantity, String describes) {
        this.url = url;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.describes = describes;
    }

    public Product(int id, String url, String name, Double price, int quantity, String describes) {
        this.id = id;
        this.url = url;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.describes = describes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }
}
