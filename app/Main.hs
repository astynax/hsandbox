{-# LANGUAGE LambdaCase #-}

module Main where

import System.Environment (getArgs)

main :: IO ()
main = getArgs >>= \case
  [x] -> scaffold x
  _ -> putStrLn "Gimme some name!"

scaffold :: String -> IO ()
scaffold name = do
  writeFile
    ("src/" <> name <> ".hs")
    ("module " <> name <> " where\n")
  appendFile "src/Sandbox.hs"
    ("import " <> name <> "\n")
  appendFile "hsandbox.cabal"
    ("                    , " <> name <> "\n")
