<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<style>
	#crossword-container {
		display:flex;
		justify-content: space-around;
	}
	#lists {
		border: 1px solid black;
	}
	#lists table tr {
		display: flex;
		flex-direction: column;
	}
	
	
	#left-list {
		border-bottom: 1px solid black;
	}
</style>
	<div id="crossword-container">
		<!-- left -->
		<div id="left">
			<!-- 제목 -->
			<h2 id="puzzle_title"></h2>
			<div id="lists" class="lists">
				<table>
					<tr>
						<td width:"50%" id="left-list" valign="top" class="list-text">
							<center>
								<h3>Across</h3>
							</center>
						</td>
						<td width:"50%" id="right-list" valign="top" class="list-text">
							<center>
								<h3>Down</h3>
							</center>
						</td>
					</tr>
				</table>
			</div>
			
			<!-- 퍼즐 리스트 -->
			<div id="list_puzzle_wrapper">
				<table id="list_puzzle_table">
					<thead>
						<tr>
							<th>No</th>
							<th>Puzzle Title</th>
							<th>Words</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
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
	<!-- 정답 칸 -->
	<div id="answer-form">
		<div class="short-margin">
			<p id="position-and-clue"></p>
			<p>Answer : <input id="solution-answer" type="text" size="40"></p>
			<p id="answer-results" class="hidden"></p>
			<p>
				<input type="button" id="cancel-button" value="Cancel"> 
				<input type="button" id="answer-button" value="Answer">
				<input type="button" id="reveal-answer-button" value="Reveal Answer">
			</p>
		</div>
	</div>
	<!-- button 모음 -->
	<div>
		<button type="button" id="btnRegister">Register</button>
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