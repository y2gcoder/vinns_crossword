package com.vinnsmedia.crossword.util;

/*
 * Crossword.java
 *
 * A blueprint class representing a crossword puzzle that can attempt to
 * find all possible fits for words in the puzzle.
 *
 * Author: Alexander Breen (abreen@bu.edu)
 */

public class Crossword {

    /*
     * Wherever a solid square appears on the crossword grid, a letter
     * cannot be inserted there. We will use the value SOLID for those
     * squares.
     */
    public static final int SOLID = -1000;


    /*
     * Wherever a blank appears on the crossword grid, a letter may be
     * placed there. We will use the value BLANK to indicate a vacant
     * square.
     */
    public static final int BLANK = -2000;

    /*
     * The game board is simply an integer matrix, where solid squares
     * have the value SOLID, blank squares have the value BLANK, and any
     * other integers indicate the starting position of words. If the
     * integers indicate an "across" word space, they are positive. If
     * the integers indicate a "down" word space, they are negative.
     */
    private int[][] board;

    /*
     * The number of word spaces (either "across" or "down") available
     * on the board. The actual word space numbers (the numbers present
     * on the board) are numbered from 1.
     */
    private int numSpaces;

    /*
     * Where on the board there is currently a word filled in, this
     * array will keep a reference to a Letter object, which keeps the
     * letter of the word as well as an index into the words array for
     * the string to which the letter belongs. We need this so we can
     * determine the word to which any letter belongs by just accessing
     * a square on the board.
     */
    private Letter[][] currentWords;

    private String[] words;

    /*
     * Keeps track of whether a word is currently in the currentWords
     * board. If words[0] is somewhere in the board, usedWords[0] == true.
     */
    private boolean[] usedWords;

