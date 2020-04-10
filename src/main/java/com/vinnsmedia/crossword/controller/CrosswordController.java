package com.vinnsmedia.crossword.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.vinnsmedia.crossword.service.CrosswordService;
import com.vinnsmedia.crossword.vo.CrosswordDTO;
import com.vinnsmedia.crossword.vo.CrosswordVO;
import com.vinnsmedia.crossword.vo.WordDTO;

@Controller
@RequestMapping("/")
public class CrosswordController {
	
	@Autowired
	CrosswordService crosswordService;
	
	@GetMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/register")
	public String pageReg() {
		return "puzzle/register";
	}
	
	@PostMapping("/confirm")
	public String pageConfirm(Model model,
			String title, WordDTO wordDTO) throws Exception{
//		System.out.println(title);
//		System.out.println(wordDTO.getWordList());
		
		CrosswordDTO crosswordDTO = crosswordService.createTempDTO(title, wordDTO.getWordList());
		
		// dto로 퍼즐 만들기 
		Map<String, Object> Everything = crosswordService.makePuzzle(crosswordDTO);
		
		
		// model 객체로 보내기 
		model.addAttribute("check", new Gson().toJson(crosswordDTO));
		model.addAttribute("puzzle", Everything);
		
		return "puzzle/confirm";
	}
	
	@PostMapping("/reg/{title}")
	@ResponseBody
	public ResponseEntity<CrosswordVO> regPuzzle(
			@PathVariable("title") String title,
			@RequestBody List<WordDTO> wordList) throws Exception {
		ResponseEntity<CrosswordVO> entity = null;
		
//		System.out.println(title);
//		System.out.println(wordList);
		
		CrosswordVO crossword = crosswordService.regPuzzle(title, wordList);
		if(crossword != null) {
			entity = new ResponseEntity<>(crossword, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
//		System.out.println("controller : "+crossword);
		
		return entity;
	}
	// 제목 중복 체크
	@PostMapping("/title/{title}")
	@ResponseBody
	public ResponseEntity<String> checkTitle(@PathVariable("title") String title) throws Exception {
		ResponseEntity<String> entity = null;
		
		if (crosswordService.checkTitle(title)) {
			entity = new ResponseEntity<>("Duplicated", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<>("Available", HttpStatus.OK);
		}
		
		return entity;
	}
	
	@GetMapping("/puzzles")
	@ResponseBody
	public ResponseEntity<List<CrosswordVO>> getPuzzleList() throws Exception {
		ResponseEntity<List<CrosswordVO>> entity = null;
		
		List<CrosswordVO> list = crosswordService.getPuzzleList();
		
		if(list != null && list.size() > 0) {
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@GetMapping("/puzzles/{seq}")
	@ResponseBody
	public ResponseEntity<CrosswordVO> findPuzzleBySeq(
			@PathVariable("seq") Long seq) throws Exception {
		ResponseEntity<CrosswordVO> entity = null;
		
		CrosswordVO crossword = crosswordService.findPuzzleBySeq(seq);
		
		
		
		if(crossword != null && crossword.getWordList().size() > 0) {
			entity = new ResponseEntity<>(crossword, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	

	
}
