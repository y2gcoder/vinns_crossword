package com.vinnsmedia.crossword.service;

import java.util.List;

import com.vinnsmedia.crossword.vo.CrosswordDTO;
import com.vinnsmedia.crossword.vo.CrosswordVO;
import com.vinnsmedia.crossword.vo.Word;
import com.vinnsmedia.crossword.vo.WordDTO;

public interface CrosswordService {
	
	//crosswordDTO 정리
	CrosswordDTO createTempDTO(String title, List<WordDTO> wordList)throws Exception;
	
	// 퍼즐 DB 등록
	CrosswordVO regPuzzle(String title, List<WordDTO> wordList)throws Exception;

	// 퍼즐 리스트 호출
	List<CrosswordVO> getPuzzleList()throws Exception;

	// 해당 퍼즐 가져오기
	CrosswordVO findPuzzleBySeq(Integer seq) throws Exception;
	
	// 퍼즐 되는지 확인
	char[][] paintingPuzzle(List<Word> wordList);
	
	
	

}
