# chrisgit

![image](/images/image.jpg)

A tiny Git clone built in Ruby to learn how Git works under the hood.

## What it does

Implements the core Git workflow with three commands:

- `chrisgit init` — sets up a `.chrisgit` directory with the objects store, refs, and HEAD
- `chrisgit add <file>` — hashes the file contents, compresses it as a blob, and records it in the index
- `chrisgit commit` — builds a tree from the index, creates a commit object with a message, and updates the current branch ref

## How to use

```bash
chrisgit init
chrisgit add somefile.txt
chrisgit commit
```

## Reading Material

[Thoughtbot](https://thoughtbot.com/blog/rebuilding-git-in-ruby)
