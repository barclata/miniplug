open EConstr
let string_type () =
  let gref = Coqlib.lib_ref "core.string.type" in
  match gref with
  | IndRef ind -> mkIndU(ind, EInstance.empty)
  | _ -> failwith "couldn't find reference"

let mkEmptyString () =
  let gref = Coqlib.lib_ref "core.string.empty" in
  match gref with
  | ConstructRef cstr -> mkConstructU(cstr,  EInstance.empty)
  | _ -> failwith "couldn't find reference"

let declare_empty_string () =
  let env = Global.env () in
  let sigma = Evd.from_env env in
  let info = Declare.Info.make () in
  let cinfo = Declare.CInfo.make
      ~name:(Names.Id.of_string "my_empty_string")
      ~typ:(Some (string_type ())) () in
  let body = (mkEmptyString ()) in
  let _ =
    Declare.declare_definition
      ~info
      ~cinfo
      ~opaque:false
      ~body
      sigma
  in ()
