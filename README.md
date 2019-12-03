# AppUsingStaticLib
Sample showing How to use static library in existing Project

#1 
After the project is created, we are ready to integrate the library we created in the previous section.
The first thing is that we need to add the compiled library’s files to the new project. To reach that, right-click on the project name in the project navigator and select Show in Finder.

#2
In the opened Finder’s window, create a new folder in the project’s root folder and name it lib.

#3
Go back to the library project in Xcode, find the file (.a / your static library) in the project navigator, right-click on it, and select Show in Finder.

#4
You will find the .a file and .swiftmodule folder there. Copy and paste them both to the your_project/lib folder.

#5
Move back to Xcode and right-click on the project’s name again, select Add files to ...

In the window that appears, make sure that the Create Groups radio button is selected, select lib folder, and press Add.

#6
Now you have the library for your new project and Xcode even did some integration for you. Now your task is to check if it did it correctly and perform some additional steps.
Select the project’s name in project navigator, then select General, and select your’s application target.
The section Linked Frameworks and Libraries has to contain a line with .a (static lib). If it does not, press the + button and select it manually. Make sure that the Required status is selected.

After that, go to the Build Phases tab, expand Link Binary with Libraries, and make sure that it contains a line with .a(static lib). If it does not, again, add it manually and set it to required.

#7
In the Build Settings (1) tab, select your target (2), select All (3), and Combined (4).
In the search field (5) in the top-right corner, type Search Paths. Copy the path from Library Search Path (6) and paste it to Import Paths (7).

#8
If there is no value in Library Search Path, add a new one, $(PROJECT_DIR)/lib. Do the same for Import Paths.

# Now import you staic lib and use in your project
