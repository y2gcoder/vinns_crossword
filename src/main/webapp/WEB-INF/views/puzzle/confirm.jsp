<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
	<!-- left -->
	<div id="left">
		<!-- 제목 -->
		<h2 id="puzzle_title"></h2>
		<!-- 단어 설명 -->
		<div>
			<!-- 가로 -->
			<div id="puzzle_across">
				<!-- 제목 -->
				<div>Across →</div>
				<!-- hint -->
				<div id="hint_across"></div>
			</div>
			<!-- 세로 -->
			<div id="puzzle_down">
				<!-- 제목 -->
				<div>Down ↓</div>
				<!-- hint -->
				<div id="hint_down"></div>
			</div>
		</div>
	</div>
	<!-- right -->
	<div>
		<!-- 크로스워드 그리드 -->
		<div></div>

	</div>
	<!-- button 모음 -->
	<div>
		<button type="button" id="btnRegister">Register</button>
	</div>
<%@ include file="../common/footer.jsp" %>
<script>
$(function(){
	var check = JSON.parse('${check}');
	console.log(check);
	$("#puzzle_title").html(check.title);
	// hint들은 크로스워드 그리면서 해야겠다!
	var list = check.wordList;
	//
	$("#btnRegister").on("click", function(){
		$.ajax({
			type: "POST",
			url: "/reg/"+check.title,
			dataType: 'json',
			contentType: 'application/json',
			data: JSON.stringify(list)
		}).done(function(result){
			console.log(result);
			/* 
				result.seq : puzzle 번호
				result.title : puzzle 제목
				result.count : puzzle의 단어 개수
				result.wordList : puzzle의 단어 뭉치들
			*/
			
			if(result != null) {
				alert("퍼즐이 정상적으로 등록되었습니다.");
				location.href="/";
			}
			
			
		}).fail(function(xhr, status, errorThrown){
			console.log(errorThrown+" / "+status);
		});
		
	});
});
</script>
</html>