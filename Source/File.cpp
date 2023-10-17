#include "./File.h"
#include "./Rhyme.h"
#include <cstdlib>
#include <iostream>
#include <random>
#include <vector>

File::File(std::string file_name) {
  srand(time(NULL));

  // Открывем файл
  fin_ = std::ifstream(file_name);

  // Считаем размер файла
  fin_.seekg(0, std::ios::end);
  this->file_size_ = fin_.tellg();
  fin_.seekg(0, std::ios::beg);

  std::string buffer;
  int line_counter = 0;
  while (!fin_.eof()) {
    getline(fin_, buffer);
    ++line_counter;
  }
  this->file_lines_ = line_counter;

  fin_.seekg(0, std::ios::beg);
}

int File::GetFileSize() { return this->file_size_; }
int File::GetNumberLine() { return this->file_lines_; }

void File::CreateArray() {
  // Переводим каретку в начало файла
  fin_.seekg(0, std::ios::beg);

  this->file_symbols_pointers_ = new char[this->file_size_];
  this->fin_.read(this->file_symbols_pointers_, this->file_size_);

  this->file_lines_pointers_ = new char *[this->file_lines_];

  int curr_index = 0;
  int prev_pos = 0;
  for (int symbol = 0; symbol < this->file_size_; ++symbol) {
    if (file_symbols_pointers_[symbol] == '\n') {
      file_symbols_pointers_[symbol - 1] = '\0';
      file_lines_pointers_[curr_index] = &file_symbols_pointers_[prev_pos];
      prev_pos = symbol + 1;
      ++curr_index;
    } else if (symbol == this->file_size_ - 1) {
      file_symbols_pointers_[symbol + 1] = '\0';
      file_lines_pointers_[curr_index] = &file_symbols_pointers_[prev_pos];
    }
  }
}

std::string File::GetLine(int index) {
  return std::string(this->file_lines_pointers_[index]);
};

void File::LineInfo(int index) {
  int line_lenght =
      this->file_lines_pointers_[index + 1] - this->file_lines_pointers_[index];

  std::cout << "Line lenght: " << line_lenght << '\n';
  for (int i = 0; i < line_lenght; i += 2) {
    if (file_lines_pointers_[index][i] == ' ' ||
        file_lines_pointers_[index][i] == ',' ||
        file_lines_pointers_[index][i] == '.') {
      --i;
      continue;
    }
    std::cout << i / 2 << ": " << file_lines_pointers_[index][i]
              << file_lines_pointers_[index][i + 1] << '\n';
  }
}

char *File::FileGetRhyme(char *line) {
  char *random_line;
  bool has_line = 0;
  int random_line_index;

  while (!has_line) {
    random_line_index = rand() % this->file_lines_;
    random_line = this->file_lines_pointers_[random_line_index];
    if (IsRhyme(line, this->file_lines_pointers_[random_line_index]) &&
        !(line == this->file_lines_pointers_[random_line_index])) {
      has_line = 1;
      break;
    }
    if (random_line_index >= this->file_lines_ - 1) {
      return nullptr;
    }
  }

  return this->file_lines_pointers_[random_line_index];
}

void File::PrintPoem() {
  std::random_device rd;
  std::uniform_int_distribution<int> dist(0, this->file_lines_ - 1);
  int first_lines[7];
  char *rhymed_lines[7];

  for (int i = 0; i < 7; ++i) {
    first_lines[i] = dist(rd);
  }

  for (int i = 0; i < 7; ++i) {
    char *buffer =
        this->FileGetRhyme(this->file_lines_pointers_[first_lines[i]]);

    while (buffer == nullptr) {
      first_lines[i] = dist(rd);
      buffer = this->FileGetRhyme(this->file_lines_pointers_[first_lines[i]]);
    }

    rhymed_lines[i] = buffer;
  }

  // std::cout << this->file_lines_pointers_[first_lines[0]] << '\n';
  // std::cout << this->file_lines_pointers_[first_lines[1]] << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[0]])
  //           << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[1]])
  //           << '\n';
  //
  // std::cout << this->file_lines_pointers_[first_lines[2]] << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[2]])
  //           << '\n';
  // std::cout << this->file_lines_pointers_[first_lines[3]] << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[3]])
  //           << '\n';
  //
  // std::cout << this->file_lines_pointers_[first_lines[4]] << '\n';
  // std::cout << this->file_lines_pointers_[first_lines[5]] << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[5]])
  //           << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[4]])
  //           << '\n';
  //
  // std::cout << this->file_lines_pointers_[first_lines[6]] << '\n';
  // std::cout << this->FileGetRhyme(this->file_lines_pointers_[first_lines[6]])
  //           << '\n';

  std::cout << this->file_lines_pointers_[first_lines[0]] << '\n';
  std::cout << this->file_lines_pointers_[first_lines[1]] << '\n';
  std::cout << rhymed_lines[0] << '\n';
  std::cout << rhymed_lines[1] << '\n';

  std::cout << this->file_lines_pointers_[first_lines[2]] << '\n';
  std::cout << rhymed_lines[2] << '\n';
  std::cout << this->file_lines_pointers_[first_lines[3]] << '\n';
  std::cout << rhymed_lines[3] << '\n';

  std::cout << this->file_lines_pointers_[first_lines[4]] << '\n';
  std::cout << this->file_lines_pointers_[first_lines[5]] << '\n';
  std::cout << rhymed_lines[5] << '\n';
  std::cout << rhymed_lines[4] << '\n';

  std::cout << this->file_lines_pointers_[first_lines[6]] << '\n';
  std::cout << rhymed_lines[6] << '\n';
}
