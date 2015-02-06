module Audio.WebAudio.AnalyserNode where

import Control.Monad.Eff
import Audio.WebAudio.Types
import Data.Foreign.OOFFI

setFftSize :: forall wau eff. OscillatorNode -> Number -> Eff (wau :: WebAudio | eff) Number
setFftSize = setter "fftSize"

getFftSize :: forall wau eff. OscillatorNode -> Eff (wau :: WebAudio | eff) Number
getFftSize = getter "fftSize"
