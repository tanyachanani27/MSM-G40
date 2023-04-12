<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>UPDATE CUSTOMERS</title>
        <style>
            body {
                background-color: #62CDFF;
                margin-top: 0;
                margin-left: 0;
                margin-right: 0;
            }

            .icons {
                position: relative;
                height: 50px;
                width: 50px;
                margin-left: 170px;
                float: left;
            }



            .options {
                margin-top: 0px;
                text-align: center;
                word-spacing: 20px;
                margin-right: 330px;
                float: left;
                padding-top: 50px;
                font-weight: bold;
                height: 300px;
            }

            .container2 {
                text-align: center;
                font-family: "Poppins", sans-serif;

            }

            .myform {
                margin-top: 100px;
                font-size: 25px;
                font-style: "Poppins", sans-serif;
                text-align: left;
                margin-left: 200px;
            }

            .labels {

                display: inline-block;
            }


            .logo {
                position: fixed;
                height: 50px;
                width: 50px;
                margin-top: 20px;
                margin-left: 70px;
                float: left;
            }

            .divone {
                height: 100px;
                background-color: black;
            }

            .btn-insert {
                -webkit-border-radius: 8;
                -moz-border-radius: 8;
                border-radius: 8px;
                font-family: Courier New;
                color: BLACK;
                font-size: 30px;
                background: WHITE;
                padding: 10px 20px 10px 20px;
                text-decoration: none;
                position: relative;
                margin-left: 50px;

            }


            .btn-insert:hover {
                background: #e6e8f2;
                text-decoration: none;
            }


            .btn-view {
                -webkit-border-radius: 4;
                -moz-border-radius: 4;
                border-radius: 4px;
                font-family: Courier New;
                color: BLACK;
                font-size: 30px;
                background: WHITe;
                padding: 10px 20px 10px 20px;
                text-decoration: none;
                margin-left: 120px;
                margin-right: 30px;
            }

            .btn-view:hover {
                background: #e8f1f7;
                text-decoration: none;
            }
            .btn-delete {
                -webkit-border-radius: 8;
                -moz-border-radius: 8;
                border-radius: 8px;
                font-family: Courier New;
                color: BLACK;
                font-size: 30px;
                background: WHITE;
                padding: 10px 20px 10px 20px;
                text-decoration: none;
                margin-left: 65px;


            }

            .btn-delete:hover {
                background: #e6e8f2;
                text-decoration: none;
            }


            .btn-update {
                -webkit-border-radius: 4;
                -moz-border-radius: 4;
                border-radius: 4px;
                font-family: Courier New;
                color: BLACK;
                font-size: 30px;
                background: white;
                padding: 10px 20px 10px 20px;
                text-decoration: none;
                margin-left: 20px;

            }

            .btn-update:hover {
                background: #e8f1f7;
                text-decoration: none;
            }
            .back{
                margin-top: 20px;
                line-height: 60px;
                margin-left: 180px;
                display: inline-block;
                text-decoration: none;
                background-color: #62CDFF;
                color: black;
                height: 60px;
                border-radius:10px;
                padding-left: 10px;
                padding-right: 10px;
            }
            .logout{
                margin-top: 20px;
                line-height: 60px;
                margin-left: 1050px;
                display: inline-block;
                text-decoration: none;
                background-color: #62CDFF;
                color: black;
                height: 60px;
                border-radius:5px;
                padding-left: 10px;
                padding-right: 10px;
                font-size: large;
                font-style:Courier New ;
            }
            .mail {
                margin-left: 10px;
                text-decoration: none;
                background-color: #62CDFF;
                color: black;
                border-radius: 10px;
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 20px;
                padding-bottom: 20px;


            }
        </style>
    </head>

    <body>
        <div class=divone>
            <img class="logo" src="letter-m.png" alt="logo">
            <a class=back href="index.html"> HOME</a>
            <a class ="mail" href="mail.jsp">Mail</a>
            <a class ="logout" href="admin.html">Log out</a>

        </div>
        <div class="container2">
            <div class="myform">
                <form method="post" action="">
                    <label>Enter Customer ID :</label>
                    <input type="text" name="txtCid" size="65" >
                    <br>
                    <br>
                    <label>Enter Customer Name :</label>
                    <input type="text" name="txtName" size="65" >
                    <br>
                    <br>
                    <label>Enter Phone Number : </label>
                    <input type="text" name="txtPNo" size="65" >
                    <br>
                    <br>
                    <label>Enter Email ID :</label>
                    <input type="email" name="txtMail" size="70" >
                    <br>
                    <br>
                    <label>Enter Frequent Medicine : </label>
                    <input type="text" name="txtFMed" size="65" >
                    <br>
                    <br>
                    <label>Enter quantity purchased : </label>
                    <input type="text" name="txtpmed" size="65" >
                    <br>
                    <br>
                    <div class="options">
                        <img class=" icons  " src="plus-sign.png" alt="">
                        <img class=" icons " src="file.png" alt="">
                        <img class=" icons  " src="remove.png" alt="">
                        <img class=" icons" src="loop.png" alt="">
                        <br>
                        <br>
                        <br>
                        <button type="submit" class="btn-insert" name = "btnInsert" >INSERT</button>
                        <button type="submit" class="btn-view" name = "btnView" >VIEW</button>
                        <button type="submit" class="btn-delete" name = "btnDelete" >DELETE</button>
                        <button type="submit" class="btn-update" name = "btnUpdate" >UPDATE</button>
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
<%

    try {

        if (request.getParameter("btnInsert") != null) {
            int c_id = Integer.parseInt(request.getParameter("txtCid"));
            String c_name = request.getParameter("txtName");
            String phoneNo = request.getParameter("txtPNo");
            String emailid = request.getParameter("txtMail");
            String f_med = request.getParameter("txtFMed");
            int quant_pur = Integer.parseInt(request.getParameter("txtpmed"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            String query = "insert into customer(c_id, c_name, phoneNo, emailid, f_med, quant_pur) values(" + c_id + ",'" + c_name + "','" + phoneNo + "','" + emailid + "','" + f_med + "'," + quant_pur + ")";
            Statement stmt = conn.createStatement();
            int x = stmt.executeUpdate(query);
            if (x > 0) {
                out.print("<script>alert('Record inserted successfully.')</script>");
            } else {
                out.print("<script>alert('Record cannot be inserted.')</script>");
            }
            String Q = "Update medicine set m_quantity = m_quantity - " + quant_pur + " where m_name = '" + f_med + "'";
            int y = stmt.executeUpdate(Q);
            if (y > 0) {
                out.print("<script>alert('record updated successfully.')</script>");
            } else {
                out.print("<script>alert('record cannot be updated.')</script>");
            }

        }

        if (request.getParameter("btnView") != null) {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            Statement stmt = conn.createStatement();
            String c_name = request.getParameter("txtName");
            ResultSet rs = stmt.executeQuery("select * from customer where c_name like'" + c_name + "%' ");
            out.print("</br>");
            out.print("</br>");

            out.print("<html><body><center>");
            out.print("<table bgcolor='grey'  width='60%' border='1'>");
            out.print("<tr>");
            out.print("<td>ID</td><td>NAME</td><td>PHONE NO</td><td>EMAIL ID</td><td>FREQUENT MEDICINE</td><td>PURCHASE DATE</td><td>QUANTITY PURCHASED</td>");
            out.print("</tr>");
            while (rs.next()) {

                out.print("<tr>");
                out.print("<td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getDate(6) + "</td><td>" + rs.getInt(7) + "</td>");
                out.print("</tr>");

            }
            out.print("</table");
            out.print("</center></body></html>");
        }
        if (request.getParameter("btnUpdate") != null) {
            int c_id = Integer.parseInt(request.getParameter("txtCid"));
            String f_med = request.getParameter("txtFMed");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            String query = "Update customer set f_med= '" + f_med + "' where c_id = '" + c_id + "' ";
            Statement stmt = conn.createStatement();
            int x = stmt.executeUpdate(query);
            if (x > 0) {
                out.print("<script>alert('Record updated successfully.')</script>");
            } else {
                out.print("<script>alert('Record cannot be updated.')</script>");
            }
        }

        if (request.getParameter("btnDelete") != null) {
            int c_id = Integer.parseInt(request.getParameter("txtCid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            String query = "Delete from customer where c_id = " + c_id + " ";
            Statement stmt = conn.createStatement();
            int x = stmt.executeUpdate(query);
            if (x > 0) {
                out.print("<script>alert('Record deleted successfully.')</script>");
            } else {
                out.print("<script>alert('Record cannot be deleted.')</script>");
            }
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>