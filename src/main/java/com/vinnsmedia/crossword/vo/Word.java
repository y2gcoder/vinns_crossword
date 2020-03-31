package com.vinnsmedia.crossword.vo;

import java.util.List;

import lombok.Data;

@Data
public class Word {
	private Integer seq;
	private Integer length;
	private Integer puzzle_seq;
	private String name;
	private String description;
	
//	private List<Word> wordList;
}
