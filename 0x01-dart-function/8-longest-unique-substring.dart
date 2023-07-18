String longestUniqueSubstring(String str) {
  String longestSubstring = '';
  String currentSubstring = '';
  Set<String> seenChars = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (seenChars.contains(currentChar)) {
      if (currentSubstring.length > longestSubstring.length)
        longestSubstring = currentSubstring;

      int j = currentSubstring.indexOf(currentChar);
      currentSubstring = currentSubstring.substring(j + 1);
    }

    currentSubstring += currentChar;
    seenChars.add(currentChar);
  }

  if (currentSubstring.length > longestSubstring.length)
    longestSubstring = currentSubstring;

  return longestSubstring;
}
