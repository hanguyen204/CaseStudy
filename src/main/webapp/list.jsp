<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 11/10/2023
  Time: 3:17 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>KFC STORE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="list.css">
</head>
<body>
<div class="header">
    <div class="logo">
        <img src="https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/2048px-KFC_logo.svg.png" alt=""
             width=65px">
    </div>
    <div id="navbar-top" align="center" style="padding: 25px">
        <a href="#content1" style="padding: 10px 80px">Thực Đơn</a>
        <a href="" style="padding: 10px 80px;">Khuyến Mãi</a>
        <a href="" style="padding: 10px 80px;">Dịch Vụ Tiệc</a>
        <a href="" style="padding: 10px 80px;">Hệ Thống Nhà Hàng</a>
        <div class="dropdown">
            <Span>Menu Customer</Span>
            <div class="dropdown-content">
                <a href="products?action=create">ADD PRODUCT</a>
                <br>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <img src="https://static.kfcvietnam.com.vn/images/content/home/carousel/lg/GaQueKem.webp?v=L7ya6g"
         alt="Ảnh Hình Nền"
         width="1500px">
    <h3>Danh Mục Món Ăn</h3>
    <c:forEach var="list" items="${listProduct}">
    <div id="content1" style="text-align: center;width: 33%;float: left">
        <img src="${list.url}" alt="ảnh" style="width: 60%">
        <div>
            <a>Tên SP: </a>
            <a>${list.name}</a>
            <br>
            <a>Giá SP: </a>
            <a>${list.price}</a>
            <br>
            <a>Số SP Còn Tại Cửa Hàng: </a>
            <a>${list.quantity}</a>
            <br>
            <a>Mô Tả: </a>
            <a>${list.describes}</a>
            <br>
            <a href="products?action=edit&id=${list.id}">
                <img src="https://clipart-library.com/image_gallery/387810.png"
                     alt="nut edit" style="width: 50px">
            </a>
            <a href="products?action=delete&id=${list.id}"><img
                    src="https://freepngimg.com/save/25507-delete-button-file/600x296" alt="nut delete"
                    style="width: 50px"></a>
        </div>
    </div>
</div>
</c:forEach>
<div class="footer">
    <img src="https://static.kfcvietnam.com.vn/images/content/home/mobileappbanner/lg/banner.jpg?v=L7ya6g" alt="Ảnh Nền"
         width="1500px">
    <div style="float: left">
        <label style="text-align: center">
            <h4>Công ty HHTN 1 Thành Viên</h4>
            <br>
            <a>Số 36 Nguyễn Thái Học, TX.Sơn Tây, TP.Hà Nội</a>
            <br>
            <a>Điện Thoại: (84)967741184</a>
            <br>
            <a>Email: lienhe@hanguyen.com.vn</a>
            <br>
            <a>Mã Số thuế: 0120039999</a>
            <br>
            <a>Ngày cấp: 29/10/1998 - Nơi cấp: Cục Thuế Thành Phố Hà Nội</a>
        </label>
    </div>
    <div style="float: right;align-content: center">
        <img src="https://kfcvn-static.cognizantorderserv.com/images/email/logo_footer.png" alt="Ảnh Nền">
    </div>
</div>
</body>
</html>
