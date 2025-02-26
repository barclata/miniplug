# MiniPlug

## First Time Build

1. `dune build`
2. `opam install -w .` (if you just want to track the most recent commit on master, not working state of the source, then remove the `-w`)
#### Note: This -w flag is apparently not working currently, so I suggest the following approach.

## Workaround Builds
1. Write code
2. Commit code to main/master branch
3. Do the remaining steps

## Development/Update Builds

1. `dune clean`
2. `dune build`
3. `opam update`
4. `opam upgrade`

## Usage

In another project, use `From MiniPlug Require Import Loader` and then the `MiniPlug.` and `MiniString.` commands should be available for you.
