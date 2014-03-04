{-# LANGUAGE OverloadedStrings, TypeOperators, GADTs, DataKinds, KindSignatures #-}

module AnonRecs where

import GHC.TypeLits
import Data.String

data Foo 

data (:=>) :: Symbol -> * -> * where
  Value :: t -> sy :=> t
  

-- (==>) :: Symbol -> b -> (a::Symbol) :=> b
-- s ==> x = Value x 

--myRec = "name" ==> "Tom"

myRec2 :: "age" :=> Int
myRec2 = Value 36 -- "age" ==> 36 

--instance IsString Symbol where
--   fromString s = unsafeSingSymbol s