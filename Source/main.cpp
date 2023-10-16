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

  std::cout << '\n' << '\n';

  file.LineInfo(0);
  file.LineInfo(1);

  return 0;
}
