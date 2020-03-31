<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common/header.jsp" %>
	<!-- left -->
	<div id="left">
		<!-- 제목 -->
		<h2 id="puzzle_title"></h2>
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
		<!-- 정답 칸 -->
		<div>
			<label>answer : </label>
			<div>
				<input type="text" id="input_answer">
			</div>
		</div>
	</div>
	<!-- right -->
	<div id="right">
		<!-- 크로스워드 그리드 -->
		<div></div>
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
	<!-- button 모음 -->
	<div>
		<button type="button">Check answers</button>
		<button type="button" id="btnNewPuzzle">New puzzle</button>
	</div>
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
				html += "	<th>";
				html += this.seq;
				html += "	</th>";
				html += "	<td>";
				html += this.title;
				html += "	</td>";
				html += "	<td>";
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
			console.log(puzzle);
			$("#puzzle_title").html(puzzle.title);
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