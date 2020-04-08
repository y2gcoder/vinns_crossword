package com.vinnsmedia.crossword.util;

import lombok.Data;

@Data
public class MatchingWord {
	
	private Character matchingLetter;
	private String nextWord;
	private Integer nextLetterIndex;
}
