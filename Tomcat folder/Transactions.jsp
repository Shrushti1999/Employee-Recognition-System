<%@page import="java.sql.*, java.math.BigDecimal"%>
<%
String ssn = request.getParameter("ssn");

if (ssn != null && !ssn.trim().isEmpty()) {
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    try (Connection con = DriverManager.getConnection(url,"hkumar4","othypsoo");
         PreparedStatement pstmt = con.prepareStatement("SELECT trans_id, t_date, amount FROM Transactions WHERE ssn = ?")) {
        
        pstmt.setString(1, ssn);
        ResultSet rs = pstmt.executeQuery();
        String result = "";
        
        while (rs.next()) {
            int transId = rs.getInt("trans_id");
            Date transDate = rs.getDate("t_date");
            BigDecimal amount = rs.getBigDecimal("amount");
            
            result += "Transaction ID: " + transId + ", Date: " + transDate + ", Amount: " + amount + "<br/>";
        }
        
        out.print(result);
    } catch (SQLException e) {
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
    }
} else {
    out.println("No SSN provided.");
}
%>
