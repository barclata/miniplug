(lang dune 3.16)
(using coq 0.8)
(name miniplug)
(version 0.1)

(package
 (name miniplug)
 (depends
  coq
  dune)
 (synopsis "Tiny plugin to test out things")
 (description  "Lil plugger")
 (maintainers   "tjbarclay@ku.edu")
 (authors      "TJ Barclay")
)

(generate_opam_files true)
