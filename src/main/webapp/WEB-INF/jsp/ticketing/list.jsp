<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${searchDate }</h2>
<c:forEach items="${movieList}" var="item" varStatus="status">
<table>
	<tbody>
		<tr>
			<c:choose>
				<c:when test="${fn:contains(item,'상영중')}">
					<th>${item }</th>
				</c:when>
				<c:otherwise>
					<td>${item }</td>
				</c:otherwise>
			</c:choose>
		</tr>
	</tbody>
</table>
</c:forEach>
</body>
</html>