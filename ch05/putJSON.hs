module putJSON where

import Data.List
import SimpleJSON

renderJValue :: JValue -> String
renderJValue (JString s) = s
renderJValue (JString s) = show s

