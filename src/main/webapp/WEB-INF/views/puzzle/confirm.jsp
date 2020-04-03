<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<style>
	#crossword-container {
		display:flex;
		justify-content: space-between;
	}
	#lists {
		border: 1px solid black;
		width: 90%;
		margin: auto;
	}
	
	#lists table {
		width: 100%;

	}
	
	#lists table tbody {
		width: 100%;
	}
	
	#lists table tbody tr {
		width: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
	}
	#lists td {
		width: 90%;
	}
	
	
	#left-list {
		border-bottom: 1px solid black;
	}
	
	#list_puzzle_table {
		width: 90%;
		margin: auto;
	}
	
	#list_puzzle_table tbody {
		overflow: auto;
	}
	
	.divBtns {
		display : flex;
		justify-content: flex-start;
	}
	
	#left {
		width:50vw;
	}
	#left h2 {
		width: 90%;
		margin: 10px auto;
	}
	#right {
		width:50vw;
		display:flex;
		justify-content: center;
		align-items: center;
	}
</style>
	<div  class="container" id="crossword-container">
		<!-- left -->
		<div id="left">
			<!-- 제목 -->
			<h2 id="puzzle_title">퍼즐 제목</h2>
			<div id="lists" class="lists">
				<table>
					<tr>
						<td id="left-list" valign="top" class="list-text">
							<center>
								<h3>Across</h3>
							</center>
							<ul>
								<li class="word-clue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
							</ul>
						</td>
						<td  id="right-list" valign="top" class="list-text">
							<center>
								<h3>Down</h3>
							</center>
							<ul>
								<li class="word-clue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
								<li class="word-clue">&nbsp;</li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			
			
		</div>
		<!-- right -->
		<div id="right">
			<!-- 크로스워드 그리드 -->
			<div id="root" class="root">
				<!-- 더미(공간 확보를 위해) -->
				<table class="puzzle" border="1" cellpadding="0" cellspacing="0">
					<tbody>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
						<tr class="letter-row">
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
							<td class="relative-position letter-cell blank-cell">
								<span class="letter-text"></span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
	<!-- button 모음 -->
	<div class="container">
		<div class="divBtns">
			<button type="button" class="btn btn-outline-success m-4" id="btnRegister">Register</button>
		</div>
	</div>
	<!-- 정답 칸 -->
	<div class="card" id="answer-form">
		<div class="short-margin">
			<div id="position-and-clue" class="form-group row"></div>
			<div class="form-group row">
				<p class="col-sm-2 align-bottom align-text-bottom" style="margin: auto;">Answer : </p>
				<input id="solution-answer" class="form-control col-sm-10" type="text">
			</div>
			<div class="form-group row">
				<p id="answer-results" class="hidden"></p>
			</div>
			<div class="form-group row groupCenter">
				<input type="button" class="mr-2 btn btn-dark" id="cancel-button" value="Cancel"> 
				<input type="button" class="mr-2 btn btn-success" id="answer-button" value="Answer">
				<input type="button" class="btn btn-danger" id="reveal-answer-button" value="Reveal Answer">
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	//god 모드 플래그
	var godmode = true;
</script>	
<%@ include file="../common/footer.jsp" %>
<script>
$(function(){
	
	var check = JSON.parse('${check}');
	console.log(check);
	$("#puzzle_title").html(check.title);
	// hint들은 크로스워드 그리면서 해야겠다!
	var wordList = check.wordList;
	// list[].name = 단어
	// list[].description = hint
	var puzzlewords = [];
	
	$(wordList).each(function(){
		var puzzleword = [];
		var name = this.name;
		var desc = this.description;
		puzzleword.push(name);
		puzzleword.push(desc);
		puzzlewords.push(puzzleword);
	});
	
	crosswordPuzzle(puzzlewords);
	
	
	$("#btnRegister").on("click", function(){
		$.ajax({
			type: "POST",
			url: "/reg/"+check.title,
			dataType: 'json',
			contentType: 'application/json',
			data: JSON.stringify(wordList)
		}).done(function(result){
			console.log(result);
			/* 
				result.seq : puzzle 번호
				result.title : puzzle 제목
				result.count : puzzle의 단어 개수
				result.wordList : puzzle의 단어 뭉치들
			*/
			
			if(result != null) {
				openPopup("퍼즐이 정상적으로 등록되었습니다.");
				location.href="/";
			}
			
			
		}).fail(function(xhr, status, errorThrown){
			console.log(errorThrown+" / "+status);
		});
		
	});
});
</script>
</html>