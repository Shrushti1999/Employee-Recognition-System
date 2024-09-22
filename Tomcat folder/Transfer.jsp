<%@page import="java.sql.*"%>
<%@page import="java.math.BigDecimal"%>
<%

String srcSsn = request.getParameter("ssn1");
String destSsn = request.getParameter("ssn2");
BigDecimal amount = new BigDecimal(request.getParameter("amount"));

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String result = "";

try {
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    con = DriverManager.getConnection(url, "hkumar4", "othypsoo");

    /////------ SQL SELECT statement to check if a transfer exists -------\\\\\\\\
    String sql = "SELECT * FROM Transfer WHERE from_ssn = ? AND to_ssn = ? AND amount = ?";
    pstmt = con.prepareStatement(sql);

    ////////------- Set parameters for the prepared statement ------\\\\\\
    pstmt.setString(1, srcSsn);
    pstmt.setString(2, destSsn);
    pstmt.setBigDecimal(3, amount);

    ///////------- Executing the query-------\\\\\\\
    rs = pstmt.executeQuery();

    // Check if the transfer exists
    if (rs.next()) {
        result = "Transfer completed";
    } else {
        result = "No such transfer found";
    }
} catch(Exception e) {
    ///////----- Handling the exceptions -----\\\\\
    result = "Error: " + e.getMessage();
} finally {
    ///////------ Close resources --------\\\\\
    if (rs != null) try { rs.close(); } catch(SQLException e) {}
    if (pstmt != null) try { pstmt.close(); } catch(SQLException e) {}
    if (con != null) try { con.close(); } catch(SQLException e) {}
}


out.print(result);
%>
