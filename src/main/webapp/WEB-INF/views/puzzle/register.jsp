<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<div class="container">
	<!-- 제목 -->
	<h2 class="mt-3 mb-3">Make a new puzzle</h2>
	<!-- 전체 폼으로 감싸기 -->
	<form id="formReg" action="/confirm" method="post">
		<!-- 제목 입력 칸 -->
		<div class="form-group row">
			<label for="title" class="col-sm-1 col-form-label">Title</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" name="title" id="title" placeholder="필수">
			</div>
		</div>
		<!-- 단어들 입력칸 -->
		<div>
			<!-- 각 열 제목 -->
			<div class="row">
				<div class="col-sm-1"></div>
				<div  class="col-sm-3">
					Word
				</div>
				<div  class="col-sm-8">
					Hint
				</div>
			</div>
			<!-- 단어 1 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>1. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[0].name" id="name1" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[0].description" id="desc1" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 2 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>2. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[1].name" id="name2" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[1].description" id="desc2" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 3 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>3. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[2].name" id="name3" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[2].description" id="desc3" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 4 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>4. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[3].name" id="name4" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[3].description" id="desc4" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 5 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>5. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[4].name" id="name5" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[4].description" id="desc5" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 6 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>6. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[5].name" id="name6" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[5].description" id="desc6" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 7 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>7. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[6].name" id="name7" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[6].description" id="desc7" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 8 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>8. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[7].name" id="name8" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[7].description" id="desc8" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 9 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>9. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[8].name" id="name9" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[8].description" id="desc9" placeholder="50자 내 입력">
				</div>
			</div>
			<!-- 단어 10 -->
			<div class="form-group row">
				<div class="col-sm-1"><span>10. </span></div>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="wordList[9].name" id="name10" placeholder="영문 3~9자">
				</div>
				<div class="col-sm-8">
					<input type="text" class="form-control" name="wordList[9].description" id="desc10" placeholder="50자 내 입력">
				</div>
			</div>
		</div>
		<!-- button 모음 -->
		<div class="btn-toolbar justify-content-end">
			<div class="mr-2 mb-3">
				<button type="button" class="btn btn-outline-warning" id="btnMain">Main</button>
			</div>
			<div class=" mb-3">
				<button type="button" class="btn btn-outline-primary" id="btnConfirmPage">Make a puzzle</button>
			</div>
		</div>
	</form>
</div>
	
	
	
<%@ include file="../common/footer.jsp" %>
<script>
	$(function(){
		$("#btnConfirmPage").on("click", function(){
			// 유효성 검사부터 해야겠다.
			var title = $("#title").val();
			if(title == ""){
				openPopup("퍼즐의 제목을 입력해주세요!");
				$("#title").focus();
				return;
			}else if(title.length > 30){
				openPopup("제목은 30자 이하로 입력해주세요!");
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
						openPopup("단어의 길이는 3~9자입니다.");
						$("#name"+(i+1)).focus();
						return;
					}
					
					if(desc.length > 50) {
						openPopup("힌트는 50자 이내로 작성해주세요!")
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
				openPopup("퍼즐의 입력단어는 최소 5개입니다.");
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