import 'dart:math';

bool isPalindrome(String s) {
  if (s.length < 3) return false;

  return s == s.split('').reversed.join();
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }

  int maxLength = 0;
  int start = 0;

  for (int i = 0; i < s.length; i++) {
    int len1 = expandAroundCenter(s, i, i);
    int len2 = expandAroundCenter(s, i, i + 1);
    int len = max(len1, len2);

    if (len > maxLength) {
      maxLength = len;
      start = i - ((len - 1) ~/ 2);
    }
  }

  if (maxLength < 3) {
    return 'none';
  }

  return s.substring(start, start + maxLength);
}

int expandAroundCenter(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }

  return right - left - 1;
}
