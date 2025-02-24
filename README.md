# MiniPlug

## First Time Build

1. `dune build`
2. `opam install -w .` (if you just want to track the most recent commit on master, not working state of the source, then remove the `-w`)

## Development/Update Builds

1. `dune clean`
2. `dune build`
3. `opam update`
4. `opam upgrade`

## Usage

In another project, use `From MiniPlug Require Import Loader` and then the `MiniPlug.` and `MiniString.` commands should be available for you.
