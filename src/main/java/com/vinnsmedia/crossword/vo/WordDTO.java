package com.vinnsmedia.crossword.vo;

import java.util.List;

import lombok.Data;

@Data
public class WordDTO {
	private String name;
	private String description;
	
	private List<WordDTO> wordList;
}
