<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<link href="/infra/resources/common/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"> 


<form method="get" action="/infra/code/codeGroupInst">
	<input type="hidden" name ="shOption" value="<c:out value="${vo.shOption }"/>">
	<input type="hidden" name ="shValue" value="<c:out value="${vo.shValue }"/>">
	${vo.shValue }
	<input type="text" name="ifcgName" id="cgNameValue">
	<input type="text" name="ifcdName" id="cdNameValue">
	<input type="submit" value="제출" id="submit">
	
	<input type="text" id="abcDate" name="abcDate">
	
	
</form>
	<script src="/infra/resources/common/jquery-ui-1.13.1.custom/jquery-ui.js">
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>
	<script type="text/javascript">
		$("#submit").on("click",function(){
			if( !checkNull( $("#cgNameValue") , $("#cgNameValue").val(), "코드그룹 이름을 입력해주세요")) return false;			
		
		});
		
		
		$(document).ready(function(){
			 $("#abcDate").datepicker();
		}); 

		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
		});
	</script>
	

		