#!/bin/bash

# files 폴더 안에 있는 파일들을 모두 확인
for file in files/*; do
  # 경로 빼고 이름만
  filename=$(basename "$file")

  # 첫 글자만 가져오고 소문자로
  first_char=${filename:0:1}
  lowercase=$(echo "$first_char" | tr 'A-Z' 'a-z')

  # 해당 글자에 해당하는 폴더로
  mv "$file" "$lowercase"/
done
