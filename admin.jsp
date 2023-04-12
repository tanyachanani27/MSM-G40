<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styles_admin.css">
        <link rel="icon" href="favicon (3).ico">
        <link rel="stylesheet" href="admin_choice.html">
        <link rel="icon" href="favicon (3).ico">
        <title>www.adminlogin.com</title>

        <style>
            .photo {
                position: fixed;
                height: 50px;
                width: 50px;
                margin-top: 20px;
                margin-left: 70px;
                float: left;
            }

            .divone {

                position: relative;
                background-color: black;
                width: 100%;
                height: 100px;
            }


            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: poppins;
            }

            body {
                background-color: #62CDFF;

            }


            div.container {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);

                display: flex;
                flex-direction: row;
                align-items: center;

                background-color: white;
                padding: 30px;
                box-shadow: 0 50px 50px -50px darkslategray;
            }

            div.container div.myform {
                width: 270px;
                margin-right: 30px;
            }

            div.container div.myform h2 {
                color: #1c1c1e;
                margin-bottom: 20px;
            }

            div.container div.myform input {
                border: none;
                outline: none;
                border-radius: 0;
                width: 100%;
                border-bottom: 2px solid #1c1c1e;
                margin-bottom: 25px;
                padding: 7px 0;
                font-size: 14px;
            }


            .btn-login {
                -webkit-border-radius: 11;
                -moz-border-radius: 11;
                border-radius: 20px;
                font-family: Courier New;
                color: black;
                font-size: 20px;
                background: #62CDFF;
                padding: 9px 40px 15px 40px;
                text-decoration: none;
            }


            .btn-login:hover {
                background: #AD7BE9;
                text-decoration: none;
            }


            div.container div.image img {
                width: 300px;
            }

            .back {
                margin-top: 20px;
                line-height: 60px;
                margin-left: 180px;
                display: inline-block;
                text-decoration: none;
                background-color: #62CDFF;
                color: black;
                height: 60px;
                border-radius: 10px;
                padding-left: 10px;
                padding-right: 10px;
            }
        </style>
    </head>

    <body>



        <div class="divone">
            <img class="photo" src="letter-m.png" alt="logo">
            <a class=back href="index.html"> HOME</a>

        </div>
        <div class="container">
            <div class="myform">
                <form onClick="return validate()">
                    <h2>ADMIN LOGIN</h2>
                    <input id=username type="text" placeholder="Enter Admin Username" required>
                    <input id=userpass type="password" placeholder="Enter Password" required>
                    <button class="btn-login" name="btn_signIn">Login</button>


                </form>


            </div>
            <div class="image">
                <img src="letter-m.png">
            </div>
        </div>
        <script>
            function validate() {
                var username = documnet.getElementById(username).value;
                var userpass = documnet.getElementById(userpass).value;
                if (username.trim() == "" || userpass.trim() == " ") {
                    alert("Please enter username and password");
                    return false;
                }
                else {
                    return true;
                }

            }
        </script>

    </body>

</html>


<%
    if (request.getParameter("btn_signIn") != null) {
        try {
            String uid = request.getParameter("txtuid");
            String pwd = request.getParameter("txtpwd");
            if (uid == " " || pwd == " ") {
                out.print("<script>alert('Please enter Username and Password')</script>");
            }
            String query = "select * from shopkeeper where loginid='" + uid + "' and pwd='" + pwd + "'";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            Boolean status = rs.next();
            if (status) {
                out.print("<script>alert('Login Successfully')</script>");
                response.sendRedirect("admin_choice.html");
            } else {
                out.print("<script>alert('Incorrect Username or Password')</script>");
            //response.sendRedirect("admin.jsp");

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

%>