<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	session.removeAttribute("userid");
	session.removeAttribute("loginname");
	session.removeAttribute("username");
	response.sendRedirect("/LifeService/jsp/front/index.jsp");
 %>