    public Crossword(int[][] board, String[] words, int numSpaces) {
        if (board == null || board.length < 1 || board[0] == null ||
            board[0].length < 1)
        {
            throw new IllegalArgumentException("invalid board");
        }

        if (words == null || words.length < 1) {
            throw new IllegalArgumentException("invalid words");
        }

        this.words = new String[words.length];
        System.arraycopy(words, 0, this.words, 0, words.length);

        this.usedWords = new boolean[words.length];

        int numColumns = board[0].length;
        this.board = new int[board.length][numColumns];

        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board[i].length; j++) {
                if (board[i].length != numColumns) {
                    throw new IllegalArgumentException("jagged board array");
                }

                this.board[i][j] = board[i][j];
            }
        }

        this.currentWords = new Letter[board.length][numColumns];

        this.numSpaces = numSpaces;
    }

    private void displaySolution() {
        System.out.print(this);
    }

    /*
     * Given wordIndex, an index into the words array, insert the word
     * into the currentWords board starting where spaceNumber is on the
     * game board. For example, if board[0][0] is the "2 down" space,
     * applyValue(1, 2) will fill in the word words[1] at
     * currentWords[0][0], currentWords[1][0], ...,
     * currentWords[words[1].length - 1][0].
     */
    private void applyValue(int wordIndex, int spaceNumber) {
        int[] spaceCoord = getSpaceStart(spaceNumber);

        if (spaceCoord == null)
            throw new IllegalArgumentException("no such space number on board");

        int row = spaceCoord[0];
        int col = spaceCoord[1];

        int spaceSize = getSpaceSize(spaceNumber);
        boolean isAcross = board[row][col] > 0;

        Letter[] ltrs = Letter.lettersFromString(words[wordIndex], wordIndex);

        for (int i = 0; i < spaceSize; i++) {
            if (currentWords[row][col] == null) {
                currentWords[row][col] = ltrs[i];
            }

            if (isAcross) {
                col += 1;
            } else {
                row += 1;
            }
        }

        usedWords[wordIndex] = true;
    }

    /*
     * Given wordIndex, an index into the words array, remove the word
     * from the board at wordPosition, where wordPosition is either an
     * "across" or "down" word space in the board.
     */
    private void removeValue(int wordIndex, int spaceNumber) {
        int[] spaceCoord = getSpaceStart(spaceNumber);

        if (spaceCoord == null)
            throw new IllegalArgumentException("no such space number on board");

        int row = spaceCoord[0];
        int col = spaceCoord[1];

        int spaceSize = getSpaceSize(spaceNumber);
        boolean isAcross = board[row][col] > 0;

        for (int i = 0; i < spaceSize; i++) {
            if (currentWords[row][col] != null &&
                currentWords[row][col].wordIndex == wordIndex)
            {
                currentWords[row][col] = null;
            }

            if (isAcross) {
                col += 1;
            } else {
                row += 1;
            }
        }

        usedWords[wordIndex] = false;
    }

    /*
     * Returns true if an attempt to place words[wordIndex] in word space
     * number spaceNumber would succeed. Inserting the word succeeds if
     * and only if the word is the right size for the blank, and where the
     * word intersects another word their letters are the same.
     */
    private boolean isValid(int wordIndex, int spaceNumber) {
        int spaceSize = getSpaceSize(spaceNumber);

        return words[wordIndex].length() == spaceSize &&
               intersectionsMatch(wordIndex, spaceNumber);
    }

    /*
     * Returns true if words[wordIndex] could be placed in spaceNumber and
     * it would not cause any invalid intersections with other words.
     */
    private boolean intersectionsMatch(int wordIndex, int spaceNumber) {
        int[] spaceCoord = getSpaceStart(spaceNumber);

        if (spaceCoord == null)
            throw new IllegalArgumentException("no such space number on board");

        int row = spaceCoord[0];
        int col = spaceCoord[1];

        int spaceSize = getSpaceSize(spaceNumber);
        boolean isAcross = board[row][col] > 0;
        String word = words[wordIndex];

        for (int i = 0; i < spaceSize; i++) {
            if (currentWords[row][col] != null &&
                currentWords[row][col].character != word.charAt(i))
            {
                return false;
            }

            if (isAcross) {
                col += 1;
            } else {
                row += 1;
            }
        }

        return true;
    }

    /*
     * Given a space number, this method finds the number of blanks belonging
     * to the space and returns it.
     */
    public int getSpaceSize(int spaceNumber) {
        int[] spaceCoord = getSpaceStart(spaceNumber);

        if (spaceCoord == null)
            throw new IllegalArgumentException("no such space number on board");

        int row = spaceCoord[0];
        int col = spaceCoord[1];

        boolean isAcross = board[row][col] > 0;

        int limit;

        if (isAcross) {
            limit = board[0].length - col;
        } else {
            limit = board.length - row;
        }

        /*
         * In the for loop below, we break if we reach a solid square before
         * reaching the edge of the board.
         */
        int i;
        for (i = 0; i < limit; i++) {
            if (isAcross && board[row][col + i] == SOLID) {
                break;
            }

            if (!isAcross && board[row + i][col] == SOLID) {
                break;
            }
        }

        return i;
    }

    /*
     * This method uses recursive backtracking to find all possible solutions
     * to the crossword puzzle with the supplied words. When it finds a
     * solution that works, it will print it.
     */
    private void findSolutions(int spaceNumber) {
        if (spaceNumber > numSpaces) {
            // all the spaces have been filled!
            displaySolution();
            return;
        }

        /*
         * Loop through possible valid words for this space. Do *not*
         * consider words we have already used.
         */
        for (int wordIndex = 0; wordIndex < words.length; wordIndex++) {
            if (usedWords[wordIndex]) {
                continue;
            }

            if (isValid(wordIndex, spaceNumber)) {

                applyValue(wordIndex, spaceNumber);

                findSolutions(spaceNumber + 1);

                removeValue(wordIndex, spaceNumber);

            }
        }
    }

    /*
     * Starts the recursive backtracking with the first word in
     * the words array.
     */
    public void findSolutions() {
        findSolutions(1);
    }

    /*
     * Given a space number, return an integer array arr, where arr.length == 2
     * and arr[0] contains the row of the word space and arr[1]
     * contains the column of the word space, or null if there is no
     * word space with the number spaceNumber.
     */
    private int[] getSpaceStart(int spaceNumber) {
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board[i].length; j++) {
                if (board[i][j] == BLANK || board[i][j] == SOLID) {
                    continue;
                }

                if (Math.abs(board[i][j]) == spaceNumber) {
                    int[] arr = new int[2];
                    arr[0] = i;
                    arr[1] = j;
                    return arr;
                }
            }
        }

        return null;
    }

    public String toString() {
        String s = "";

        for (int i = 0; i < board.length; i++) {

            // add border line between rows
            if (i > 0) {
                for (int k = 0; k < board[i].length; k++) {
                    if (k == board[i].length - 1) {
                        s += "---";
                    } else {
                        s += "---+";
                    }
                }

                s += "\n";
            }

            // add squares to row
            for (int j = 0; j < board[i].length; j++) {
                char ch = ' ';

                if (board[i][j] == SOLID) {
                    ch = '#';
                } else {
                    if (currentWords[i][j] == null) {
                        // the blank is not occupied by a letter
                        ch = ' ';
                    } else {
                        // the blank is filled in with a letter
                        ch = currentWords[i][j].character;
                        ch = Character.toUpperCase(ch);
                    }
                }

                if (j == board[i].length - 1) {
                    s += " " + ch;
                } else {
                    s += " " + ch + " |";
                }
            }

            s += "\n";

        }

        return s;
    }

    /*
     * Tests of the Crossword class.
     */
    public static void main(String[] args) {
        // note: "across" spaces are positive, and "down" spaces are negative
        int[][] board = { { 1,     BLANK, -2,    BLANK, -3    },
                          { SOLID, SOLID, BLANK, SOLID, BLANK },
                          { SOLID, 4,     BLANK, -5,    BLANK },
                          { -6,    SOLID, 7,     BLANK, BLANK },
                          { 8,     BLANK, BLANK, BLANK, BLANK },
                          { BLANK, SOLID, SOLID, BLANK, SOLID } };

        int numWordSpaces = 8;

        String[] words = { "aft", "laser", "ale", "lee", "eel", "line",
                           "heel", "sails", "hike", "sheet", "hoses", 
                           "steer", "keel", "tie", "knot" };

        Crossword c1 = new Crossword(board, words, numWordSpaces);
        c1.findSolutions();
    }
}


/*
 * A small class representing one letter of a word in the crossword board.
 * The Letter class keeps the index of a string from the Crossword's
 * words array and a letter from that string, so that
 * we can store instances of Letter in the game board and know the word
 * to which the letter belongs, given just the Letter object.
 */
class Letter {
    public int wordIndex;
    public char character;

    public Letter(int wordIndex, char ch) {
        this.wordIndex = wordIndex;
        this.character = ch;
    }

    /*
     * Given a string and that string's index into the Crossword's words
     * array, create a Letter object from each character of the string
     * and return all the Letter objects in an array.
     */
    public static Letter[] lettersFromString(String str, int wordIndex) {
        Letter[] letters = new Letter[str.length()];
        for (int i = 0; i < str.length(); i++) {
            letters[i] = new Letter(wordIndex, str.charAt(i));
        }

        return letters;
    }
}