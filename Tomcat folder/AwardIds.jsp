<%@page import="java.sql.*"%>
<%@page import="java.math.BigDecimal"%>
<%
String ssn = request.getParameter("ssn");

if (ssn != null && !ssn.trim().isEmpty()) {
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    try (Connection con = DriverManager.getConnection(url,"hkumar4","othypsoo")) {
        String query = "SELECT DISTINCT award_id FROM GRANTED WHERE ssn = ?";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, ssn);
            ResultSet rs = pstmt.executeQuery();
            StringBuilder result = new StringBuilder();
            while (rs.next()) {
                BigDecimal awardId = rs.getBigDecimal("award_id");
                result.append("Award ID: ").append(awardId).append("<br/>");
            }
            out.print(result.toString());
        }
    } catch (SQLException e) {
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
    }
} else {
    out.println("No SSN provided.");
}
%>
