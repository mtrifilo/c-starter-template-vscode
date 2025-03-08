# C Starter Template

A simple C project template configured for Visual Studio Code with basic linting support.

## Prerequisites

- Clang compiler
- Visual Studio Code
- C/C++ VSCode extension
- clang-tidy (for linting)

## Project Structure

```
.
├── .clang-tidy           # Clang-tidy configuration
├── compile_commands.json # Compilation database for clang tools
├── .vscode/              # VSCode configuration files
├── hello_world.c         # Sample C program
└── README.md             # This file
```

## Building and Running

1. Open the project in VSCode
2. Build: Press `F5` or use the Terminal command:
   ```bash
   clang -Wall -Wextra -Wpedantic -std=c23 hello_world.c -o hello_world
   ```
3. Run the program:
   ```bash
   ./hello_world
   ```

## Adapting for Your Own Project

To use this template for your own project:

1. **Rename or replace the sample file**:

   - Rename `hello_world.c` to your preferred name (e.g., `my_project.c`)
   - Or create new `.c` and `.h` files for your project

2. **Update the compile_commands.json**:

   - Open `compile_commands.json`
   - Replace all instances of `hello_world.c` with your new filename(s)
   - Update the output file name (`-o hello_world` to `-o my_project`)
   - Ensure the C standard is set to `-std=c23`

3. **Update VSCode configuration files**:

   - The default configuration builds and debugs the currently active file
   - For a multi-file project, modify `.vscode/tasks.json` to include all source files
   - Update `.vscode/launch.json` to point to your specific executable

4. **Update build commands**:

   - For small projects with a few files:

     ```bash
     clang -Wall -Wextra -Wpedantic -std=c23 file1.c file2.c -o my_project
     ```

   - For larger projects, consider these approaches:

     a. Using wildcards (simple but less control):

     ```bash
     clang -Wall -Wextra -Wpedantic -std=c23 src/*.c -o my_project
     ```

     b. Using Make (recommended for medium-sized projects):
     Create a Makefile with:

     ```makefile
     CC = clang
     CFLAGS = -Wall -Wextra -Wpedantic -std=c23
     SRC = $(wildcard src/*.c)
     OBJ = $(SRC:.c=.o)
     TARGET = my_project

     all: $(TARGET)

     $(TARGET): $(OBJ)
         $(CC) $(CFLAGS) -o $@ $^

     %.o: %.c
         $(CC) $(CFLAGS) -c $< -o $@

     clean:
         rm -f $(OBJ) $(TARGET)
     ```

     c. Using CMake (recommended for large projects):
     Create a CMakeLists.txt with:

     ```cmake
     cmake_minimum_required(VERSION 3.10)
     project(my_project C)

     set(CMAKE_C_STANDARD 23)
     set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wpedantic")

     file(GLOB SOURCES "src/*.c")
     add_executable(my_project ${SOURCES})
     ```

     Then build with:

     ```bash
     mkdir build && cd build
     cmake ..
     make
     ```

5. **Customize clang-tidy rules**:

   - Edit `.clang-tidy` to adjust linting rules based on your project needs

6. **Update .gitignore**:
   - Add your new executable name to the `.gitignore` file
   - Example: Add `my_project` to exclude your compiled binary

## Code Style and Linting

This template includes clang-tidy configuration for basic code quality checks. The linter will help enforce:

- Meaningful constant names (no magic numbers)
- Proper variable initialization
- Basic code style guidelines

The `compile_commands.json` file helps clang-tidy understand how your project is built, enabling accurate code analysis.

## License

This template is available under the MIT License.
