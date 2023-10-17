package com.example.casestudy.service;

import com.example.casestudy.Model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    public void insertProduct(Product product) throws SQLException;


    public Product selectProduct(int id);


    public List<Product> selectAllProduct();


    public boolean deleteProduct(int id) throws SQLException;


    public boolean updateProduct(int id ,Product product) throws SQLException;

}
