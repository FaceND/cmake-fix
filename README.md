# CMake Fix for Flutter and Dart Projects

If you encounter a CMake error in your Flutter or Dart project, you can use this batch file to fix it.

## Usage
1. Download the `cmake_fix.bat` file from this [repository.](https://github.com/FaceND/cmake-fix.git)
2. Paste the file into your Flutter or Dart project directory.
2. Open the command prompt or terminal and navigate to the project directory.
3. Run the `cmake_fix.bat` file by typing the following command and pressing Enter:
```
cmake_fix.bat
```
4. Wait for the script to finish running. It will delete the `CMakeLists.txt` file in the `windows` folder, run the `flutter clean` and `flutter create .` commands to fix the CMake error, and then run the `cmake_fix.bat` file to fix any remaining errors.
5. Once the script has finished running, try building your project again. The CMake error should be fixed now.

## Notes 
- `cmake_fix.bat` script is a Windows batch file and is not compatible with `macOS`. However, you can use a shell script on macOS to achieve the same result. Here's an example of what the script would look like:

```
#!/bin/bash

cd ios
rm CMakeLists.txt
cd ..
flutter clean
flutter create .
```

Save the above code in a text editor as cmake_fix.sh and then run it in the terminal on your macOS machine using the following command:

```
./cmake_fix.sh
```

Make sure the script has the necessary permissions to be executable by running the following command in the terminal:

```
chmod +x cmake_fix.sh
```
This will make the script executable and allow you to run it with the above command.

## License
This script is licensed under the [MIT License](LICENSE).
