#include <cstdint>
#include <fstream>
#include <string>

class File {
public:
  File(std::string file_name);

  int GetFileSize();
  int GetNumberLine();
  std::string GetLine(int index);

  void CreateArray();
  void LineInfo(int index);

  char *FileGetRhyme(char *line);

private:
  std::ifstream fin_; // Поток с файлом

  int file_size_;  // Размер файла
  int file_lines_; // Количество строк в файле
  char *
      *file_lines_pointers_; // Указатель на строки файла в динамеичекой памяти
  char *file_symbols_pointers_; // Указатель на файл в динамеичекой памяти
};