<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="static/css/signin.css">
    <link rel="stylesheet" href="static/css/sign-up.css">
    <link rel="stylesheet" href="static/css/footer.css">
    <link rel="stylesheet" href="static/css/styles_for_slider.css">
    <link rel="stylesheet" href="static/css/tyles_for_header.css">
    <link rel="stylesheet" href="static/css/themify-icons.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tạo tài khoản</title>
</head>
<div id="banner">
    <div class="top_banner">
        <img src="static/img/top_banner.png" style="width: 100%;"alt="">
    </div>
</div>
<header>
    <div class="nav">
        <div class="nav1">
            <div class="img nav1_n0">
                <a href="index.jsp"><img src="static/img/logo.png" alt=""></a>
            </div>
            <div class="search nav1_n0">
                <form action="/search" method="get" role="search"></form>
                <span class="input-group">
                            <input type="text" placeholder="Search...">
                            <input type="hidden" name="type" value="product">
                            <button type="submit" aria-label="search">
                                <svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Search</title><path d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z" fill="none" stroke="currentColor" stroke-miterlimit="10" stroke-width="32"/><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-miterlimit="10" stroke-width="32" d="M338.29 338.29L448 448"/></svg>
                            </button>
                        </span>
            </div>
            <div class="box nav1_n0">
                <ul class="menu">
                    <li class="sup n1">
                        <img  class="sup_img"src="static/img/phone-icon.webp" alt="">
                        <div class="sup_div">
                            <p >Hỗ trợ khách hàng</p>
                            <a class="n2" href="#">19002613</a>
                        </div>
                    </li>
                    <li class="acc n1">
                        <img class="acc_img" src="static/img/account-icon.webp" alt="">
                        <div class="acc_div">
                            <%
                                String nameUser = (String) request.getAttribute("nameUser");
                                String url = "login.jsp";
                                String taikhoan = "Tai Khoan";
                                String dangnhap = "Dang Nhap";
                                if (nameUser != null && !nameUser.isEmpty()) {
                                    url = "index.jsp";
                                    taikhoan = nameUser;
                                    dangnhap = "Dang Xuat";
                                }
                            %>
                            <a class="acc1 n2" href="#"><%=taikhoan %></a>
                            <a class="login n2" href="<%=url %>"><%=dangnhap %></a>
                        </div>
                    </li>

                    <li class="basket n1">
                        <a class="basket0" href=""><img src="static/img/cart-icon.webp" alt=""></a>
                        <a class="basket1 n2"href="#">Giỏ hàng</a>
                        <a class="basket2"href=""></a>
                    </li>
                    <li class="bill n1">
                        <img src="static/img/policy_header_image_3.webp" alt="">
                        <a class="n2" href="#">
                            Kiểm tra đơn hàng
                        </a>
                    </li>
                    <li class="System n1">
                        <img src="static/img/policy_header_image_4.webp" alt="">
                        <a class="n2" href="#">Hệ thống của hàng</a>
                    </li>
                    <li class="flexible">
                        <div class="nav2">
                            <ul class="none-menu">
                                <li class="hot">
                                    <a href="#">
                                        ƯU ĐÃI HOT
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                        <ul class="hot_1">
                                            <li class="hot_2"><a href="#">ƯU ĐÃI HOT, ĐỪNG BỎ LỠ</a></li>
                                            <li class="hot_3"><a href="#">MUA 1 TẶNG 1</a></li>
                                        </ul>
                                    </a>
                                </li>
                                <li class="makeup">
                                    <a href="#">
                                        Trang điểm
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                        <ul>

                                        </ul>
                                    </a>
                                </li>
                                <li class="skincare">
                                    <a href="#">
                                        Chăm sóc da
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="bodycare">
                                    <a href="#">
                                        Chăm sóc cơ thể
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="haircare">
                                    <a href="#">
                                        Chăm sóc tóc
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="health">
                                    <a href="#">
                                        Chăm sóc sức khỏe
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="tool">
                                    <a href="#">
                                        Tools & Brushes
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="items">
                                    <a href="#">
                                        Phụ kiện
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="men">
                                    <a href="#">
                                        Dành cho Nam
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="news">
                                    <a href="#">
                                        Tin tức
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                                <li class="band">
                                    <a href="#">
                                        Tất cả thương hiệu
                                        <svg class="n2" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Down</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 184l144 144 144-144"/></svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="togle">
                <span></span>
            </div>
            <div class="basket_mobile">
            </div>
        </div>
    </div>
