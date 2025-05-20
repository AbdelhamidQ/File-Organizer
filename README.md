## How to run Script 

```
bash file_organizer.sh directory_name 
```
the `directory_name` should be the name of the directory that has the files that need orginazation 

## Script Features

- Accepts a directory path as a command-line argument.
- Checks if the provided path is a valid directory.
- Creates subdirectories: Images, Documents, Music, Videos, Others, and dups (if they do not already exist).
- Moves files into the appropriate subdirectory based on their file extension.
- If a file with the same name already exists in the target subdirectory, the duplicate is moved to the dups directory.
- Displays informative messages for each action.
- Only organizes files in the specified directory (not subdirectories).

## Assumptions made

- the files the need orginazation are all in a single directory that is passed as an argument to the script
- Duplicate files are not renamed, but moved to the `dups` directory.

## Additional Notes

- i used Parameter expansion to get the files extentions and the path for each file which i learned from `https://devhints.io/bash`
- i included a testing.sh which creates a `sample_dir` which has a file with each of the extentions for testing the script 