<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

회원번호 : <c:out value="${item.ifmmSeq}"/><br>
이름 : <c:out value="${item.ifmmName}"/><br>
아이디 : <c:out value="${item.ifmmId}"/>

<a href = "/infra/member/memberForm2?ifmmSeq=<c:out value="${item.ifmmSeq}"/>">수정하기</a>




