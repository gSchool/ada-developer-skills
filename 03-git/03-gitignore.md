# The .gitignore File

## Learning Goals

By the end of this less we will be able to...

- Explain the use of the `.gitignore` file
- Write a `.gitignore` file to hide files from Git.

## The `.gitignore` File

Git is a pretty useful tool, but every once in a while there's a file you don't want it to track. Maybe it's a big file that is generated automatically (like a log file), or maybe it's full of sensitive data that you don't want on GitHub (this will be important when we get to later projects). Fortunately git has a solution to this problem.

First, let's create a file we don't want git to know about. Assuming you're still in the `git-clone-practice` repository from before

```bash
touch secret-secrets.txt
```

If you run `git status`, you should see the file marked as `untracked`. This is a good start, but we want git to ignore it entirely. To do so, we'll create a file called `.gitignore`. Note the leading `.`, which marks this as a hidden file, meaning it won't show up in Finder or in the results of `ls` without the `-a` option. Git looks for this file in the project root, and anything listed there will be completely ignored. Create the file at the project root

```bash
touch .gitignore
```

And add the following lines to it

```gitignore
# Don't push secrets to GitHub!
secret-secrets.txt
```

And then add the `.gitignore` file to git, like you would any other file

```bash
git add .gitignore
git commit -m "Add .gitingore file, ignore secret-secrets.txt"
```

Now if you run `git status`, you shouldn't see your secrets file at all. Perfect!

## Sample `.gitignore` File

For Ruby projects you could start with this handy `.gitignore` file which ignores the `.DS_Store` file and the `.idea` directory created by Rubymine.

```.gitignore
.DS_Store
.idea
```

## The `.gitignore_global` File

If you want git to ignore certain files everywhere across all of your repositories you can create a `.gitignore_global` file in your home directory.

You can create the file in terminal with:

```
touch ~/.gitignore_global
echo ".DS_Store" >> ~/.gitignore_global
echo ".idea" >> ~/.gitignore_global
```

**Please run these commands now to exclude these files from your pull requests**.  This will help your instructor when they give you feedback on your pull requests.

## Summary

The `.gitignore` file is used to exclude files and folders from git allowing you to keep information you **dont'** want to publish on the internet private.  It is a good idea to list files and folders holding confidential information such as API keys (more on this later) in the `.gitignore` file.  It is also handy to keep unnecessary files such as `.DS_Store` and Rubymine's `.idea` directory listed in `.gitignore`.