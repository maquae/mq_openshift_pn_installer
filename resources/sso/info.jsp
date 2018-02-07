<%@ page import="java.util.*" %>
<html>
       <body bgcolor="black" style="background-color:black; color:white;">
            <h1>HTTP Request Headers Received</h1>
            <table border="1" cellpadding="4" cellspacing="0">
            <%
                Enumeration eNames = request.getHeaderNames();
                while (eNames.hasMoreElements()) 
                {
                String name = (String) eNames.nextElement();
                String value = normalize(request.getHeader(name));
             %>
            <tr><td><%= name %></td><td><%= value %></td></tr>
            <%
                }
   String username = request.getRemoteUser();
            %>
   
   <tr><td>User</td><td><%= username %></td></tr> 
            </table>
        </body>
 </html>
            <%!
                 private String normalize(String value)
                {
                  StringBuffer sb = new StringBuffer();
                  for (int i = 0; i < value.length(); i++) {
                  char c = value.charAt(i);
                  sb.append(c);
                  if (c == ';')
                  sb.append("<br>");
                 }
                 return sb.toString();
                 }
%>