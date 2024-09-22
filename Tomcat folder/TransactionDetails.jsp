<%@page import="java.sql.*, java.math.BigDecimal"%>
<%
String txnId = request.getParameter("txnid");

if (txnId != null && !txnId.trim().isEmpty()) {
    DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
    String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
    try (Connection con = DriverManager.getConnection(url,"hkumar4","othypsoo")) {
        ///////-------- Getting transaction details --------\\\\\\
        String query = "SELECT t_date, amount FROM Transactions WHERE trans_id = ?";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, txnId);
            ResultSet rs = pstmt.executeQuery();
            String result = "";
            if (rs.next()) {
                Date transDate = rs.getDate("t_date");
                BigDecimal amount = rs.getBigDecimal("amount");
                result += "Transaction Date: " + transDate + ", Amount: " + amount + "<br/>";
            }
            
            ///////-------- Getting the product details --------\\\\\\
            query = "SELECT p.prod_name, p.p_price, tp.quantity FROM Txns_Prods tp "
                  + "JOIN Products p ON tp.prod_id = p.prod_id WHERE tp.trans_id = ?";
            try (PreparedStatement pstmtProd = con.prepareStatement(query)) {
                pstmtProd.setString(1, txnId);
                ResultSet rsProd = pstmtProd.executeQuery();
                
                while (rsProd.next()) {
                    String prodName = rsProd.getString("prod_name");
                    BigDecimal price = rsProd.getBigDecimal("p_price");
                    int quantity = rsProd.getInt("quantity");
                    
                    result += "Product Name: " + prodName + ", Price: " + price + ", Quantity: " + quantity + "<br/>";
                }
            }
            
            out.print(result);
        }
    } catch (SQLException e) {
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
    }
} else {
    out.println("No Transaction ID provided.");
}
%>
