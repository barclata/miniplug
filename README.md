# MiniPlug

### Important Note:

When building a local project. You **MUST** make sure to commit to the branch in order for it to get updated by the `opam install .`

## Build and Install Steps

1. First make sure you have a clean environment.

- Run `opam remove miniplug`
- Remove directory if it exists `~/.opam/<current_switch>/lib/coq/user-contrib/MiniPlug` (I noticed that this was sometimes not getting deleted by the opam remove)
- Run `dune clean` and remove the pre-existing `miniplug.opam` file

2. Build: `dune build`
3. Install: `opam install .`

## Usage

In another project, use `From MiniPlug Require Import Loader` and then the `MiniPlug.` and `MiniString.` commands should be available for you.
