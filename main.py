#!/bin/bash/python3
import sys

def process_args():
    values = []
    for arg in range(1, len(sys.argv)):
        try:
            temp = int(sys.argv[arg], 16)
        except:
            print(f"Provided value: {sys.argv[arg]} | Not valid hex")
            continue
        values.append(str(sys.argv[arg]))

    return values

def calculate_offset(values: list[hex]):
    total = 0
    for value in values:
        total += int(value, 16)
    return total

def main():
    values = process_args()
    total = calculate_offset(values)

    print(f"\nTotal: {hex(total)}")

main()
