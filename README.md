# Conflict Marker Verification Script

## Overview

This bash script is designed to recursively search through a specified directory and its subdirectories to find files containing conflict markers. Conflict markers are typically inserted by version control systems (like Git) during a merge conflict and appear as: <<<<<<< ======= >>>>>>>


The script will report any file containing these markers.

## Usage

### Prerequisites

- Unix-like operating system (e.g., Linux, macOS)
- Bash shell

### Getting Started

1. **Clone the repository** (or download the script directly):
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Make the script executable** (if not already executable):
    ```sh
    chmod +x verify_conflict.sh
    ```

3. **Run the script** with the directory you want to scan as an argument:
    ```sh
    ./verify_conflict.sh <directory>
    ```

### Script Details

- **verify_conflict.sh**: The main script file.

### Example

To scan a directory named `my_project`:

```sh
./verify_conflict.sh my_project
```

### Script Output
If any file in the specified directory or its subdirectories contains conflict markers, the script will output the file path and a message indicating that it contains conflict markers. For example:

```
File my_project/src/main.c contains conflict markup
File my_project/docs/readme.md contains conflict markup
```
