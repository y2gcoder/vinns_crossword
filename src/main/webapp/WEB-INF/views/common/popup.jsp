<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.modalInfo {
	  display: none; /* Hidden by default */
	  position: fixed; /* Stay in place */
	  z-index: 1; /* Sit on top */
	  margin: 0 auto;
	  left: 0;
	  top: 0;
	  width: 100%; /* Full width */
	  height: 100%; /* Full height */
	  overflow: auto; /* Enable scroll if needed */
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	/* Modal Content/Box */
	.modalInfo-content {
	  position: relative;
	  background-color: #fefefe;
	  margin: auto;
	  padding: 0;
	  border: 1px solid #888;
	  width: 50%;
	  height : 40%;
	  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
	  animation-name: animatetop;
	  animation-duration: 0.4s;
	}
	
	/* Add Animation */
	@keyframes animatetop {
	  from {top: -300px; opacity: 0}
	  to {top: 0; opacity: 1}
	}
	
	/* Modal Header */
	.modalInfo-header {
	  padding: 2px 16px;
	  background-color: #5cb85c;
	  color: white;
	}
	
	/* Modal Body */
	.modalInfo-body {
		height: 73.1%;
		display: flex;
		justify-content: center;
		align-items: center;
		
	}
	
	/* The Close Button */
	.modalInfo-close {
	  color: white;
	  float: right;
	  font-size: 28px;
	  font-weight: bold;
	}
	
	.modalInfo-close:hover,
	.modalInfo-close:focus {
	  color: black;
	  text-decoration: none;
	  cursor: pointer;
	}
	
	.popup-center {
		display: flex;
		justify-content: center;
		align-items: center;
		
	}
</style>
<div id="myModal" class="modalInfo">
	<div class="modalInfo-content">
		<div class="modalInfo-header">
			<span class="modalInfo-close">&times;</span>
			<h3>Information</h3>
		</div>
		<div class="modalInfo-body">
			<p id="infoMessage"></p>
		</div>
		<div class="modalInfo-result">
		</div>
	</div>
</div>
<script>
	var modal = document.getElementById("myModal");
	var span = document.getElementsByClassName("modalInfo-close")[0];
	
	function openPopup(msg) {
		var info = document.getElementById("infoMessage");
		info.innerText=msg;
		modal.classList.add("popup-center");
		
	}
	
	
	function viewResult(msg) {
		var info = document.getElementById("infoMessage");
		info.innerText=msg;
		modal.classList.add("popup-center");
		
		var hidden = "<input type='hidden' id='viewResult'/>";
		$(".modalInfo-result").html(hidden);
	}
	
	window.onclick = function(event){
		if(event.target == modal) {
			modal.classList.remove("popup-center");
			if($("#viewResult").length > 0){
				location.reload();
			}
		}
	}
	
	span.onclick = function(){
		modal.classList.remove("popup-center");
		if($("#viewResult").length > 0){
			location.reload();
		}
	}
	
</script>
