<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form action="/codeGroup/codeGroupInst">
	codeGourpFrom<br>
	<input type="text" name="name"><br>
	<input type="text" name="useNy"><br>
	<input type="text" name="delNy"><br>
	<button type="submit">선택</button>
</form>
