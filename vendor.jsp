<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="favicon (3).ico">
        <title>www.updatvendor.com</title>
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

            .container3 {
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
                margin-left:90px;

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
                margin-left: 80px;

            }

            .btn-update:hover {
                background: #e8f1f7;
                text-decoration: none;
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
                margin-left: 1180px;
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
        </style>
    </head>

    <body>
        <div class=divone>
            <img class="logo" src="letter-m.png" alt="logo">
            <a class=back href="index.html"> HOME</a>
            <a class ="logout" href="admin.html">Log out</a>
        </div>

        <div class="container3">
            <div class="myform">
                <form>
                    <label>Enter Vendor ID      :</label>
                    <input type="text" name="txtVid" size="32">
                    <br>
                    <br>
                    <label>Enter Vendor Name      :</label>
                    <input type="text" name="txtName" size="32">
                    <br>
                    <br>
                    <label>Enter Phone Number : </label>
                    <input type="text" name="txtPNo" size="30">
                    <br>
                    <br>
                    <label>Enter Medicine Quantity : </label>
                    <input type="text" name="txtQty" size="25">
                    <br>
                    <br>
                    <label>Enter Medicine Supplied : </label>
                    <input type="text" name="txtMid" size="25">

                    <div class="options">
                        <img class=" icons  " src="plus-sign.png" alt="">
                        <img class=" icons " src="file.png" alt="">
                        <img class=" icons  " src="remove.png" alt="">
                        <img class=" icons" src="loop.png" alt="">
                        <br>
                        <br>
                        <br>
                        <button type="submit" class="btn-insert" name = "btnInsert" >ADD</button>
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
            String v_id = (request.getParameter("txtVid"));
            String v_name = request.getParameter("txtName");
            String v_phone = (request.getParameter("txtPNo"));
            int m_quantity = Integer.parseInt(request.getParameter("txtQty"));
            String m_supplied = (request.getParameter("txtMid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            PreparedStatement pst = conn.prepareStatement("insert into vendor(v_id,v_name,v_phone,m_quantity,m_supplied)values(?,?,?,?,?)");
            pst.setString(1, v_id);
            pst.setString(2, v_name);
            pst.setString(3, v_phone);
            pst.setInt(4, m_quantity);
            pst.setString(5, m_supplied);
            int x = pst.executeUpdate();
            if (x > 0) {
                out.print("<script>alert('record inserted successfully.')</script>");
            } else {
                out.print("<script>alert('record cannot be inserted.')</script>");
            }
        }

        if (request.getParameter("btnView") != null) {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            Statement stmt = conn.createStatement();
            String v_name = request.getParameter("txtName");
            ResultSet rs = stmt.executeQuery("select * from vendor where v_name like '" + v_name + "%'");
            out.print("</br>");
            out.print("</br>");

            out.print("<html><body><center>");
            out.print("<table bgcolor='powder blue'  width='60%' border='1'>");
            out.print("<tr>");
            out.print("<td>ID</td><td>NAME</td><td>PHONE NO</td><td>MEDICINE QUANTITY</td><td>MEDICINE SUPPLIED</td>");
            out.print("</tr>");
            while (rs.next()) {

                out.print("<tr>");
                out.print("<td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getInt(4) + "</td>" + "<td>" + rs.getString(5) + "</td>");
                out.print("</tr>");

            }
            out.print("</table");
            out.print("</center></body></html>");
        }
        if (request.getParameter("btnUpdate") != null) {
            String v_id = (request.getParameter("txtVid"));
            String m_supplied = (request.getParameter("txtMid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            String query = "Update vendor set m_supplied= '" + m_supplied + "' where v_id = '" + v_id + "'";
            Statement stmt = conn.createStatement();
            int x = stmt.executeUpdate(query);
            if (x > 0) {
                out.print("<script>alert('record updated successfully.')</script>");
            } else {
                out.print("<script>alert('record cannot be updated.')</script>");
            }
        }

        if (request.getParameter("btnDelete") != null) {
            String v_id = (request.getParameter("txtVid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
            String query = "Delete from vendor where v_id = '" + v_id + "' ";
            Statement stmt = conn.createStatement();
            int x = stmt.executeUpdate(query);
            if (x > 0) {
                out.print("<script>alert('record deleted successfully.')</script>");
            } else {
                out.print("<script>alert('record cannot be deleted.')</script>");
            }
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>

