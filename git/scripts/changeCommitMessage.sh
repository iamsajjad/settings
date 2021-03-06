
#https://help.github.com/en/github/committing-changes-to-your-project/changing-a-commit-message

Amending the message of older or multiple commit messages

If you need to amend the message for multiple commits or an older commit, you can use interactive rebase, then force push to change the commit history.

    On the command line, navigate to the repository that contains the commit you want to amend.

    Use the git rebase -i HEAD~n command to display a list of the last n commits in your default text editor.

    $ git rebase -i HEAD~3 # Displays a list of the last 3 commits on the current branch

    The list will look similar to the following:

    pick e499d89 Delete CNAME
    pick 0c39034 Better README
    pick f7fde4a Change the commit message but push the same commit.

    # Rebase 9fdb3bd..f7fde4a onto 9fdb3bd
    #
    # Commands:
    # p, pick = use commit
    # r, reword = use commit, but edit the commit message
    # e, edit = use commit, but stop for amending
    # s, squash = use commit, but meld into previous commit
    # f, fixup = like "squash", but discard this commit's log message
    # x, exec = run command (the rest of the line) using shell
    #
    # These lines can be re-ordered; they are executed from top to bottom.
    #
    # If you remove a line here THAT COMMIT WILL BE LOST.
    #
    # However, if you remove everything, the rebase will be aborted.
    #
    # Note that empty commits are commented out

    Replace pick with reword before each commit message you want to change.

    pick e499d89 Delete CNAME
    reword 0c39034 Better README
    reword f7fde4a Change the commit message but push the same commit.

    Save and close the commit list file.

    In each resulting commit file, type the new commit message, save the file, and close it.

    Force-push the amended commits.

    $ git push --force

