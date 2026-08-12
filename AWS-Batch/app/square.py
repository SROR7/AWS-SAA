import sys

def square(num):
    return num * num


if __name__ == "__main__": 
    if len(sys.argv) != 2: 
        print("Usage: square.py <number>")
        sys.exit(1)

    num = int(sys.argv[1])
    result = square(num)
    print(f"the square of {num} is {result}")