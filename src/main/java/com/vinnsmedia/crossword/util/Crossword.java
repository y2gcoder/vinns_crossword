package com.vinnsmedia.crossword.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Crossword {
	
	// size
	final Integer SIZE = 100;
	
	// across
	Boolean across = true;
	
	
	
	public Character[][] makePuzzle(List<String> words) {
		
		Character[][] matrix = new Character[SIZE][SIZE];
		List<MatrixWord> matrixWords = new ArrayList<>();
		
		// 1. 단어들 길이별 정렬
		sortDesc(words);
		// matrix 형성하기
		matrix = buildMatrix(matrix, matrixWords, words);
		
		System.out.println(matrixWords);
		
		return matrix;
	}
	// 매트릭스 형성 메소드
	private Character[][] buildMatrix(Character[][] matrix, List<MatrixWord> matrixWords, List<String> words) {
		// words for문 시작
		for(int i=0;i<words.size();i++) {
			// 2. 첫 단어를 matrix에 붙임
			if(i==0) {
				matrix = initMatrix(matrix, matrixWords, words.get(i));
			// 3. 다음 단어를 가지고 검색
			}else {
				matrix = searchMatrix(matrix, matrixWords, words.get(i));
			}
			
		}
		
		return matrix;
	}
	
	// 단어 길이별 리스트 정렬
	private void sortDesc(List<String> words) {
		
		// 정렬 기준
		Comparator<String> desc = new Comparator<String>() {

			@Override
			public int compare(String s1, String s2) {
				return Integer.compare(s2.length(), s1.length());
			}
			
		};
		
		Collections.sort(words, desc);
		
	}

	
	
	// matrix에 첫 단어 집어넣기
	private Character[][] initMatrix(Character[][] matrix, List<MatrixWord> matrixWords, String longestWord) {
		Integer longestWordLength = longestWord.length();
		MatrixWord matrixWord = new MatrixWord();
		matrixWord.setWord(longestWord);
		matrixWord.setAcross(across);
				
		for(int i=0;i<longestWordLength;i++) {
			Character letter = longestWord.charAt(i);
			matrix[0][i] = letter;
			matrixWord.setX(0);
			matrixWord.setY(0);
		}
				
		matrixWords.add(matrixWord);
		
		return matrix;
	}
	
	// 첫 단어 이후
	private Character[][] searchMatrix(Character[][] matrix, List<MatrixWord> matrixWords, String word) {
		
		for(int i=0;i<matrixWords.size();i++) {
			// matrix 에 있는 단어랑 비교해서 교차점 찾기
			
		}
		
		return matrix;
	}
	
}
