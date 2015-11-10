- How does tracking and adding changes make developers' lives easier?
It allows developers to see who made certain changes and if needed they can go back in time to a certain point in the project.

- What is a commit?
A commit is saving your project as it stands currently so that you can go back to that exact point at any time in the future.

- What are the best practices for commit messages?
Keep the first line concise like the subject to an email. Add a blank space and then add an additional paragraph with more description if needed. Wrap the lines around 72 characters so it's easier to read in the terminal. The message tense should read as to what committing will do - not what you did in the past tense.

- What does the HEAD^ argument mean?
HEAD^ points to the last commit.

- What are the 3 stages of a git change and how do you move a file from one stage to the other?
  1. Making changes to or adding files to your project.
  2. Once you've made the changes you -git add to stage the changes.
  3. Enter -git commit -m "message" to commit these changes. Now you have a save point that you can always refer back to.

- Write a handy cheatsheet of the commands you need to commit your changes?
-git add "file name" or use "." to add all changed files at once.
-git commit -m "commit message" to commit the files

- What is a pull request and how do you create and merge one?
It's a safe way to add code from one branch to the master branch. You push your branch to GitHub and then go to your repo and select "Compare & Pull Request". You'll see an option to "create a pull request". Then there's an option to "merge pull request". Select that and your done.

- Why are pull requests preferred when working with teams?
When you create a pull request you give others a chance to review your code before merging with the master branch. They may catch issues that you can fix before merging.