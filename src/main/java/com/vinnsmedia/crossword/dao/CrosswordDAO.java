package com.vinnsmedia.crossword.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.vinnsmedia.crossword.vo.CrosswordVO;
import com.vinnsmedia.crossword.vo.Puzzle;
import com.vinnsmedia.crossword.vo.Word;

public interface CrosswordDAO {

	
	
	/**
	 * 퍼즐 등록
	 * 1. puzzle을 insert(title)
	 * 2. word들을 insert(puzzle_seq, name, length, description) 
	 * 3. word들의 개수를 구해 puzzle에 update(count)
	 */
	@Insert("INSERT INTO puzzle (title) VALUES(#{title})")
	Boolean createPuzzle(String title) throws Exception;
	@Select("SELECT * FROM puzzle WHERE seq=LAST_INSERT_ID()")
	Puzzle getTempPuzzle() throws Exception;
	@Insert("INSERT INTO word (name, length, description, puzzle_seq) VALUES (#{name}, #{length}, #{description}, #{puzzle_seq})")
	Boolean insertWords(Word word) throws Exception;
	@Select("SELECT count(*) FROM word WHERE puzzle_seq=#{puzzle_seq}")
	Integer getCount(Long puzzle_seq) throws Exception;
	@Update("UPDATE puzzle SET count=#{count} WHERE seq=#{puzzle_seq}")
	Boolean updateCount(@Param("puzzle_seq") Long puzzle_seq, @Param("count")Integer count) throws Exception;
	@Select("SELECT count(*) FROM puzzle WHERE title=#{title}")
	Integer checkTitle(String title)throws Exception;
	
	
	/**
	 * 퍼즐 불러오기
	 * puzzle(seq, title, count) 
	 * List<Word> wordlist(seq, puzzle_seq, name, length, description)
	 */
	@Select("SELECT * FROM puzzle ORDER BY seq DESC")
	List<CrosswordVO> findAllPuzzles()throws Exception;
	@Select("SELECT * FROM puzzle WHERE seq=#{puzzle_seq}")
	CrosswordVO getPuzzle(Long puzzle_seq) throws Exception;
	@Select("SELECT * FROM word WHERE puzzle_seq=#{seq} ORDER BY seq ASC")
	List<Word> getWordsByPuzzleSeq(Long seq) throws Exception;
	
	
}
