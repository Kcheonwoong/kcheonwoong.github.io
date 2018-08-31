<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ajaxExPjt.xhttp.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="ct" class="ajaxExPjt.xhttp.CustomerBean"/>
<%-- <jsp:useBean id="customer" class="ajaxExPjt.javacript.Customer"/> --%>
<jsp:useBean id="infos" scope="request" class="java.util.HashMap" />

<%
	String id = request.getParameter("q");
	infos = ct.getDB(id);
	Set key = infos.keySet();

	out.println("<table>");
	for(Iterator iter = key.iterator();iter.hasNext();){
        String keyName = (String) iter.next();
        String valueName = (String) infos.get(keyName);

		out.println("<tr><td><b>"+ keyName +"</b></td>");
		out.println("<td>"+ valueName +"</td></tr>");
	}
	out.println("</table>");
%>