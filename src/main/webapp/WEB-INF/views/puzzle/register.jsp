<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
	<!-- 제목 -->
	<h1>Make a new puzzle</h1>
	<!-- 전체 폼으로 감싸기 -->
	<form id="formReg" action="/confirm" method="post">
		<!-- 제목 입력 칸 -->
		<div>
			<label for="title" >Title</label>
			<div>
				<input type="text" class="" name="title" id="title" placeholder="필수">
			</div>
		</div>
		<!-- 단어들 입력칸 -->
		<div>
			<!-- 각 열 제목 -->
			<div>
				<div></div>
				<div>
					Word
				</div>
				<div>
					Hint
				</div>
			</div>
			<!-- 단어 1 -->
			<div>
				<div><span>1. </span></div>
				<div>
					<input type="text" class="" name="wordList[0].name" id="name1" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[0].description" id="desc1" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 2 -->
			<div>
				<div><span>2. </span></div>
				<div>
					<input type="text" class="" name="wordList[1].name" id="name2" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[1].description" id="desc2" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 3 -->
			<div>
				<div><span>3. </span></div>
				<div>
					<input type="text" class="" name="wordList[2].name" id="name3" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[2].description" id="desc3" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 4 -->
			<div>
				<div><span>4. </span></div>
				<div>
					<input type="text" class="" name="wordList[3].name" id="name4" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[3].description" id="desc4" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 5 -->
			<div>
				<div><span>5. </span></div>
				<div>
					<input type="text" class="" name="wordList[4].name" id="name5" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[4].description" id="desc5" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 6 -->
			<div>
				<div><span>6. </span></div>
				<div>
					<input type="text" class="" name="wordList[5].name" id="name6" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[5].description" id="desc6" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 7 -->
			<div>
				<div><span>7. </span></div>
				<div>
					<input type="text" class="" name="wordList[6].name" id="name7" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[6].description" id="desc7" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 8 -->
			<div>
				<div><span>8. </span></div>
				<div>
					<input type="text" class="" name="wordList[7].name" id="name8" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[7].description" id="desc8" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 9 -->
			<div>
				<div><span>9. </span></div>
				<div>
					<input type="text" class="" name="wordList[8].name" id="name9" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[8].description" id="desc9" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 10 -->
			<div>
				<div><span>10. </span></div>
				<div>
					<input type="text" class="" name="wordList[9].name" id="name10" placeholder="영문 3~9자">
				</div>
				<div>
					<input type="text" class="" name="wordList[9].description" id="desc10" placeholder="50자 내 입력">
				</div>
			</div>
		</div>
		<!-- button 모음 -->
		<div>
			<button type="button" id="btnMain">Main</button>
			<button type="button" id="btnConfirmPage">Make a puzzle</button>
		</div>
	</form>
	
	
<%@ include file="../common/footer.jsp" %>
<script>
	$(function(){
		$("#btnConfirmPage").on("click", function(){
			// 유효성 검사부터 해야겠다.
			var title = $("#title").val();
			if(title == ""){
				alert("퍼즐의 제목을 입력해주세요!");
				$("#title").focus();
				return;
			}else if(title.length > 30){
				alert("제목은 30자 이하로 입력해주세요!");
				$("#title").val("");
				$("#title").focus();
				return;
			}
			
			var puzzlewords = [];
			for(var i=0;i<10;i++){
				var puzzleword = [];
				var name = $("#name"+(i+1)).val(); 
				var desc = $("#desc"+(i+1)).val();
				if(name != "" && desc != "") {
					if(name.length >2 && name.length < 10){
						puzzleword.push(name);
					}else {
						alert("단어의 길이는 3~9자입니다.");
						$("#name"+(i+1)).focus();
						return;
					}
					
					if(desc.length > 50) {
						alert("힌트는 50자 이내로 작성해주세요!")
						$("#desc"+(i+1)).focus();
						return;
					}else {
						puzzleword.push(desc);
					}
					
				}
				if(puzzleword.length > 0){
					puzzlewords.push(puzzleword);
				}
				
			}
			if(puzzlewords.length < 5) {
				alert("퍼즐의 입력단어는 최소 5개입니다.");
				$("#name5").focus();
				return;
			}
			
			// crossword 확인!
			
			
			// 가능하면 submit
			$("#formReg").submit();
		});
		$("#btnMain").on("click", function(){
			location.href="/";
		});
	});
</script>
</html>