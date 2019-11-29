{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "toppokki"
, dependencies =
    [ "aff-promise"
    , "console"
    , "effect"
    , "foreign-generic"
    , "foreign-object"
    , "functions"
    , "milkis"
    , "node-buffer"
    , "node-http"
    , "node-process"
    , "nullable"
    , "option"
    , "prelude"
    , "psci-support"
    , "record"
    , "test-unit"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
