module Toppokki.Request where

import Control.Promise (Promise)
import Data.Function.Uncurried as FU
import Effect (Effect)
import Effect.Aff (Aff)
import Foreign.Object (Object)
import Prelude (Unit)
import Prim.Row as Row
import Toppokki.FFI (runPromiseAffE2)
import Toppokki.Types (Request)

type ContinueOptions =
  ( url :: String
  , method :: String
  , postData :: String
  , headers :: Object String
  )

continue
  :: forall options trash
   . Row.Union options trash ContinueOptions
  => { | options }
  -> Request
  -> Aff Unit
continue = runPromiseAffE2 _continue

url :: Request -> String
url = FU.runFn1 _url

headers :: Request -> Object String
headers = FU.runFn1 _headers

foreign import _continue :: forall options. FU.Fn2 options Request (Effect (Promise Unit))
foreign import _url :: FU.Fn1 Request String
foreign import _headers :: FU.Fn1 Request (Object String)
