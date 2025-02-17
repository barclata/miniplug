Require Strings.String.
Require Import Loader. (* Does not work in proof General (_CoqProject needed?) *)

MiniPlug.
MiniString.
Print my_empty_string.
Fail MiniString. (* should fail cause my_empty_string already exists *)
