# What the git?!?

An incredibly basic guide to using a tiny part of git.

This document focusses on how to fetch a git repo, update it, and pull
changes from other repositories.

# Creating a repo

`git clone <url>` will download a repo. If the download is taking a
while you can save some time with `git clone --depth=1`. This avoids
fetching the full history, which can be especially useful if the
history is full of old Voron STLs.

When you are fetching from Github you can fetch via SSH or HTTPS. The
latter can be preferred as you will not need a Github account or
credentials set up. After clicking "Clone or download" make sure you
see "Clone with HTTPS", and click "Use HTTPS" if you don't.

# Updating a repo

To fetch the latest changes, run `git pull origin`. Note that your
current working directory will need to be inside the repo.

If you've made some local changes there's a chance this command will
fail. There are plenty of ways to fix it that are complex -- one
simple way is to blow away all local changes and start fresh:

```
git fetch origin
git reset --hard origin/master
```

Note that this *will* undo any changes you've made.

# Fetching from another repo

Sometimes a fork will have a change you want to try. You can wait for it
to be merged back into the main repo, or you can fetch it directly into
your repo. To do this, run `git pull <url> <branch-name>`. This will
compare your repo to the one you provide, retrieve all commits that are
new-to-you, and attempt to apply them to your local copy.

Sometimes the retrieved changes overlap with changes in your repo, and
conflict. This can happen due to changes you've made, or if two changes 
from different repos overlap. When this occurs git will print an error
about a conflict, and ask you to fix it.

The most reliable way to fix it is to start fresh, using the command above
in [Updating a repo](#updating-a-repo).

