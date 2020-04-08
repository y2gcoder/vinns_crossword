package com.vinnsmedia.crossword.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Crossword {
	
	// size
	final Integer SIZE = 50;
	
	// across
	Boolean across = true;
	
	// matrix 와 행렬 초기화
	Character[][] matrix = new Character[SIZE][SIZE];
	List<MatrixWord> matrixWords = new ArrayList<>();
	
	// 작업용 리스트
	
	
	/**
	 *  1. 단어 길이 별 정렬
	 *  2. 제일 긴 단어 추출 후 넣기
	 *  3. 다음 단어 추출
	 *  4. matrix에 있는 모든 단어 검색, 가능한 교차점이 있는 지 확인
	 *  5. 단어가 가능한 위치가 있으면 matrix 내의 모든 단어를 반복하여 새 단어가 간섭하는 지 확인
	 *  6. 이 단어로 matrix가 깨지지 않으면 matrix 안에 넣고 3단계로! 그렇지 않으면 계속해서 4단계!
	 *  7. 모든 단어가 배치되거나 더 이상 단어가 배치될 수 없을 때까지 루프를 반복!
	 *  8. 단어들 모두와 겹치지 않을 경우 가장 오른쪽에 존재하는 문자의 인덱스나 가장 밑에 존재하는 문자의 인덱스를 따져 더 작은 곳의 밑에 한 칸 띄우고 배치.
	 *  9. 가장 오른쪽에 존재하는 문자의 인덱스와 가장 밑에 존재하는 문자의 인덱스를 이용하여 정사각형으로 자르자. 
	 * 
	 */
	public Character[][] makePuzzle(List<String> words) {
		
		// 1. 단어들 길이별 정렬
		sortDesc(words);
		// matrix 형성하기
		matrix = buildMatrix(matrix, matrixWords, words);
		
		return matrix;
	}
	// 매트릭스 형성 메소드
	private Character[][] buildMatrix(Character[][] matrix, List<MatrixWord> matrixWords, List<String> words) {
		// 2. 첫 단어를 matrix에 붙이자.
		String firstWord = words.get(0);
		MatrixWord firstSpine = firstSpine(firstWord);
		matrixWords.add(firstSpine);
		 
		for(int i=1;i<words.size();i++) {
			// 3. 다음 단어들
			String nextWord = words.get(i);
			// 4. 이미 matrix에 있는 척추 단어와 비교하여 교차점 찾기
			List<MatchingWord> firstMatchingWords = findMatchingWords(firstSpine, nextWord);
			// 4-1. 첫번째 척추 단어 필요하면 옮기면서 넣기 넣어지면 종료해야함.  
			for(int j=0;j<firstMatchingWords.size();j++) {
				MatchingWord matchingWord = firstMatchingWords.get(i);
				
				
				
				break;
			}
			
			
			
			
		}
		


		System.out.println("최종 블럭들 : " + matrixWords);
		
		return matrix;
	}
	
	
	
	// 첫번째 척추 단어 생성
	private MatrixWord firstSpine(String word) {
		MatrixWord firstSpineWord = new MatrixWord();
		
		firstSpineWord.setWord(word);
		firstSpineWord.setAcross(across);
		firstSpineWord.setX(0);
		firstSpineWord.setY(0);
		firstSpineWord.setMatchingWords(new ArrayList<MatchingWord>());
		
		
		Boolean across = firstSpineWord.getAcross();
		Integer x = firstSpineWord.getX();
		Integer y = firstSpineWord.getY();
		
		// matrix에 그려주기
		paintMatrix(matrix, word, across, x, y);
		
		return firstSpineWord;
	}
	
	// matrix에 그리기!
	private void paintMatrix(Character[][] matrix, String word, Boolean across, Integer x, Integer y) {
		for(int i=0;i<word.length();i++) {
			char letter = word.charAt(i);
			
			if(across) {
				matrix[x][y+i] = letter;
			}else {
				matrix[x+i][y] = letter;
			}
		}
		
	}
	
	// 다음 단어와의 교차점 리스트 찾기
	private List<MatchingWord> findMatchingWords(MatrixWord firstSpine, String nextWord) {
		List<MatchingWord> matchingWords = new ArrayList<>();
		String firstSpineWord = firstSpine.getWord();
		
		for(int i=0;i<firstSpineWord.length();i++) {
			for(int j=0;j<nextWord.length();j++) {
				if(firstSpineWord.charAt(i)==nextWord.charAt(j)) {
					MatchingWord matchingWord = new MatchingWord();
					matchingWord.setMatchingLetter(firstSpineWord.charAt(i));
					matchingWord.setNextWord(nextWord);
					matchingWord.setNextLetterIndex(j);
					matchingWords.add(matchingWord);
//						System.out.println("추가한 녀석 : "+matchingWord);
				}
			}
		}
		
		
		return matchingWords;
	}

	
	
	
	
	
	
	
	
	/**
	 * 
	 * 여기부터는 공사중
	 */
	
	
//	// matrix에 첫 단어 집어넣기
//	private Character[][] initMatrix(Character[][] matrix, List<MatrixWord> matrixWords, String longestWord) {
//		Integer longestWordLength = longestWord.length();
//		MatrixWord matrixWord = new MatrixWord();
//		matrixWord.setWord(longestWord);
//		matrixWord.setAcross(across);
//				
//		for(int i=0;i<longestWordLength;i++) {
//			Character letter = longestWord.charAt(i);
//			matrix[0][i] = letter;
//			matrixWord.setX(0);
//			matrixWord.setY(0);
//			matrixWord.setMatchingWords(new ArrayList<List<MatchingWord>>());
//		}
//				
//		matrixWords.add(matrixWord);
//		
//		return matrix;
//	}
//	
//	// 사용할 블럭들 만들기
//	private List<MatrixWord> buildBlocks(List<MatrixWord> matrixWords, List<String> words) {
//		for(int i=0;i<matrixWords.size();i++) {
//			// matrix 에 있는 단어랑 비교해서 교차점 찾기
//			String targetWord = matrixWords.get(i).getWord();
//			Boolean targetAcross = matrixWords.get(i).getAcross();
//			Integer targetX = matrixWords.get(i).getX();
//			Integer targetY = matrixWords.get(i).getY();
//			
//			// 타겟 단어의 철자를 돌면서 중복되는 문자가 있는 단어들 모두 찾기
//			for (int j=0;j<targetWord.length();j++) {
//				Character targetLetter = targetWord.charAt(j);
//				
//				List<MatchingWord> matchingWords = findMatchingWords(targetWord, targetLetter, words);
//				
//				
//				matrixWords.get(i).getMatchingWords().add(matchingWords);
//				
//				
//			}
//			
//			
//		}
//		
//		
//		return matrixWords;
//	}
//	// 문자가 들어간 단어 모두 찾기
//	private List<MatchingWord> findMatchingWords(String targetWord, Character targetLetter, List<String> words) {
//		List<MatchingWord> matchingWords = new ArrayList<>();
//		Integer targetIndex = null;
//		
//		for(int i=0;i<targetWord.length();i++) {
//			Character index = targetWord.charAt(i);
//			if(index.equals(targetLetter)) {
//				targetIndex = i;
//			}
//		}
//		
//		for(int i=0;i<words.size();i++) {
//			
//			String word = words.get(i);
//			if(targetWord.equals(word)) {
//				continue;
//			}
//			for(int j=0;j<word.length();j++) {
//				if(targetLetter.equals(word.charAt(j))) {
//					MatchingWord matchingWord = new MatchingWord();
//					matchingWord.setMatchingLetter(targetLetter);
//					if(targetIndex != null) {
//						matchingWord.setTargetIndex(targetIndex);
//					}
//					matchingWord.setNextWord(word);
//					matchingWord.setNextIndex(j);
//					
//					matchingWords.add(matchingWord);
//				}
//			}
//			
//			
//			
//		}
//		
//		System.out.println(targetLetter+" : "+matchingWords);
//		return matchingWords;
//	}
	
	
	
//	// 첫 단어 이후
//	private List<MatrixWord> searchBlocks(List<MatrixWord> matrixWords, String word) {
//		
//		for(int i=0;i<matrixWords.size();i++) {
//			// matrix 에 있는 단어랑 비교해서 교차점 찾기
//			String targetWord = matrixWords.get(i).getWord();
//			Boolean targetAcross = matrixWords.get(i).getAcross();
//			Integer targetX = matrixWords.get(i).getX();
//			Integer targetY = matrixWords.get(i).getY();
//			
//			// 
//			List<MatchingWord> matchingWords = checkMatching(targetWord, word);
//			
//			matrixWords.get(i).getMatchingWords().add(matchingWords);
//			
//		}
//		
//		return matrixWords;
//	}
	
//	// 단어를 돌면서 매칭되는 철자 다 넣기
//	private List<MatchingWord> checkMatching(String targetWord, List<String> words) {
//		List<MatchingWord> list = new ArrayList<>();
//		
//		for(int i=0;i<targetWord.length();i++) {
//			Character targetLetter = targetWord.charAt(i); 
//			Integer targetIndex = i;
//			// 관련 문자 하나 당 단어들을 순회하면서 찾아와야 함.
//			
//			
//			
//			for(int j=0;j<words.size();j++) {
//				MatchingWord matchingWord = new MatchingWord();
//				matchingWord.setMatchingLetter(targetLetter);
//				matchingWord.setTargetIndex(targetIndex);
//				
//				 
//				
//			}
//			
//			
//			
//			
//			
//			
			
//			for(int j=0;j<words.length();j++) {
//				if(targetWord.charAt(i)==words.charAt(j)) {
//					MatchingWord matchingWord = new MatchingWord();
//					matchingWord.setNextWord(words);
//					matchingWord.setMatchingLetter(words.charAt(j));
//					matchingWord.setTargetIndex(i);
//					matchingWord.setNextIndex(j);
//					
//					list.add(matchingWord);
//				}
//			}
//			if(matchingWord.getNextWord()!=null && !matchingWord.getNextWord().equals("")) {
//				list.add(matchingWord);
//			}
//		}
//		System.out.println("일치 리스트 : "+list);
//		return list;
//	}
	
	
//	private MatchingWord FindAllMatching(MatchingWord matchingWord, List<String> words) {
//		Character matchingLetter = matchingWord.getMatchingLetter();
//		for(int i=0;i<words.size();i++) {
//			String word = words.get(i);
//			for(int j=0;j<word.length();j++) {
//				if(matchingLetter.equals(word.charAt(j))) {
//					
//				}
//			}
//		}
//		return matchingWord;
//	}
	
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
	
}
