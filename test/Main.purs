module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.Data.GraphQL.ParseSimple (testParser)
import Test.Data.GraphQL.ParseFull0 (testFullDoc)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (runSpec)

main ∷ Effect Unit
main =
  launchAff_
    $ runSpec [ consoleReporter ] do
        testParser
        testFullDoc
