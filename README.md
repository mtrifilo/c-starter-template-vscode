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
├── hello_world.c         # Sample C program
└── README.md             # This file
```

## Building and Running

1. Open the project in VSCode
2. Build: Press `F5` or use the Terminal command:
   ```bash
   clang -Wall -Wextra -Wpedantic -std=c17 hello_world.c -o hello_world
   ```
3. Run the program:
   ```bash
   ./hello_world
   ```

## Code Style and Linting

This template includes clang-tidy configuration for basic code quality checks. The linter will help enforce:

- Meaningful constant names (no magic numbers)
- Proper variable initialization
- Basic code style guidelines

The `compile_commands.json` file helps clang-tidy understand how your project is built, enabling accurate code analysis.

## License

This template is available under the MIT License.
