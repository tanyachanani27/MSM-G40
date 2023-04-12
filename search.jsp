<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="favicon (3).ico">
        <title>www.searchmed.com</title>


        <STYLE>
            * {
                margin: 0;
                padding: 0;
                font-family: "Poppins", sans-serif;

                box-sizing: border-box;

            }

            .container {
                width: 100%;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            form {
                background: #fff;
                width: 1000px;
                height: 80px;
                display: flex;
                text-align: left;
            }

            form input {
                flex: 1;
                border: none;
                outline: none;
                font-size: large;
            }

            form button {
                background: tomato;
                padding: 10px 50px;
                border: none;
                outline: none;
                color: #fff;
                letter-spacing: 1px;
                cursor: pointer;
                font-size: large;
            }

            .divone {
                height: 100px;
                background-color: black;

            }

            .photo3 {
                position: fixed;
                height: 50px;
                width: 50px;
                margin-top: 20px;
                margin-left: 70px;
                float: left;
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

            body {
                background-color: #62CDFF;
            }
        </STYLE>
    </head>

    <body>
        <div class=divone>
            <img class="photo3" src="letter-m.png" alt="logo">
            <a class=back href="index.html"> HOME</a>
        </div>
        <div class="container">
            <form>
                <input type="text" name="Medicines" placeholder="  Search... ">
                <button type="submit" name="btnSearch"> Search</button>
            </form>
        </div>
    </body>

</html>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "");
        Statement st = conn.createStatement();

        try {
            if (request.getParameter("btnSearch") != null) {
                String m_name = request.getParameter("Medicines");

                String query = "select * from medicine where m_name= '" + m_name + "' ";
                ResultSet rs = st.executeQuery(query);
                //out.print("<html><body>");
                out.print("<table align='center' colour='purple' width='700px' cellspacing='2' cellpadding='4' border='1'>");
                out.print("<tr><td>m_id</td><td>m_name</td><td>m_description</td><td>availability</td><td>m_quantity</td><td>price</td></tr>");

                while (rs.next()) {
                    out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getInt(5) + "</td><td>" + rs.getInt(6) + "</td></tr>");
                }
                out.print("</table>");
                //out.print("</body></html>");
            }

            if (request.getParameter("btnmd") != null) {
                String m_name = request.getParameter("search");

                String query = "select * from medicines where m_name like '" + m_name + "%' ";
                ResultSet rs = st.executeQuery(query);
                out.print("<html><body>");
                out.print("<table colour = 'white' cellspacing='2' cellpadding='4' border='1'>");
                out.print("<tr><td>m_id</td><td>m_name</td><td>m_desc</td><td>availability</td><td>m_quantity</td><td>price</td></tr>");
                while (rs.next()) {
                    out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getInt(5) + "</td><td>" + rs.getInt(6) + "</td></tr>");
                }
                out.print("</table>");
                out.print("</body></html>");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>