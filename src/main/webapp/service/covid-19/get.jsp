<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%
	// init mapping xml/json format
	ObjectMapper objectMapper = new ObjectMapper();

	Map map = new HashMap();
	map.put("firstname", "Yodsarun");
	map.put("lastname", "Pongda");

	String json = objectMapper.writeValueAsString(map);
%>
<%out.clear();%>
<%=json%>
