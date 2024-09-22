<%@page import="java.sql.*, java.math.BigDecimal"%>
<%
String ssn = request.getParameter("ssn");

if (ssn != null && !ssn.trim().isEmpty()) {
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    try (Connection con = DriverManager.getConnection(url, "hkumar4", "othypsoo");
         PreparedStatement pstmt = con.prepareStatement(
            "SELECT e.name, SUM(s.total_sales) as total_sales " +
            "FROM Employees e " +
            "JOIN Emp_Sales s ON e.ssn = s.ssn " +
            "WHERE e.ssn = ? " +
            "GROUP BY e.name")) {
        
        pstmt.setString(1, ssn);
        try (ResultSet rs = pstmt.executeQuery()) {
            String result = "";
            while (rs.next()) {
                String name = rs.getString("name");
                BigDecimal totalSales = rs.getBigDecimal("total_sales");
                result += "Name: " + name + ", Total Sales: " + totalSales + "<br/>";
            }
            out.print(result.isEmpty() ? "No results found." : result);
        }
    } catch (SQLException e) {
        out.print("SQL Exception: " + e.getMessage());
    }
} else {
    out.print("Please provide a valid SSN.");
}
%>
