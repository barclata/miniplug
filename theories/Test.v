(* Require Strings.String. *)
Require Import Loader.

MiniPlug.
MiniString.
Print my_empty_string.
Fail MiniString. (* should fail cause my_empty_string already exists *)
