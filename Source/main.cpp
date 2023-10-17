#include "File.h"
#include "Rhyme.h"
#include <fstream>
#include <iostream>
#include <string>
#include <utility>

int main(int argc, char *argv[]) {
  std::cout << "File " << argv[1] << '\n';
  File file(argv[1]);

  // std::cout << "File size: " << file.GetFileSize() << '\n';
  //
  file.CreateArray();
  //
  // std::cout << file.GetLine(0) << '\n';
  // std::cout << file.GetLine(1) << '\n';
  // std::cout << file.GetLine(2) << '\n';
  // std::cout << "..." << '\n';
  // std::cout << file.GetLine(file.GetNumberLine() - 2) << '\n';
  // std::cout << file.GetLine(file.GetNumberLine() - 1) << '\n';

  // file.FileGetRhyme(file.file_lines_pointers_[1]);
  // file.FileGetRhyme(file.file_lines_pointers_[170]);

  file.PrintPoem();

  return 0;
}
