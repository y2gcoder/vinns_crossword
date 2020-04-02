<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common/header.jsp" %>
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
	
	#list_puzzle_table tbody {
		overflow: auto;
	}
</style>
	<div  class="container" id="crossword-container">
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
				<table class="table table-hover" id="list_puzzle_table">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">Puzzle Title</th>
							<th scope="col">Words</th>
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
		<!-- button 모음 -->
		<div>
			<button type="button" class="btn btn-outline-primary" id="btnNewPuzzle">New puzzle</button>
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
	
<script type="text/javascript">
	//god 모드 플래그
	var godmode = false;
</script>	
<%@ include file="./common/footer.jsp" %>
<script>
	$(function(){
		getPuzzleList();
	});
	// puzzle 리스트 불러오기
	function getPuzzleList(){
		$.ajax({
			type: "GET",
			url: "/puzzles",
			dataType: "json"
		}).done(function(puzzles){
			console.log(puzzles);
			var html = "";
			$(puzzles).each(function(){
				html += "<tr class='list_puzzle_one'>";
				html += "	<th scope='row' class='text-center'>";
				html += this.seq;
				html += "	</th>";
				html += "	<td class='text-center'>";
				html += this.title;
				html += "	</td>";
				html += "	<td class='text-center'>";
				html += this.count;
				html += "	</td>";
				html += "</tr>";
			});
			$("#list_puzzle_table tbody").html(html);
			
		}).fail(function(xhr, status, errorThrown){
			console.log(errorThrown+" / "+status);
		});
	}
	// 해당 십자말 퍼즐 세팅
	$("#list_puzzle_table tbody").on("click", ".list_puzzle_one", function(){
		var selectedPuzzle = $(this);
		var puzzle_seq = selectedPuzzle.children("th").html();
		$.ajax({
			type: "GET",
			url: "/puzzles/"+puzzle_seq,
			dataType: "json"
		}).done(function(puzzle){
			$("#puzzle_title").html(puzzle.title);
			// 여기서부터는 crossword 구현
			var puzzlewords = [];
			var wordList = puzzle.wordList;
			$(wordList).each(function(){
				var puzzleword = [];
				var name = this.name;
				var desc = this.description;
				puzzleword.push(name);
				puzzleword.push(desc);
				puzzlewords.push(puzzleword);
			});
			
			
			crosswordPuzzle(puzzlewords);
		}).fail(function(xhr, status, errorThrown){
			console.log(errorThrown+" / "+status);
		});
	});
	
	// 퍼즐 만들기
	$("#btnNewPuzzle").on("click",function(){
		location.href="/register";
	});
	
</script>
</html>