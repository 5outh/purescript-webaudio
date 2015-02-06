module Audio.WebAudio.AnalyserNode where

import Control.Monad.Eff
import Audio.WebAudio.Types
import Data.Foreign.OOFFI

{- Getters/Setters for all AnalyserNode properties -}

setFftSize :: forall wau eff. OscillatorNode -> Number -> Eff (wau :: WebAudio | eff) Number
setFftSize = setter "fftSize"

getFftSize :: forall wau eff. OscillatorNode -> Eff (wau :: WebAudio | eff) Number
getFftSize = getter "fftSize"

getFrequencyBinCount :: forall wau eff. OscillatorNode -> Eff (wau :: WebAudio | eff) Number
getFrequencyBinCount = getter "frequencyBinCount"

setMaxDecibels :: forall wau eff. OscillatorNode -> Number -> Eff (wau :: WebAudio | eff) Number
setMaxDecibels = setter "maxDecibels"

getMaxDecibels :: forall wau eff. OscillatorNode -> Eff (wau :: WebAudio | eff) Number
getMaxDecibels = getter "maxDecibels"

setMinDecibels :: forall wau eff. OscillatorNode -> Number -> Eff (wau :: WebAudio | eff) Number
setMinDecibels = setter "MinDecibels"

getMinDecibels :: forall wau eff. OscillatorNode -> Eff (wau :: WebAudio | eff) Number
getMinDecibels = getter "minDecibels"

setSmoothingTimeConstant :: forall wau eff. OscillatorNode -> Number -> Eff (wau :: WebAudio | eff) Number
setSmoothingTimeConstant = setter "smoothingTimeConstant"

getSmoothingTimeConstant :: forall wau eff. OscillatorNode -> Eff (wau :: WebAudio | eff) Number
getSmoothingTimeConstant = getter "smoothingTimeConstant"

getByteFrequencyData :: forall eff. OscillatorNode -> Eff (wau :: WebAudio | eff) [Number]
getByteFrequencyData = method0Eff "getByteFrequencyData"

getByteTimeDomainData :: forall eff. OscillatorNode -> Eff (wau :: WebAudio | eff) [Number]
getByteTimeDomainData = method0Eff "getByteTimeDomainData"

getFloatFrequencyData :: forall eff. OscillatorNode -> Eff (wau :: WebAudio | eff) [Number]
getFloatFrequencyData = method0Eff "getFloatFrequencyData"

getFloatTimeDomainData :: forall eff. OscillatorNode -> Eff (wau :: WebAudio | eff) [Number]
getFloatTimeDomainData = method0Eff "getFloatTimeDomainData"
