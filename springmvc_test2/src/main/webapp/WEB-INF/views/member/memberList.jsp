<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<form action ="/infra/member/memberList" method="get" name="" id="">
		<select name="seOp">
			<option value="옵션선택"></option>
			<option value="1">이름</option>
			<option value="2">전화번호</option>
		</select>
		
		<input type="text" name ="seValue">
		<input type="submit" name="search">
<br>
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>

	
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<a href = "/infra/member/memberView?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">
		<c:out value="${item.ifmmSeq}"/></a> //
		<c:out value="${item.ifmmId}"/> //
		<c:out value="${item.ifmmName}"/> //
		<c:out value="${item.ifmpNumber}"/> <br>
		
		
		</c:forEach>
		
		<a href=/infra/member/memberForm>멤버등록</a>

	</c:otherwise>
</c:choose>	
</form>