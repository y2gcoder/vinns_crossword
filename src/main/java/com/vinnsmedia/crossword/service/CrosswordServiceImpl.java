package com.vinnsmedia.crossword.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vinnsmedia.crossword.dao.CrosswordDAO;
import com.vinnsmedia.crossword.util.CreateCrossword;
import com.vinnsmedia.crossword.vo.CrosswordDTO;
import com.vinnsmedia.crossword.vo.CrosswordVO;
import com.vinnsmedia.crossword.vo.Puzzle;
import com.vinnsmedia.crossword.vo.Word;
import com.vinnsmedia.crossword.vo.WordDTO;

@Service
public class CrosswordServiceImpl implements CrosswordService{

	@Autowired
	CrosswordDAO crosswordDAO;
	
	
	
	@Override
	public CrosswordDTO createTempDTO(String title, List<WordDTO> wordList) throws Exception {
		CrosswordDTO dto = new CrosswordDTO();
		dto.setTitle(title);
		
		// list 값 없는 것들은 제거하기.
		List<WordDTO> realList = new ArrayList<>();
		
		for(WordDTO word : wordList) {
			String name = word.getName().trim();
			if(name != "") {
				realList.add(word);
			}
		}
		// 잘라냈는지 확인
		System.out.println(realList);
		dto.setWordList(realList);
		
		return dto;
	}



	@Override
	@Transactional
	public CrosswordVO regPuzzle(String title, List<WordDTO> wordList) throws Exception {
		CrosswordVO crossword = null;
		
		Boolean success = false;
		
		Boolean created = crosswordDAO.createPuzzle(title);
		if(created) {
			System.out.println("오류?");
			Puzzle tempPuzzle = crosswordDAO.getTempPuzzle();
			System.out.println(tempPuzzle);
			if(tempPuzzle != null) {
				Integer puzzle_seq = tempPuzzle.getSeq();
				
				// DB에 word가 입력되는 횟수
				Integer insertCounting = 0;
				Boolean insertWords = false;
				for(WordDTO dto : wordList) {
					Word word = new Word();
					
					String name = dto.getName();
					Integer length = name.length();
					String description = dto.getDescription();
					word.setName(name);
					word.setLength(length);
					word.setDescription(description);
					word.setPuzzle_seq(puzzle_seq);
					
					insertWords = crosswordDAO.insertWords(word);
					if(insertWords) {
						insertCounting++;
					}
				}
				// word 뭉치들이 DB에 모두 입력이 되었으면
				if(insertCounting == wordList.size()) {
					// word 총 갯수 구하기
					Integer count = crosswordDAO.getCount(puzzle_seq);
					// 제대로 날아왔으면 넣자. 
					if(count != null) {
						success = crosswordDAO.updateCount(puzzle_seq, count);
					}
				}
				if(success) {
					crossword = crosswordDAO.getPuzzle(puzzle_seq);
					// 바디 불러옴.
					if(crossword != null) {
						Integer seq = crossword.getSeq();
						List<Word> words = crosswordDAO.getWordsByPuzzleSeq(seq);
						crossword.setWordList(words);
					}
				}
			}
			
		}
//		System.out.println(crossword);
		return crossword;
	}



	@Override
	@Transactional
	public List<CrosswordVO> getPuzzleList() throws Exception {
		// 일단 기본 puzzlelist 몸체부터
		List<CrosswordVO> list = crosswordDAO.findAllPuzzles();
		// 단어 리스트 넣기
		if(list != null && list.size() > 0) {
			for(CrosswordVO puzzle : list) {
				Integer puzzle_seq = puzzle.getSeq();
				
				List<Word> wordList = crosswordDAO.getWordsByPuzzleSeq(puzzle_seq);
				if(wordList != null && wordList.size() > 0) {
					puzzle.setWordList(wordList);
				}
			}
		}
		System.out.println(list);
		return list;
	}

	@Override
	@Transactional
	public CrosswordVO findPuzzleBySeq(Integer seq) throws Exception {
		// 일단 기본 puzzle 몸체부터
		CrosswordVO crossword = crosswordDAO.getPuzzle(seq);
		// 단어 리스트 넣기
		if(crossword != null) {
			List<Word> wordList = crosswordDAO.getWordsByPuzzleSeq(seq);
			if(wordList != null && wordList.size() > 0) {
				crossword.setWordList(wordList);
			}
		}
		System.out.println(crossword);
		return crossword;
	}



	@Override
	public char[][] paintingPuzzle(List<Word> wordList) {
		char[][] grid = new char[9][9];
		
		// 단어 이름만 추출한 리스트 만들기
		List<String> nameList = new ArrayList<>();
		for(Word w : wordList) {
			String name = w.getName();
			nameList.add(name);
		}
		
		String[] words = nameList.toArray(new String[nameList.size()]);
		for(int k=0;k<words.length;k++) {
			for(int i=0;i<9;i++) {
				for(int j=0;j<words[k].length();j++) {
					System.out.println("몇번째 단어? "+k);
					System.out.println("그리드 i? "+i);
					System.out.println("그리드 j? "+j);
					grid[i][j] = words[k].charAt(j);
				}
			}
		}
		CreateCrossword.fillGrid(grid, words, null);
		
		for (int i = 0; i < 9; i++) {
			for (int j = 0; j < 9; j++) {
				System.out.print(grid[i][j]);
			}
			System.out.println();
		}

		
		
		return grid;
	}
	
	
	
	
	
	
	
}
