import os
import std/strutils

func is_digit(c: char): bool =
    return c in "0123456789"

func reversed(s: string): string =
    var reverse = ""
    for i in 0 ..< s.len:
        reverse.add(s[s.len - i - 1])
    return reverse

func first_digit(s: string): int =
    for char in s:
        if char.is_digit():
            return parse_int($char)
    return 0

func trebuchet(file_content: string): int =
    let lines = file_content.split_lines()
    var sum = 0
    for line in lines:
        sum += line.first_digit() * 10
        sum += line.reversed().first_digit()
    return sum

echo command_line_params()[0]
    .read_file()
    .trebuchet()

