{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Text.Megaparsec
import Text.Megaparsec.Char
import Data.Void ( Void )

newtype Identifier = Identifier
  { getId :: String
  } deriving (Show)

data SExp
  = SSExp SExp [SExp]
  | SInteger Integer
  | SString String
  | SBool Bool
  | SIdentifier Identifier
  deriving (Show)

type Parser = Parsec Void String

bool :: Parser Bool
bool = False <$ string "false" <|> True <$ string "true"

main = putStrLn "Hello, World!"
