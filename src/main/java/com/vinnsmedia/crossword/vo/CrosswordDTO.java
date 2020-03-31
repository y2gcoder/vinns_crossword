package com.vinnsmedia.crossword.vo;

import java.util.List;

import lombok.Data;

@Data
public class CrosswordDTO {
	private String title;
	
	private List<WordDTO> wordList;
}
