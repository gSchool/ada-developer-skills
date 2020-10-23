# Managing Git Branches

## Learning Goals

- Explore how Git tracks _branches_
- Learn common uses of the `checkout`(https://git-scm.com/docs/git-checkout) or [`switch`](https://git-scm.com/docs/git-switch) commands for managing _branches_
- Examine the difference between _merge_ and _rebase_
- Discuss when to _branch_, when to _merge_, and when to _rebase_

## External Branching Tutorial

In this lesson progress through the `Introduction Sequence` lessons 1-4 (https://learngitbranching.js.org/).  Take notes on the commands to:

- create a branch
- switch between branches
- merge the changes from one branch into another

![Git Branching Tutorial Lesson](images/branching-tutorial.png)

**hint**:  You can use the reference material at the bottom of this lesson if you get stuck.

## Branching Video Lesson

Next watch the following lesson and observe how he illustrates how branches are created and what purposes branches serve. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/oPpnCh7InLY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 4ff73bdb-92da-4e9f-90b9-a58dcf73a4e2
* title: Why is it called a branch?
* points: 1
* topics: git

##### !question

Why do you think the this technique is called branching?  

##### !end-question

##### !placeholder

Why the term branching?

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

Because instead of a long linear line of commits you create a series of commits that "branches" off from the parent branch.  When drawing it out it looks like a tree's branch separating from the main trunk.

![branch image](images/git-branch.png)

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: e50fce3f-b896-4651-b502-62557b6cfbb9
* title: When does git have trouble merging?
* points: 1
* topics: git

##### !question

You create a pull request to pull in changes from the "trip" branch in your Rideshare app, and Github says there is a conflict.  

What could cause this?

##### !end-question

##### !placeholder

Causes of a merge conflict

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

You can get merge conflicts when both branches edit the same line in the same file.  Git can't figure out which changes to keep, or how to combine them.  

So git lets you figure out the best way to merge them.  That's called a _merge conflict_.

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 221b418a-2065-47e9-aebe-a46e29481162
* title: Creating a Branch
* points: 1
* topics: git

##### !question

You want to **create** and **switch to** a new branch called, "Unicorn".  How can you do so?

##### !end-question

##### !options

* `git commit -m "Unicorn"` or `git add`
* `git branch -D Unicorn`  or `git switch Unicorn` 
* `git checkout -b Unicorn` or `git switch -c Unicorn`
* `git checkout Unicorn` or `git switch Unicorn`

##### !end-options

##### !answer

* `git checkout -b Unicorn` or `git switch -c Unicorn`

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
##### !explanation

If you want to switch to another branch or commit you use `git checkout <branchname>`, if you want to create a new branch with that name and switch to it you use `git checkout -b <branchname>`.  An alternative new command is `git switch -c <branchname>`.  The options (-b for checkout or -c for switch) are required to **create** a new branch using these commands.

`git branch -D <branchname>` will _delete_ the branch!  Be careful!

##### !end-explanation

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Branches - Reference material

This material is for your reference when researching branching commands in git.

### File Commands

- `git checkout [path/to/file]`: reverts any changes to the specified file(s) to their last committed state.
- `git checkout .`: reverts all changes to tracked files to their last committed state.

### Branch Maintenance Commands

#### Git Checkout

- `git checkout [branch_name]`: switches Git to an __existing__ branch.
- `git branch [branch_name]`: creates a new branch _but does not switch to it_.
- `git checkout -b [branch_name]`: creates a new branch and switches Git to this __new__ branch.
- `git branch -a`: shows a list of all local and remote branches.
- `git branch -d [branch_name]`: delete the specified branch

#### Git Switch

The `git switch` command is quite new, as `checkout` gets used for a lot of things besides changing branches.

- `git switch [branchname]`:  switches Git to an __existing__ branch.
- `git switch -c [branch_name]`: creates a new branch and switches Git to this __new__ branch.


### Branch Sharing Commands

- `git push -u [remote] [branch_name]`: pushes an _untracked_ local branch to the specified remote and instructs Git to keep the two associated. You only use `-u` the very first time you push a new branch upstream.
- `git push [remote] [branch_name]`: pushes commits on the _current branch_ to the _tracked branch_ of a remote.
- `git merge [branch_name]`: performs a recursive merge by first identifying the point of divergence between the _current branch_ and the specified _local branch_ and then applying commits from the specified branch to the current branch in order of commit history.
- `git pull [remote]`: Same as `merge`, except it directs Git to merge a _remote branch_ with the current local branch.

### Rebase Commands

Rebasing is an alternative to merging: it re-writes your history to be linear instead of showing that work was done via concurrent branches.  For now we suggest you stick to merging as a strategy to combine multiple branches in Git instead of rebasing.

It's common in industry due to people being used to workflows from [outdated](https://en.wikipedia.org/wiki/Apache_Subversion) and [obsolete](https://en.wikipedia.org/wiki/Concurrent_Versions_System) legacy version control systems did not support multiple branches well.

It's common when rebasing your code to wind up losing commits and having to attempt to recover them or to encounter the merge conflicts repeately, neither of which happen with the normal merge based workflows.

- `git rebase [branch_name]`: performs a _rebase_ of the current branch. Rebase is a three step process:
  - Rebase identifies the point of divergence between the current branch and the specified branch
  - Rebase removes all commits from current branch to the point of divergence
  - Rebase then applies **new** commits from the specified branch to the current branch
  - Finally, rebase applies the commits unique to the current branch _as new commits to the top of the current branch_.
- `git pull [remote] --rebase`: Same as `rebase`, except it directs Git to rebase a _remote branch_ with the current local branch.

## Resources

- [Git SCM Documentation](https://git-scm.com/book/ch3-2.html)  
- [Atlassian Tutorial](https://www.atlassian.com/git/tutorials/using-branches)
- [Net Ninja Branches Tutorial](https://www.youtube.com/watch?v=QV0kVNvkMxc)
