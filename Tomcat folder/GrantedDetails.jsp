<%@page import="java.sql.*"%>
<%
String awardid = request.getParameter("awardid");
String ssn = request.getParameter("ssn");

if (awardid != null && ssn != null && !awardid.trim().isEmpty() && !ssn.trim().isEmpty()) {
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    try (Connection con = DriverManager.getConnection(url,"hkumar4","othypsoo")) {
        String query = "SELECT g.award_date, ac.center_name FROM GRANTED g " +
                       "JOIN Award_Centers ac ON g.center_id = ac.center_id " +
                       "WHERE g.award_id = ? AND g.ssn = ?";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, awardid);
            pstmt.setString(2, ssn);
            ResultSet rs = pstmt.executeQuery();
            StringBuilder result = new StringBuilder();
            while (rs.next()) {
                Date awardDate = rs.getDate("award_date");
                String centerName = rs.getString("center_name");
                result.append("Award Date: ").append(awardDate);
                result.append(", Center Name: ").append(centerName).append("<br/>");
            }
            out.print(result.toString());
        }
    } catch (SQLException e) {
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
    }
} else {
    out.println("Award ID or SSN not provided.");
}
%>
