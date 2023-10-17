package com.example.casestudy.service;

import com.example.casestudy.Model.Product;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private String url = "jdbc:mysql://localhost:3306/CustomerDatabase";
    private String users = "root";
    private String password = "2004";

    private static final String INSERT_PRODUCT = "insert into product (url, name, price, quantity, describes) VALUES (?,?,?, ?, ?);";
    private static final String SELECT_PRODUCT = "select * from product where id =?";
    private static final String SELECT_ALL_PRODUCT = "select * from product";
    private static final String DELETE_PRODUCT = "delete from product where id = ?;";
    private static final String UPDATE_PRODUCT = "update product set url = ?,name = ?,price = ?, quantity = ?,describes = ? where id = ?;";

    public Connection connect() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, users,password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return con;
    }

    @Override
    public void insertProduct(Product product) {
        Connection connection = connect();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(INSERT_PRODUCT);
            preparedStatement.setString(1, product.getUrl());
            preparedStatement.setString(2, product.getName());
            preparedStatement.setDouble(3, product.getPrice());
            preparedStatement.setInt(4, product.getQuantity());
            preparedStatement.setString(5, product.getDescribes());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Product selectProduct(int id) {
        Product product = null;
        try {
            Connection connection = connect();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT);
            preparedStatement.setInt(1,id);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String url = rs.getString("url");
                String name = rs.getString("name");
                Double price = rs.getDouble("price");
                Integer quantity = rs.getInt("quantity");
                String describes = rs.getString("describes");
                product = new Product(url, name, price, quantity, describes);
            }
            return product;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> products = new ArrayList<>();
        try {
            Connection connection = connect();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String url = rs.getString("url");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String describes = rs.getString("describes");
                products.add(new Product(id, url, name, price, quantity, describes));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    @Override
    public boolean deleteProduct(int id) {
        boolean rowDelete = false;
        try {
            Connection connection = connect();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PRODUCT);
            preparedStatement.setInt(1, id);
            rowDelete = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }

    @Override
    public boolean updateProduct(int id ,Product product) {
        boolean rowUpdated;
        try{ Connection connection = connect();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT);
             preparedStatement.setString(1,product.getUrl());
             preparedStatement.setString(2,product.getName());
             preparedStatement.setDouble(3,product.getPrice());
             preparedStatement.setInt(4,product.getQuantity());
             preparedStatement.setString(5,product.getDescribes());
             preparedStatement.setInt(6,id);
            rowUpdated = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rowUpdated;

    }
}
