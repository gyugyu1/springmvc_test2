<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<form id="formlist" name="" method="post" action="/infra/code/codeGroupList">
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" id="ifcgSeq" name="ifcgSeq">


	<select name="shIifcgDelNy" id="shIifcgDelNy">
		<option value="">::삭제여부::</option>
		<option value="1" <c:if test="${vo.shIifcgDelNy eq 1}">selected</c:if>>Y</option>
		<option value="0" <c:if test="${vo.shIifcgDelNy eq 0}">selected</c:if>>N</option>
	</select> || 회원이름 : <input type="text" name="shValue" id="shValue" value="${vo.shValue }"> ||
	 <select name="shOption" id="shOption">
		<option value="">선택</option>
		<option value="1" <c:if test = "${vo.shOption eq 1 }">selected</c:if>>한국어</option>
		<option value="2" <c:if test = "${vo.shOption eq 2 }">selected </c:if>>영문</option>
	</select> 
<!-- 	<input type="text" name="shValue"> --> 
	<input type="submit" name="search" id="btnSubmit"> <br>
	</form>
	
	
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
	
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">

<%-- 				<c:out value="${item.ifcgSeq}" />|<a href="/infra/code/codeGroupView?ifcgSeq=
				<c:out value="${item.ifcgSeq}"/>
				&shValue=<c:out value="${vo.shValue }"/>
				&shOption=<c:out value="${vo.shOption}"/>
				"><c:out value="${item.ifcgName}" /></a> 
				| <c:out value="${item.ifcgDelNy}" />
				| <c:out value="${item.ifcgNameEng}" />|<br> --%>


				<c:out value="${item.ifcgSeq}" />|
				<a href="javascript:goForm(<c:out value="${item.ifcgSeq}" />)">
				<c:out value="${item.ifcgName}" />
				</a> 
				| <c:out value="${item.ifcgDelNy}" />
				| <c:out value="${item.ifcgNameEng}" />|<br>
			</c:forEach>
			
			<a href="/infra/code/codeGroupForm?ifcgSeq=
				<c:out value="${item.ifcgSeq}"/>
				&shValue=<c:out value="${vo.shValue }"/>
				&shOption=<c:out value="${vo.shOption}"/>">등록</a>
				
				
				
			<nav aria-label="...">
				<ul class="pagination">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link" href="javascript:abc(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}"
						varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link"
									href="javascript:abc(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="javascript:abc(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link"
							href="javascript:abc(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
					</c:if>
				</ul>
			</nav>
		</c:otherwise>
	</c:choose>


<img src="/infra/resources/images/apple.png">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
$("#btnSubmit").on("click", function(){

		if(!checkNull($("#shValue"),$("#shValue").val(), "검색 값이 입력되지 않았어요" )) return false;
		if(!checkNull($("#shIifcgDelNy"),$("#shIifcgDelNy").val(), "삭제여부가 확인되지 않았어요" )) return false;
		if(!checkNull($("#shOption"),$("#shOption").val(), "검색 언어가 입력되지 않았어요" )) return false;
		
		});
		
		abc = function(seq) {
			alert(seq);
			$("#thisPage").val(seq);
			$("#formlist").submit();
		}
		
		goForm = function(seq){
			$("#ifcgSeq").val(seq);
			$("#formlist").attr("action","/infra/code/codeGroupView");
			$("#formlist").submit();
		}

</script>


