# C Starter Template

A simple C project template configured with Clang and Make, featuring static analysis and code formatting support. Includes integration with Visual Studio Code for an enhanced development experience.

## Prerequisites

- Clang compiler
- clang-tidy (for static analysis)
- clang-format (for code formatting)
- make
- Visual Studio Code
- C/C++ VSCode extension

## Project Structure

```
.
├── .clang-tidy           # Clang-tidy configuration
├── .vscode/              # VSCode configuration files
├── Makefile             # Build system configuration
├── hello_world.c        # Sample C program
└── README.md            # This file
```

## Building and Running

You can build and run the project either through Make commands or VSCode:

### Using Make (Command Line)

1. **Build the project**:

   ```bash
   make
   ```

2. **Run the program**:

   ```bash
   ./hello_world
   ```

3. **Clean build artifacts**:

   ```bash
   make clean
   ```

4. **Run static analysis**:

   ```bash
   make analyze
   ```

5. **Format code**:
   ```bash
   make format
   ```

### Using VSCode

1. **Build**: Press `F7` or use Command Palette (`Cmd+Shift+P`) → `Tasks: Run Build Task`
2. **Run/Debug**: Press `F5` to run with debugging
3. **Format**: Right-click in editor → `Format Document` or press `Shift+Alt+F`
4. **Static Analysis**: Problems panel will show clang-tidy warnings automatically

## Adapting for Your Own Project

To use this template for your own project:

1. **Rename or replace the sample file**:

   - Rename `hello_world.c` to your preferred name
   - Update the `TARGET` variable in the Makefile to match your new filename
   - Update tasks in `.vscode/tasks.json` if you renamed the main file

2. **Customize clang-tidy rules**:

   - Edit `.clang-tidy` to adjust static analysis rules based on your project needs
   - VSCode will automatically use these rules for inline diagnostics

3. **Customize VSCode settings** (optional):

   - `.vscode/settings.json`: Editor and language server settings
   - `.vscode/tasks.json`: Build and analysis tasks
   - `.vscode/launch.json`: Debug configurations

4. **Update .gitignore**:
   - Add your new executable name to the `.gitignore` file if you renamed the project

## Code Style and Analysis

This template includes:

- clang-tidy configuration for static analysis (both command line and VSCode integration)
- clang-format for consistent code formatting (both command line and VSCode integration)
- Compiler warnings enabled (-Wall -Wextra -pedantic)
- VSCode IntelliSense for code navigation and inline error checking

## IDE Features

Visual Studio Code provides several features when using this template:

- Syntax highlighting
- IntelliSense code completion
- Go to definition/references
- Inline error checking and static analysis
- Integrated debugging with lldb
- Task integration for building and analysis
- Source control integration
- Integrated terminal

## License

This template is available under the MIT License.
