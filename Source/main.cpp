#include "File.h"
#include <fstream>
#include <iostream>
#include <string>
#include <utility>

int main() {
  File file("./text.txt");

  std::cout << "File size: " << file.GetFileSize() << '\n';

  file.CreateArray();

  std::cout << file.GetLine(0) << '\n';
  std::cout << file.GetLine(1) << '\n';
  std::cout << file.GetLine(2) << '\n';
  std::cout << "..." << '\n';
  std::cout << file.GetLine(file.GetNumberLine() - 2) << '\n';
  std::cout << file.GetLine(file.GetNumberLine() - 1) << '\n';

  // std::cout << '\n' << '\n';
  file.FileGetRhyme(file.file_lines_pointers_[3]);

  return 0;
}
