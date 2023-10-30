import sys
import os

def replace_function_name(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
        print("Content: ", content);
        content = content.replace("Actions", "Action")

        with open(file_path, 'w') as file:
            file.write(content)

# Get the file path from the command line arguments
if len(sys.argv) != 2:
    print("Usage: python modify_code.py <file_path>")
    sys.exit(1)

file_path = sys.argv[1]

replace_function_name(file_path)
