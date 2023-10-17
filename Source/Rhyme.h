#pragma once

#include <iostream>

inline char *GetNextSybmol(char *symbol) {
  --symbol;
  while (*symbol == ' ' || *symbol == '.' || *symbol == ',' || *symbol == '?' ||
         *symbol == '!' || *symbol == ')' || *symbol == '\0') {
    --symbol;
  }

  return symbol;
}

inline bool IsRhyme(char *line1, char *line2) {
  char *line1_end = line1;
  while (*line1_end != '\0') {
    ++line1_end;
  }

  char *line2_end = line2;
  while (*line2_end != '\0') {
    ++line2_end;
  }

  int rhyme_rigor = 4;

  char *next_symbol_1 = line1_end;
  char *next_symbol_2 = line2_end;

  bool is_rhyme = true;
  for (int i = 0; i < rhyme_rigor; ++i) {
    next_symbol_1 = GetNextSybmol(next_symbol_1);
    next_symbol_2 = GetNextSybmol(next_symbol_2);

    if (*next_symbol_1 != *next_symbol_2 || next_symbol_1 < line1 ||
        next_symbol_2 < line2) {
      is_rhyme = false;
      break;
    }
  }

  return is_rhyme;
}
