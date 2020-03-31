package com.vinnsmedia.crossword.vo;

import java.util.List;

import lombok.Data;

@Data
public class CrosswordVO {
	private Integer seq;
	private String title;
	private Integer count;
	
	List<Word> wordList;
}
