<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 11/10/2023
  Time: 11:33 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD PRODUCT</title>
    <a href="products?action=products"><img src="https://assets.propertyshelf.com/web-graphics/click-buttons/back-button.png/image" alt="Ảnh Nền" style="width: 100px"></a>
</head>
<body>
<div align="center">
    <form method="post">
        <table border="0" cellpadding="5">
            <caption>
                <h2>New Product</h2>
            </caption>
            <tr>
                <th>URL IMAGE: </th>
                <td>
                    <input type="text" name="url" id="url" size="45"/>
                </td>
            </tr>
            <tr>
                <th>PRODUCT NAME: </th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>PRICE :</th>
                <td>
                    <input type="text" name="price" id="price" size="15"/>
                </td>
            </tr>
            <tr>
                <th>QUANTITY :</th>
                <td>
                    <input type="text" name="quantity" id="quantity" size="15"/>
                </td>
            </tr>
            <tr>
                <th>DESCRIBE :</th>
                <td>
                    <input type="text" name="describes" id="describes" size="45"/>
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
