<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 11/10/2023
  Time: 1:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT PRODUCT</title>
    <a href="products?action=products"><img src="https://assets.propertyshelf.com/web-graphics/click-buttons/back-button.png/image" alt="Ảnh Lền" style="width: 100px"></a>
</head>
<body>
<div align="center">
    <form method="post">
        <table border="0" cellpadding="5">
            <tr>
                <th>URL IMAGE: </th>
                <td>
                    <input type="text" name="urlEd" id="url" size="45" value="${product.getUrl()}"/>
                </td>
            </tr>
            <tr>
                <th>PRODUCT NAME: </th>
                <td>
                    <input type="text" name="nameEd" id="name" size="45"  value="${product.getName()}"/>
                </td>
            </tr>
            <tr>
                <th>PRICE :</th>

                <td>
                    <input type="text" name="priceEd" id="price" size="15" value="${product.getPrice()}"/>
                </td>
            </tr>
            <tr>
                <th>QUANTITY :</th>
                <td>
                    <input type="text" name="quantityEd" id="quantity" size="15" value="${product.getQuantity()}"/>
                </td>
            </tr>
            <tr>
                <th>DESCRIBE :</th>
                <td>
                    <input type="text" name="describesEd" id="describes" size="45" value="${product.getDescribes()}"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
