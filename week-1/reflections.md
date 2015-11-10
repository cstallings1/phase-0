# 1.1 Think About Time

I learned about meditation as a productivity tool and the the Pomodoro technique for time management. I've thought of meditation as a tool to focus in the short term but didn't realize all the positive affects it has on your brain in the long term. Meditating regularly can increase focus, creativity, and memory as well as reduce anxiety and stress. There are four types of meditation - guided (meditation being guided by an instructor), moving (where you focus on whatever you are currently doing), sensory (focusing on sights, sounds, smells, etc.), and mindfulness (clearing your mind of everything). I love that you can do all of these (except guided) even at work sitting at your desk. Time Boxing is a time management technique where you determine a set amount of time you will work on a task uninterrupted. Once the time is up you stop and evaluate progress. This can be done individually using the Pomodoro technique or in a team environment as used in Agile development. The Pomodoro technique would be timing 25 minute increments of steady work with a break in between. I currently manage my time by making lists and prioritizing my activities. I like to be able to cross things off my list; it helps me finish a larger goal in smaller chunks and not get overwhelmed. This has worked for me in the past because I was usually working on things that came pretty easily to me. I can still use this technique during DBC but will definitely need to add to my time management plan because I'm learning something very unfamiliar and challenging. My time management plan is to wake up early to start on the day's work; I'm a morning person and this is when I am most productive.  I'm going to use the Time Boxing technique combined with meditation to stay focused during the day. I plan on trying 45 minute increments and will add meditation to at least one of my breaks. To keep me motivated and to remind myself that I am making progress I'm also going to write down a little note of what I accomplished that day. I can refer back to this later on if I need a reminder that I am moving forward.

# 1.2 The Command Line

A shell provides an interface to an operating system. Shell is a broad term and can include both graphical and text based software across different operating systems. Bash is a specific example of a command line shell. Bash is text based as opposed to Finder which is an example of a graphical shell. I found that changing environment variables was the most confusing part of this exercise for me. I did figure out how to change the PATH variable on my computer but it wasn't completely clear to me why I would want to do that. I was able to use all of the commands in this exercise. Right now I think the most important commands to know are the basic ones - cd, ls, mkdir, rmdir, mv, cp, pwd, touch. It's so much faster to use these commands to move files around as opposed to using Finder. Grep also seems like it will be very useful when looking for something specific in a file.

- pwd: "print working directory" shows where you are currently in your file tree

- ls: lists all directories and files in current directory

- mv: moves a file or directory from one location to another

- cd: changes your current directory to the one specified after "cd"

- ../: moves up a directory. If you did ../../ you would move up two directories.

- touch: creates a new file

- mkdir: creates a new directory

- less: allows you to page through a document one screen full at a time

- rmdir: removes a directory

- rm: removes a file

- help: pulls up a manual showing information on all commands

# 1.3 Forking and Cloning

*To create a new repo*

Log in to your GitHub account and click on the bight green "+ New Repository" button to the right. Fill in the "Repository Name" box with a short descriptive name. Make sure "Public" is selected. Click on the "Create Repository" button at the bottom. You should now see this new repo listed on your GitHub page.

*To fork a repo*

Search GitHub for the repo you want to fork and select it. Click the "Fork" button in the top right corner. If needed, select your profile. GitHut will take you back to your profile and you'll see the repo you just forked.

*To clone a repo*

From your GitHub account select the repo you want to clone. Copy the clone URL listed on the right side of the screen. Open your terminal and cd into the directory you want this repo to be copied to. Enter the command "git clone <clone URL>". You should now be able to enter -ls and see the newly cloned repo; it's now saved locally to your computer.

You would want to fork a repository if you were planning on adding to somebody else's project or just wanted to play around with the code on your own without any chance of changing the original code. It's much quicker than making a new repo and copying code.

I was able to set up git and GitHub without any issues. However, I did learn about SSH keys as a means of secure login along the way. I knew of them but never knew what they did until I had to set up GitHub.