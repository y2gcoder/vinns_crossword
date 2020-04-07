package com.vinnsmedia.crossword.service;

import java.util.List;
import java.util.Map;

import com.vinnsmedia.crossword.vo.CrosswordDTO;
import com.vinnsmedia.crossword.vo.CrosswordVO;
import com.vinnsmedia.crossword.vo.WordDTO;

public interface CrosswordService {
	
	//crosswordDTO 정리
	CrosswordDTO createTempDTO(String title, List<WordDTO> wordList)throws Exception;
	
	// 퍼즐 DB 등록
	CrosswordVO regPuzzle(String title, List<WordDTO> wordList)throws Exception;

	// 퍼즐 리스트 호출
	List<CrosswordVO> getPuzzleList()throws Exception;

	// 해당 퍼즐 가져오기
	CrosswordVO findPuzzleBySeq(Long seq) throws Exception;
	
	// 제목 중복 확인
	Boolean checkTitle(String title)throws Exception;
	
	// 퍼즐 구성에 필요한 것 다 담기
	Map<String, Object> makePuzzle(CrosswordDTO crosswordDTO);
	
	
	

}
