
# Dot files

Mostly kept here (and public) to make it easy to add to a new machine

Add to system like so:
```bash
git clone THE_URL
cd .dotfiles  # Or wherever it is
bash build_links.sh
bash external_build_links.sh
```

**Note: build_links.sh WILL delete all the existing dot files before replacing them with a soft link to these dot files**

## gitignore_global

To have git use the gitignore_global file it may be required to add the following to the config file ~/.gitconfig

```
[core]
        excludesfile = /home/jakec/.gitignore_global
```

also here is a selection of git aliases that are handy
```
[alias]
        co = checkout
        ci = commit
        st = status
        br = branch
        hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
        type = cat-file -t
        dump = cat-file -p
        a = add
        p = pull
        stat = diff --stat
        stats = diff --stat --staged
        url = remote show origin
        dbr = branch -d
```