</header>
<body>
    <div class="register">
        <div class="register-header">
            <h1>đăng ký tài khoản</h1>
            <p>Bạn đã có tài khoản ? Đăng nhập <a href="login.jsp" class="btn__login">tại đây</a></p>
        </div>
        <div class="register-form">
            <div class="register-form-header">
                <h3>thông tin cá nhân</h3>
            </div>
            <div class="login__forget" style="color:red;">
                <% String errorMessage = (String) request.getAttribute("errorMessage");
                    if(errorMessage==null){errorMessage="";}
                %>
                <%=errorMessage %>
            </div>
            <form action="signup" method="post" class="register-form-container">
                <div class="register-form-form">
                    <label  class="register-form-label">Họ <span class="required">*</span></label><br>
                    <input type="text" class="register-form-input" name="firstname" placeholder="Họ" required>
                </div>
                <div class="register-form-form">
                    <label  class="register-form-label">Tên <span class="required">*</span></label><br>
                    <input type="text" class="register-form-input" name="lastname" placeholder="Tên" required>
                </div>
                <div class="register-form-form">
                    <label  class="register-form-label">Số điện thoại <span
                            class="required">*</span></label><br>
                    <input type="text" pattern="\d+" class="register-form-input" name="contact" placeholder="Số điện thoại" required>
                </div>
                <div class="register-form-form">
                    <label  class="register-form-label">Email <span class="required">*</span></label><br>
                    <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" class="register-form-input" name="username" placeholder="Email" required>
                </div>
                <div class="register-form-form">
                    <label  class="register-form-label">Mật khẩu <span
                            class="required">*</span></label><br>
                    <input type="password" class="register-form-input" name="password" placeholder="Mật khẩu" required>
                </div>
                <div class="register-submit">
                    <button type="submit" class="btn-submit">Đăng ký</button>
                </div>
            </form>
        </div>
    </div>

    <!-- footer -->
    <footer>
        <div class="row">
            <div class="col-1">
                <h1>Thông tin liên hệ</h1>
                <a href="#" class="col-1-logo">
                    <img src="static/images/logo-footer.webp" alt="logo-footer" />
                </a>
                <p>Công ty TNHH Bán lẻ SammiShop.
                    <br>
                    SammiShop là chuỗi siêu thị mỹ phẩm chính hãng, giá rẻ, đáng tin cậy dành cho giới trẻ Việt Nam.
                    <br>
                    Giấy chứng nhận đăng ký kinh doanh số 0109129611 cấp ngày 18/03/2020 tại Phòng đăng ký kinh doanh Sở
                    kế hoạch và đầu tư thành phố Hà Nội.
                </p>
                <i class="fa-sharp fa-solid fa-location-dot"></i>
                Địa chỉ: Số 159, Xuân Thủy, phường Dịch Vọng Hậu, quận Cầu Giấy, thành phố Hà Nội.
                </p>
                <p>
                    <i class="fa-solid fa-mobile-screen-button"></i>
                    Số điện thoại: 19002631
                </p>
                <p>
                    <i class="fa-solid fa-envelope"></i>
                    Email: cskh@sammishop.com
                </p>
                <ul class="icon">
                    <li><a href="https://www.facebook.com/Sammishop.com86">
                        <img src="static/images/facebook.svg" alt="fb-icon" /></a>
                    </li>
                    <li><a href="https://zalo.me/4034357249438657314">
                        <img src="static/images/zalo.svg" alt="zalo-icon" /></a>
                    </li>
                    <li><a href="https://www.instagram.com/sammishop_official/">
                        <img src="static/images/instagram.svg" alt="instagram-icon" /></a>
                    </li>
                    <li><a href="https://shopee.vn/sammishop86">
                        <img src="static/images/shopee.webp" alt="shopee-icon" /></a>
                    </li>
                    <li><a href="https://www.lazada.vn/shop/sammishop-offical/">
                        <img src="static/images/lazada.webp" alt="lazada-icon" /></a>
                    </li>
                    <li><a href="https://tiki.vn/cua-hang/sammishop">
                        <img src="static/images/tiki.webp" alt="tiki-icon" /></a>
                    </li>
                    <li><a href="https://www.tiktok.com/@sammishop_official">
                        <img src="static/images/tiktok.webp" alt="tiktok-icon" /></a>
                    </li>
                </ul>
                <div class="copyright">
                    <p>
                        © Bản quyền thuộc về
                        <a href="#">SAMMISHOP</a>
                    </p>
                </div>
            </div>
            <div class="col-2">
                <div class="col-2-col1">
                    <h1>Về chúng tôi</h1>
                    <ul class="list">
                        <li><a href="#">Câu chuyện thương hiệu</a></li>
                        <li><a href="#">Điều khoản dịch vụ</a></li>
                        <li><a href="#">Tin tức</a></li>
                        <li><a href="#">Tuyển dụng</a></li>
                        <li><a href="#">Hệ thống cửa hàng</a></li>
                    </ul>
                </div>
                <div class="col-2-col2">
                    <h1>Chính sách</h1>
                    <ul class="list">
                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                        <li><a href="#">Quy định và hình thức thanh toán</a></li>
                        <li><a href="#">Chính sách giao hàng</a></li>
                        <li><a href="#">Chính sách đổi trả</a></li>
                        <li><a href="#">Chính sách tích lũy điểm</a></li>
                        <li><a href="#">Chính sách bảo mật thông tin</a></li>
                    </ul>
                </div>
                <div class="col-2-col3">
                    <h1>Đăng ký nhận tin</h1>
                    <div class="input-form">
                        <input placeholder="Nhập địa chỉ email" type="email" name="" class="input-form-email"
                               required />
                        <input type="submit" name="" value="Đăng ký" class="input-form-btn" />
                    </div>
                    <div class="method-payment">
                        <h1>Phương thức thanh toán</h1>
                        <ul class="method-payment-icon">
                            <li class="visa"><a href="#">
                                <img src="static/images/visa.webp" alt="visa-icon" /></a>
                            </li>
                            <li class="mastercard"><a href="#">
                                <img src="static/images/mastercard.webp" alt="mastercard-icon" /></a>
                            </li>
                            <li class="jcb"><a href="#">
                                <img src="static/images/jcb.webp" alt="jcb-icon" /></a>
                            </li>
                            <li class="vnpay"><a href="#">
                                <img src="static/images/vnpay.webp" alt="vnpay-icon" /></a>
                            </li>
                            <li class="momo"><a href="#">
                                <img src="static/images/momo.webp" alt="momo-icon" /></a>
                            </li>
                        </ul>
                        <a href="http://online.gov.vn/(X(1)S(nw5rwqyqsrymwcqhe4uixuv3))/Home/WebDetails/69041?AspxAutoDetectCookieSupport=1"
                           title="logo Bộ công thương">
                            <img src="static/images/logo_bct.webp" alt="logo-bct" width="150px" height="57px" />
                        </a>
                        <div class="download-app">
                            <h1>Tải ngay App SammiShop</h1>
                            <div class="download-app-container">
                                <img src="static/images/logo-footer.webp" width="150px" height="150px"
                                     class="logo-app" />
                                <div class="logo-download">
                                    <a class="app-store-logo"
                                       href="https://apps.apple.com/vn/app/sammi-shop/id1515882916?l=vi">
                                        <img src="static/images/app_store.webp" width="170px" height="50px"
                                             alt="app store" />
                                    </a>
                                    <a class="google-play-logo"
                                       href="https://play.google.com/store/apps/details?id=vn.suplo.sammishop&pli=1">
                                        <img src="static/images/google_play.webp" width="170px" height="50px"
                                             alt="google play" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>