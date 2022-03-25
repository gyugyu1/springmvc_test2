<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:out value="${item.ifcgSeq}"/>|<c:out value="${item.ifcgName}"/>|<c:out value="${item.ifcgDelNy}"/>

<a href="/infra/code/codeGroupForm2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>
													&shValue=<c:out value="${vo.shValue }"/>
													&shOption=<c:out value="${vo.shOption}"/>
												">수정</a>
<a href="/infra/code/codeGroupList?				
				shValue=<c:out value="${vo.shValue }"/>
				&shOption=<c:out value="${vo.shOption}"/>
				">목록</a>
				

				<a href="/infra/code/codeGroupDele?ifcgSeq=<c:out value="${item.ifcgSeq}"/>
				&shValue=<c:out value="${vo.shValue }"/>
				&shOption=<c:out value="${vo.shOption}"/>
				" id="btn">삭제(진짜)</a>
				<a href="/infra/code/codeGroupNele?ifcgSeq=<c:out value="${item.ifcgSeq}"/>
				&shValue=<c:out value="${vo.shValue }"/>
				&shOption=<c:out value="${vo.shOption}"/>
				" id="btnf">삭제(가짜)</a>
				
				
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$("#btnf").on("click", function(){
	var answer = confirm ('삭제 하시겠습니까?');
	
	if(answer){
		
	}else{
		return false;
	}
	
	
})


		

</script>
				