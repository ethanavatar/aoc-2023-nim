import os
import std/strutils

proc is_digit(c: char): bool {.noSideEffect.} =
    return c in "0123456789"

proc reversed(s: string): string {.noSideEffect.} =
    var reverse = ""
    for i in 0 ..< s.len:
        reverse.add(s[s.len - i - 1])
    return reverse

proc first_digit(s: string): int {.noSideEffect.} =
    for char in s:
        if char.is_digit():
            return parse_int($char)
    return 0

proc trebuchet(file_content: string): int {.noSideEffect.} =
    let lines = file_content.split_lines()
    var sum = 0
    for line in lines:
        sum += line.first_digit() * 10
        sum += line.reversed().first_digit()
    return sum

echo command_line_params()[0]
    .read_file()
    .trebuchet()

