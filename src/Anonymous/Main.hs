{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeApplications #-}

module Main
  ( main
  ) where

import Network.Wai.Handler.Warp
import Servant

type API
   =    "route1" :> Get '[ JSON] String
   :<|> "route2" :> Get '[ JSON] String
   :<|> "route3" :> Get '[ JSON] String
   :<|> "route4" :> Get '[ JSON] String
   :<|> "route5" :> Get '[ JSON] String
   :<|> "route6" :> Get '[ JSON] String
   :<|> "route7" :> Get '[ JSON] String
   :<|> "route8" :> Get '[ JSON] String
   :<|> "route9" :> Get '[ JSON] String
   :<|> "route10" :> Get '[ JSON] String
   :<|> "route11" :> Get '[ JSON] String
   :<|> "route12" :> Get '[ JSON] String
   :<|> "route13" :> Get '[ JSON] String
   :<|> "route14" :> Get '[ JSON] String
   :<|> "route15" :> Get '[ JSON] String
   :<|> "route16" :> Get '[ JSON] String
   :<|> "route17" :> Get '[ JSON] String
   :<|> "route18" :> Get '[ JSON] String
   :<|> "route19" :> Get '[ JSON] String
   :<|> "route20" :> Get '[ JSON] String
   :<|> "route21" :> Get '[ JSON] String
   :<|> "route22" :> Get '[ JSON] String
   :<|> "route23" :> Get '[ JSON] String
   :<|> "route24" :> Get '[ JSON] String
   :<|> "route25" :> Get '[ JSON] String
   :<|> "route26" :> Get '[ JSON] String
   :<|> "route27" :> Get '[ JSON] String
   :<|> "route28" :> Get '[ JSON] String
   :<|> "route29" :> Get '[ JSON] String
   :<|> "route30" :> Get '[ JSON] String
   :<|> "route31" :> Get '[ JSON] String
   :<|> "route32" :> Get '[ JSON] String
   :<|> "route33" :> Get '[ JSON] String
   :<|> "route34" :> Get '[ JSON] String
   :<|> "route35" :> Get '[ JSON] String
   :<|> "route36" :> Get '[ JSON] String
   :<|> "route37" :> Get '[ JSON] String
   :<|> "route38" :> Get '[ JSON] String
   :<|> "route39" :> Get '[ JSON] String
   :<|> "route40" :> Get '[ JSON] String
   :<|> "route41" :> Get '[ JSON] String
   :<|> "route42" :> Get '[ JSON] String
   :<|> "route43" :> Get '[ JSON] String
   :<|> "route44" :> Get '[ JSON] String
   :<|> "route45" :> Get '[ JSON] String
   :<|> "route46" :> Get '[ JSON] String
   :<|> "route47" :> Get '[ JSON] String
   :<|> "route48" :> Get '[ JSON] String
   :<|> "route49" :> Get '[ JSON] String
   :<|> "route50" :> Get '[ JSON] String
   :<|> "route51" :> Get '[ JSON] String
   :<|> "route52" :> Get '[ JSON] String
   :<|> "route53" :> Get '[ JSON] String
   :<|> "route54" :> Get '[ JSON] String
   :<|> "route55" :> Get '[ JSON] String
   :<|> "route56" :> Get '[ JSON] String
   :<|> "route57" :> Get '[ JSON] String
   :<|> "route58" :> Get '[ JSON] String
   :<|> "route59" :> Get '[ JSON] String
   :<|> "route60" :> Get '[ JSON] String
   :<|> "route61" :> Get '[ JSON] String
   :<|> "route62" :> Get '[ JSON] String
   :<|> "route63" :> Get '[ JSON] String
   :<|> "route64" :> Get '[ JSON] String
   :<|> "route65" :> Get '[ JSON] String
   :<|> "route66" :> Get '[ JSON] String
   :<|> "route67" :> Get '[ JSON] String
   :<|> "route68" :> Get '[ JSON] String
   :<|> "route69" :> Get '[ JSON] String
   :<|> "route70" :> Get '[ JSON] String
   :<|> "route71" :> Get '[ JSON] String
   :<|> "route72" :> Get '[ JSON] String
   :<|> "route73" :> Get '[ JSON] String
   :<|> "route74" :> Get '[ JSON] String
   :<|> "route75" :> Get '[ JSON] String
   :<|> "route76" :> Get '[ JSON] String
   :<|> "route77" :> Get '[ JSON] String
   :<|> "route78" :> Get '[ JSON] String
   :<|> "route79" :> Get '[ JSON] String
   :<|> "route80" :> Get '[ JSON] String
   :<|> "route81" :> Get '[ JSON] String
   :<|> "route82" :> Get '[ JSON] String
   :<|> "route83" :> Get '[ JSON] String
   :<|> "route84" :> Get '[ JSON] String
   :<|> "route85" :> Get '[ JSON] String
   :<|> "route86" :> Get '[ JSON] String
   :<|> "route87" :> Get '[ JSON] String
   :<|> "route88" :> Get '[ JSON] String
   :<|> "route89" :> Get '[ JSON] String
   :<|> "route90" :> Get '[ JSON] String
   :<|> "route91" :> Get '[ JSON] String
   :<|> "route92" :> Get '[ JSON] String
   :<|> "route93" :> Get '[ JSON] String
   :<|> "route94" :> Get '[ JSON] String
   :<|> "route95" :> Get '[ JSON] String
   :<|> "route96" :> Get '[ JSON] String
   :<|> "route97" :> Get '[ JSON] String
   :<|> "route98" :> Get '[ JSON] String
   :<|> "route99" :> Get '[ JSON] String
   :<|> "route100" :> Get '[ JSON] String
   :<|> "route101" :> Get '[ JSON] String
   :<|> "route102" :> Get '[ JSON] String
   :<|> "route103" :> Get '[ JSON] String
   :<|> "route104" :> Get '[ JSON] String
   :<|> "route105" :> Get '[ JSON] String
   :<|> "route106" :> Get '[ JSON] String
   :<|> "route107" :> Get '[ JSON] String
   :<|> "route108" :> Get '[ JSON] String
   :<|> "route109" :> Get '[ JSON] String
   :<|> "route110" :> Get '[ JSON] String
   :<|> "route111" :> Get '[ JSON] String
   :<|> "route112" :> Get '[ JSON] String
   :<|> "route113" :> Get '[ JSON] String
   :<|> "route114" :> Get '[ JSON] String
   :<|> "route115" :> Get '[ JSON] String
   :<|> "route116" :> Get '[ JSON] String
   :<|> "route117" :> Get '[ JSON] String
   :<|> "route118" :> Get '[ JSON] String
   :<|> "route119" :> Get '[ JSON] String
   :<|> "route120" :> Get '[ JSON] String
   :<|> "route121" :> Get '[ JSON] String
   :<|> "route122" :> Get '[ JSON] String
   :<|> "route123" :> Get '[ JSON] String
   :<|> "route124" :> Get '[ JSON] String
   :<|> "route125" :> Get '[ JSON] String
   :<|> "route126" :> Get '[ JSON] String
   :<|> "route127" :> Get '[ JSON] String
   :<|> "route128" :> Get '[ JSON] String
   :<|> "route129" :> Get '[ JSON] String
   :<|> "route130" :> Get '[ JSON] String
   :<|> "route131" :> Get '[ JSON] String
   :<|> "route132" :> Get '[ JSON] String
   :<|> "route133" :> Get '[ JSON] String
   :<|> "route134" :> Get '[ JSON] String
   :<|> "route135" :> Get '[ JSON] String
   :<|> "route136" :> Get '[ JSON] String
   :<|> "route137" :> Get '[ JSON] String
   :<|> "route138" :> Get '[ JSON] String
   :<|> "route139" :> Get '[ JSON] String
   :<|> "route140" :> Get '[ JSON] String
   :<|> "route141" :> Get '[ JSON] String
   :<|> "route142" :> Get '[ JSON] String
   :<|> "route143" :> Get '[ JSON] String
   :<|> "route144" :> Get '[ JSON] String
   :<|> "route145" :> Get '[ JSON] String
   :<|> "route146" :> Get '[ JSON] String
   :<|> "route147" :> Get '[ JSON] String
   :<|> "route148" :> Get '[ JSON] String
   :<|> "route149" :> Get '[ JSON] String
   :<|> "route150" :> Get '[ JSON] String
   :<|> "route151" :> Get '[ JSON] String
   :<|> "route152" :> Get '[ JSON] String
   :<|> "route153" :> Get '[ JSON] String
   :<|> "route154" :> Get '[ JSON] String
   :<|> "route155" :> Get '[ JSON] String
   :<|> "route156" :> Get '[ JSON] String
   :<|> "route157" :> Get '[ JSON] String
   :<|> "route158" :> Get '[ JSON] String
   :<|> "route159" :> Get '[ JSON] String
   :<|> "route160" :> Get '[ JSON] String
   :<|> "route161" :> Get '[ JSON] String
   :<|> "route162" :> Get '[ JSON] String
   :<|> "route163" :> Get '[ JSON] String
   :<|> "route164" :> Get '[ JSON] String
   :<|> "route165" :> Get '[ JSON] String
   :<|> "route166" :> Get '[ JSON] String
   :<|> "route167" :> Get '[ JSON] String
   :<|> "route168" :> Get '[ JSON] String
   :<|> "route169" :> Get '[ JSON] String
   :<|> "route170" :> Get '[ JSON] String
   :<|> "route171" :> Get '[ JSON] String
   :<|> "route172" :> Get '[ JSON] String
   :<|> "route173" :> Get '[ JSON] String
   :<|> "route174" :> Get '[ JSON] String
   :<|> "route175" :> Get '[ JSON] String
   :<|> "route176" :> Get '[ JSON] String
   :<|> "route177" :> Get '[ JSON] String
   :<|> "route178" :> Get '[ JSON] String
   :<|> "route179" :> Get '[ JSON] String
   :<|> "route180" :> Get '[ JSON] String
   :<|> "route181" :> Get '[ JSON] String
   :<|> "route182" :> Get '[ JSON] String
   :<|> "route183" :> Get '[ JSON] String
   :<|> "route184" :> Get '[ JSON] String
   :<|> "route185" :> Get '[ JSON] String
   :<|> "route186" :> Get '[ JSON] String
   :<|> "route187" :> Get '[ JSON] String
   :<|> "route188" :> Get '[ JSON] String
   :<|> "route189" :> Get '[ JSON] String
   :<|> "route190" :> Get '[ JSON] String
   :<|> "route191" :> Get '[ JSON] String
   :<|> "route192" :> Get '[ JSON] String
   :<|> "route193" :> Get '[ JSON] String
   :<|> "route194" :> Get '[ JSON] String
   :<|> "route195" :> Get '[ JSON] String
   :<|> "route196" :> Get '[ JSON] String
   :<|> "route197" :> Get '[ JSON] String
   :<|> "route198" :> Get '[ JSON] String
   :<|> "route199" :> Get '[ JSON] String
   :<|> "route200" :> Get '[ JSON] String
   :<|> "route201" :> Get '[ JSON] String
   :<|> "route202" :> Get '[ JSON] String
   :<|> "route203" :> Get '[ JSON] String
   :<|> "route204" :> Get '[ JSON] String
   :<|> "route205" :> Get '[ JSON] String
   :<|> "route206" :> Get '[ JSON] String
   :<|> "route207" :> Get '[ JSON] String
   :<|> "route208" :> Get '[ JSON] String
   :<|> "route209" :> Get '[ JSON] String
   :<|> "route210" :> Get '[ JSON] String
   :<|> "route211" :> Get '[ JSON] String
   :<|> "route212" :> Get '[ JSON] String
   :<|> "route213" :> Get '[ JSON] String
   :<|> "route214" :> Get '[ JSON] String
   :<|> "route215" :> Get '[ JSON] String
   :<|> "route216" :> Get '[ JSON] String
   :<|> "route217" :> Get '[ JSON] String
   :<|> "route218" :> Get '[ JSON] String
   :<|> "route219" :> Get '[ JSON] String
   :<|> "route220" :> Get '[ JSON] String
   :<|> "route221" :> Get '[ JSON] String
   :<|> "route222" :> Get '[ JSON] String
   :<|> "route223" :> Get '[ JSON] String
   :<|> "route224" :> Get '[ JSON] String
   :<|> "route225" :> Get '[ JSON] String
   :<|> "route226" :> Get '[ JSON] String
   :<|> "route227" :> Get '[ JSON] String
   :<|> "route228" :> Get '[ JSON] String
   :<|> "route229" :> Get '[ JSON] String
   :<|> "route230" :> Get '[ JSON] String
   :<|> "route231" :> Get '[ JSON] String
   :<|> "route232" :> Get '[ JSON] String
   :<|> "route233" :> Get '[ JSON] String
   :<|> "route234" :> Get '[ JSON] String
   :<|> "route235" :> Get '[ JSON] String
   :<|> "route236" :> Get '[ JSON] String
   :<|> "route237" :> Get '[ JSON] String
   :<|> "route238" :> Get '[ JSON] String
   :<|> "route239" :> Get '[ JSON] String
   :<|> "route240" :> Get '[ JSON] String
   :<|> "route241" :> Get '[ JSON] String
   :<|> "route242" :> Get '[ JSON] String
   :<|> "route243" :> Get '[ JSON] String
   :<|> "route244" :> Get '[ JSON] String
   :<|> "route245" :> Get '[ JSON] String
   :<|> "route246" :> Get '[ JSON] String
   :<|> "route247" :> Get '[ JSON] String
   :<|> "route248" :> Get '[ JSON] String
   :<|> "route249" :> Get '[ JSON] String
   :<|> "route250" :> Get '[ JSON] String
   :<|> "route251" :> Get '[ JSON] String
   :<|> "route252" :> Get '[ JSON] String
   :<|> "route253" :> Get '[ JSON] String
   :<|> "route254" :> Get '[ JSON] String
   :<|> "route255" :> Get '[ JSON] String
   :<|> "route256" :> Get '[ JSON] String
   :<|> "route257" :> Get '[ JSON] String
   :<|> "route258" :> Get '[ JSON] String
   :<|> "route259" :> Get '[ JSON] String
   :<|> "route260" :> Get '[ JSON] String
   :<|> "route261" :> Get '[ JSON] String
   :<|> "route262" :> Get '[ JSON] String
   :<|> "route263" :> Get '[ JSON] String
   :<|> "route264" :> Get '[ JSON] String
   :<|> "route265" :> Get '[ JSON] String
   :<|> "route266" :> Get '[ JSON] String
   :<|> "route267" :> Get '[ JSON] String
   :<|> "route268" :> Get '[ JSON] String
   :<|> "route269" :> Get '[ JSON] String
   :<|> "route270" :> Get '[ JSON] String
   :<|> "route271" :> Get '[ JSON] String
   :<|> "route272" :> Get '[ JSON] String
   :<|> "route273" :> Get '[ JSON] String
   :<|> "route274" :> Get '[ JSON] String
   :<|> "route275" :> Get '[ JSON] String
   :<|> "route276" :> Get '[ JSON] String
   :<|> "route277" :> Get '[ JSON] String
   :<|> "route278" :> Get '[ JSON] String
   :<|> "route279" :> Get '[ JSON] String
   :<|> "route280" :> Get '[ JSON] String
   :<|> "route281" :> Get '[ JSON] String
   :<|> "route282" :> Get '[ JSON] String
   :<|> "route283" :> Get '[ JSON] String
   :<|> "route284" :> Get '[ JSON] String
   :<|> "route285" :> Get '[ JSON] String
   :<|> "route286" :> Get '[ JSON] String
   :<|> "route287" :> Get '[ JSON] String
   :<|> "route288" :> Get '[ JSON] String
   :<|> "route289" :> Get '[ JSON] String
   :<|> "route290" :> Get '[ JSON] String
   :<|> "route291" :> Get '[ JSON] String
   :<|> "route292" :> Get '[ JSON] String
   :<|> "route293" :> Get '[ JSON] String
   :<|> "route294" :> Get '[ JSON] String
   :<|> "route295" :> Get '[ JSON] String
   :<|> "route296" :> Get '[ JSON] String
   :<|> "route297" :> Get '[ JSON] String
   :<|> "route298" :> Get '[ JSON] String
   :<|> "route299" :> Get '[ JSON] String
   :<|> "route300" :> Get '[ JSON] String
   :<|> "route301" :> Get '[ JSON] String
   :<|> "route302" :> Get '[ JSON] String
   :<|> "route303" :> Get '[ JSON] String
   :<|> "route304" :> Get '[ JSON] String
   :<|> "route305" :> Get '[ JSON] String
   :<|> "route306" :> Get '[ JSON] String
   :<|> "route307" :> Get '[ JSON] String
   :<|> "route308" :> Get '[ JSON] String
   :<|> "route309" :> Get '[ JSON] String
   :<|> "route310" :> Get '[ JSON] String
   :<|> "route311" :> Get '[ JSON] String
   :<|> "route312" :> Get '[ JSON] String
   :<|> "route313" :> Get '[ JSON] String
   :<|> "route314" :> Get '[ JSON] String
   :<|> "route315" :> Get '[ JSON] String
   :<|> "route316" :> Get '[ JSON] String
   :<|> "route317" :> Get '[ JSON] String
   :<|> "route318" :> Get '[ JSON] String
   :<|> "route319" :> Get '[ JSON] String
   :<|> "route320" :> Get '[ JSON] String
   :<|> "route321" :> Get '[ JSON] String
   :<|> "route322" :> Get '[ JSON] String
   :<|> "route323" :> Get '[ JSON] String
   :<|> "route324" :> Get '[ JSON] String
   :<|> "route325" :> Get '[ JSON] String
   :<|> "route326" :> Get '[ JSON] String
   :<|> "route327" :> Get '[ JSON] String
   :<|> "route328" :> Get '[ JSON] String
   :<|> "route329" :> Get '[ JSON] String
   :<|> "route330" :> Get '[ JSON] String
   :<|> "route331" :> Get '[ JSON] String
   :<|> "route332" :> Get '[ JSON] String
   :<|> "route333" :> Get '[ JSON] String
   :<|> "route334" :> Get '[ JSON] String
   :<|> "route335" :> Get '[ JSON] String
   :<|> "route336" :> Get '[ JSON] String
   :<|> "route337" :> Get '[ JSON] String
   :<|> "route338" :> Get '[ JSON] String
   :<|> "route339" :> Get '[ JSON] String
   :<|> "route340" :> Get '[ JSON] String
   :<|> "route341" :> Get '[ JSON] String
   :<|> "route342" :> Get '[ JSON] String
   :<|> "route343" :> Get '[ JSON] String
   :<|> "route344" :> Get '[ JSON] String
   :<|> "route345" :> Get '[ JSON] String
   :<|> "route346" :> Get '[ JSON] String
   :<|> "route347" :> Get '[ JSON] String
   :<|> "route348" :> Get '[ JSON] String
   :<|> "route349" :> Get '[ JSON] String
   :<|> "route350" :> Get '[ JSON] String
   :<|> "route351" :> Get '[ JSON] String
   :<|> "route352" :> Get '[ JSON] String
   :<|> "route353" :> Get '[ JSON] String
   :<|> "route354" :> Get '[ JSON] String
   :<|> "route355" :> Get '[ JSON] String
   :<|> "route356" :> Get '[ JSON] String
   :<|> "route357" :> Get '[ JSON] String
   :<|> "route358" :> Get '[ JSON] String
   :<|> "route359" :> Get '[ JSON] String
   :<|> "route360" :> Get '[ JSON] String
   :<|> "route361" :> Get '[ JSON] String
   :<|> "route362" :> Get '[ JSON] String
   :<|> "route363" :> Get '[ JSON] String
   :<|> "route364" :> Get '[ JSON] String
   :<|> "route365" :> Get '[ JSON] String
   :<|> "route366" :> Get '[ JSON] String
   :<|> "route367" :> Get '[ JSON] String
   :<|> "route368" :> Get '[ JSON] String
   :<|> "route369" :> Get '[ JSON] String
   :<|> "route370" :> Get '[ JSON] String
   :<|> "route371" :> Get '[ JSON] String
   :<|> "route372" :> Get '[ JSON] String
   :<|> "route373" :> Get '[ JSON] String
   :<|> "route374" :> Get '[ JSON] String
   :<|> "route375" :> Get '[ JSON] String
   :<|> "route376" :> Get '[ JSON] String
   :<|> "route377" :> Get '[ JSON] String
   :<|> "route378" :> Get '[ JSON] String
   :<|> "route379" :> Get '[ JSON] String
   :<|> "route380" :> Get '[ JSON] String
   :<|> "route381" :> Get '[ JSON] String
   :<|> "route382" :> Get '[ JSON] String
   :<|> "route383" :> Get '[ JSON] String
   :<|> "route384" :> Get '[ JSON] String
   :<|> "route385" :> Get '[ JSON] String
   :<|> "route386" :> Get '[ JSON] String
   :<|> "route387" :> Get '[ JSON] String
   :<|> "route388" :> Get '[ JSON] String
   :<|> "route389" :> Get '[ JSON] String
   :<|> "route390" :> Get '[ JSON] String
   :<|> "route391" :> Get '[ JSON] String
   :<|> "route392" :> Get '[ JSON] String
   :<|> "route393" :> Get '[ JSON] String
   :<|> "route394" :> Get '[ JSON] String
   :<|> "route395" :> Get '[ JSON] String
   :<|> "route396" :> Get '[ JSON] String
   :<|> "route397" :> Get '[ JSON] String
   :<|> "route398" :> Get '[ JSON] String
   :<|> "route399" :> Get '[ JSON] String
   :<|> "route400" :> Get '[ JSON] String
   :<|> "route401" :> Get '[ JSON] String
   :<|> "route402" :> Get '[ JSON] String
   :<|> "route403" :> Get '[ JSON] String
   :<|> "route404" :> Get '[ JSON] String
   :<|> "route405" :> Get '[ JSON] String
   :<|> "route406" :> Get '[ JSON] String
   :<|> "route407" :> Get '[ JSON] String
   :<|> "route408" :> Get '[ JSON] String
   :<|> "route409" :> Get '[ JSON] String
   :<|> "route410" :> Get '[ JSON] String
   :<|> "route411" :> Get '[ JSON] String
   :<|> "route412" :> Get '[ JSON] String
   :<|> "route413" :> Get '[ JSON] String
   :<|> "route414" :> Get '[ JSON] String
   :<|> "route415" :> Get '[ JSON] String
   :<|> "route416" :> Get '[ JSON] String
   :<|> "route417" :> Get '[ JSON] String
   :<|> "route418" :> Get '[ JSON] String
   :<|> "route419" :> Get '[ JSON] String
   :<|> "route420" :> Get '[ JSON] String
   :<|> "route421" :> Get '[ JSON] String
   :<|> "route422" :> Get '[ JSON] String
   :<|> "route423" :> Get '[ JSON] String
   :<|> "route424" :> Get '[ JSON] String
   :<|> "route425" :> Get '[ JSON] String
   :<|> "route426" :> Get '[ JSON] String
   :<|> "route427" :> Get '[ JSON] String
   :<|> "route428" :> Get '[ JSON] String
   :<|> "route429" :> Get '[ JSON] String
   :<|> "route430" :> Get '[ JSON] String
   :<|> "route431" :> Get '[ JSON] String
   :<|> "route432" :> Get '[ JSON] String
   :<|> "route433" :> Get '[ JSON] String
   :<|> "route434" :> Get '[ JSON] String
   :<|> "route435" :> Get '[ JSON] String
   :<|> "route436" :> Get '[ JSON] String
   :<|> "route437" :> Get '[ JSON] String
   :<|> "route438" :> Get '[ JSON] String
   :<|> "route439" :> Get '[ JSON] String
   :<|> "route440" :> Get '[ JSON] String
   :<|> "route441" :> Get '[ JSON] String
   :<|> "route442" :> Get '[ JSON] String
   :<|> "route443" :> Get '[ JSON] String
   :<|> "route444" :> Get '[ JSON] String
   :<|> "route445" :> Get '[ JSON] String
   :<|> "route446" :> Get '[ JSON] String
   :<|> "route447" :> Get '[ JSON] String
   :<|> "route448" :> Get '[ JSON] String
   :<|> "route449" :> Get '[ JSON] String
   :<|> "route450" :> Get '[ JSON] String
   :<|> "route451" :> Get '[ JSON] String
   :<|> "route452" :> Get '[ JSON] String
   :<|> "route453" :> Get '[ JSON] String
   :<|> "route454" :> Get '[ JSON] String
   :<|> "route455" :> Get '[ JSON] String
   :<|> "route456" :> Get '[ JSON] String
   :<|> "route457" :> Get '[ JSON] String
   :<|> "route458" :> Get '[ JSON] String
   :<|> "route459" :> Get '[ JSON] String
   :<|> "route460" :> Get '[ JSON] String
   :<|> "route461" :> Get '[ JSON] String
   :<|> "route462" :> Get '[ JSON] String
   :<|> "route463" :> Get '[ JSON] String
   :<|> "route464" :> Get '[ JSON] String
   :<|> "route465" :> Get '[ JSON] String
   :<|> "route466" :> Get '[ JSON] String
   :<|> "route467" :> Get '[ JSON] String
   :<|> "route468" :> Get '[ JSON] String
   :<|> "route469" :> Get '[ JSON] String
   :<|> "route470" :> Get '[ JSON] String
   :<|> "route471" :> Get '[ JSON] String
   :<|> "route472" :> Get '[ JSON] String
   :<|> "route473" :> Get '[ JSON] String
   :<|> "route474" :> Get '[ JSON] String
   :<|> "route475" :> Get '[ JSON] String
   :<|> "route476" :> Get '[ JSON] String
   :<|> "route477" :> Get '[ JSON] String
   :<|> "route478" :> Get '[ JSON] String
   :<|> "route479" :> Get '[ JSON] String
   :<|> "route480" :> Get '[ JSON] String
   :<|> "route481" :> Get '[ JSON] String
   :<|> "route482" :> Get '[ JSON] String
   :<|> "route483" :> Get '[ JSON] String
   :<|> "route484" :> Get '[ JSON] String
   :<|> "route485" :> Get '[ JSON] String
   :<|> "route486" :> Get '[ JSON] String
   :<|> "route487" :> Get '[ JSON] String
   :<|> "route488" :> Get '[ JSON] String
   :<|> "route489" :> Get '[ JSON] String
   :<|> "route490" :> Get '[ JSON] String
   :<|> "route491" :> Get '[ JSON] String
   :<|> "route492" :> Get '[ JSON] String
   :<|> "route493" :> Get '[ JSON] String
   :<|> "route494" :> Get '[ JSON] String
   :<|> "route495" :> Get '[ JSON] String
   :<|> "route496" :> Get '[ JSON] String
   :<|> "route497" :> Get '[ JSON] String
   :<|> "route498" :> Get '[ JSON] String
   :<|> "route499" :> Get '[ JSON] String
   :<|> "route500" :> Get '[ JSON] String
   :<|> "route501" :> Get '[ JSON] String
   :<|> "route502" :> Get '[ JSON] String
   :<|> "route503" :> Get '[ JSON] String
   :<|> "route504" :> Get '[ JSON] String
   :<|> "route505" :> Get '[ JSON] String
   :<|> "route506" :> Get '[ JSON] String
   :<|> "route507" :> Get '[ JSON] String
   :<|> "route508" :> Get '[ JSON] String
   :<|> "route509" :> Get '[ JSON] String
   :<|> "route510" :> Get '[ JSON] String
   :<|> "route511" :> Get '[ JSON] String
   :<|> "route512" :> Get '[ JSON] String
   :<|> "route513" :> Get '[ JSON] String
   :<|> "route514" :> Get '[ JSON] String
   :<|> "route515" :> Get '[ JSON] String
   :<|> "route516" :> Get '[ JSON] String
   :<|> "route517" :> Get '[ JSON] String
   :<|> "route518" :> Get '[ JSON] String
   :<|> "route519" :> Get '[ JSON] String
   :<|> "route520" :> Get '[ JSON] String
   :<|> "route521" :> Get '[ JSON] String
   :<|> "route522" :> Get '[ JSON] String
   :<|> "route523" :> Get '[ JSON] String
   :<|> "route524" :> Get '[ JSON] String
   :<|> "route525" :> Get '[ JSON] String
   :<|> "route526" :> Get '[ JSON] String
   :<|> "route527" :> Get '[ JSON] String
   :<|> "route528" :> Get '[ JSON] String
   :<|> "route529" :> Get '[ JSON] String
   :<|> "route530" :> Get '[ JSON] String
   :<|> "route531" :> Get '[ JSON] String
   :<|> "route532" :> Get '[ JSON] String
   :<|> "route533" :> Get '[ JSON] String
   :<|> "route534" :> Get '[ JSON] String
   :<|> "route535" :> Get '[ JSON] String
   :<|> "route536" :> Get '[ JSON] String
   :<|> "route537" :> Get '[ JSON] String
   :<|> "route538" :> Get '[ JSON] String
   :<|> "route539" :> Get '[ JSON] String
   :<|> "route540" :> Get '[ JSON] String
   :<|> "route541" :> Get '[ JSON] String
   :<|> "route542" :> Get '[ JSON] String
   :<|> "route543" :> Get '[ JSON] String
   :<|> "route544" :> Get '[ JSON] String
   :<|> "route545" :> Get '[ JSON] String
   :<|> "route546" :> Get '[ JSON] String
   :<|> "route547" :> Get '[ JSON] String
   :<|> "route548" :> Get '[ JSON] String
   :<|> "route549" :> Get '[ JSON] String
   :<|> "route550" :> Get '[ JSON] String
   :<|> "route551" :> Get '[ JSON] String
   :<|> "route552" :> Get '[ JSON] String
   :<|> "route553" :> Get '[ JSON] String
   :<|> "route554" :> Get '[ JSON] String
   :<|> "route555" :> Get '[ JSON] String
   :<|> "route556" :> Get '[ JSON] String
   :<|> "route557" :> Get '[ JSON] String
   :<|> "route558" :> Get '[ JSON] String
   :<|> "route559" :> Get '[ JSON] String
   :<|> "route560" :> Get '[ JSON] String
   :<|> "route561" :> Get '[ JSON] String
   :<|> "route562" :> Get '[ JSON] String
   :<|> "route563" :> Get '[ JSON] String
   :<|> "route564" :> Get '[ JSON] String
   :<|> "route565" :> Get '[ JSON] String
   :<|> "route566" :> Get '[ JSON] String
   :<|> "route567" :> Get '[ JSON] String
   :<|> "route568" :> Get '[ JSON] String
   :<|> "route569" :> Get '[ JSON] String
   :<|> "route570" :> Get '[ JSON] String
   :<|> "route571" :> Get '[ JSON] String
   :<|> "route572" :> Get '[ JSON] String
   :<|> "route573" :> Get '[ JSON] String
   :<|> "route574" :> Get '[ JSON] String
   :<|> "route575" :> Get '[ JSON] String
   :<|> "route576" :> Get '[ JSON] String
   :<|> "route577" :> Get '[ JSON] String
   :<|> "route578" :> Get '[ JSON] String
   :<|> "route579" :> Get '[ JSON] String
   :<|> "route580" :> Get '[ JSON] String
   :<|> "route581" :> Get '[ JSON] String
   :<|> "route582" :> Get '[ JSON] String
   :<|> "route583" :> Get '[ JSON] String
   :<|> "route584" :> Get '[ JSON] String
   :<|> "route585" :> Get '[ JSON] String
   :<|> "route586" :> Get '[ JSON] String
   :<|> "route587" :> Get '[ JSON] String
   :<|> "route588" :> Get '[ JSON] String
   :<|> "route589" :> Get '[ JSON] String
   :<|> "route590" :> Get '[ JSON] String
   :<|> "route591" :> Get '[ JSON] String
   :<|> "route592" :> Get '[ JSON] String
   :<|> "route593" :> Get '[ JSON] String
   :<|> "route594" :> Get '[ JSON] String
   :<|> "route595" :> Get '[ JSON] String
   :<|> "route596" :> Get '[ JSON] String
   :<|> "route597" :> Get '[ JSON] String
   :<|> "route598" :> Get '[ JSON] String
   :<|> "route599" :> Get '[ JSON] String
   :<|> "route600" :> Get '[ JSON] String
   :<|> "route601" :> Get '[ JSON] String
   :<|> "route602" :> Get '[ JSON] String
   :<|> "route603" :> Get '[ JSON] String
   :<|> "route604" :> Get '[ JSON] String
   :<|> "route605" :> Get '[ JSON] String
   :<|> "route606" :> Get '[ JSON] String
   :<|> "route607" :> Get '[ JSON] String
   :<|> "route608" :> Get '[ JSON] String
   :<|> "route609" :> Get '[ JSON] String
   :<|> "route610" :> Get '[ JSON] String
   :<|> "route611" :> Get '[ JSON] String
   :<|> "route612" :> Get '[ JSON] String
   :<|> "route613" :> Get '[ JSON] String
   :<|> "route614" :> Get '[ JSON] String
   :<|> "route615" :> Get '[ JSON] String
   :<|> "route616" :> Get '[ JSON] String
   :<|> "route617" :> Get '[ JSON] String
   :<|> "route618" :> Get '[ JSON] String
   :<|> "route619" :> Get '[ JSON] String
   :<|> "route620" :> Get '[ JSON] String
   :<|> "route621" :> Get '[ JSON] String
   :<|> "route622" :> Get '[ JSON] String
   :<|> "route623" :> Get '[ JSON] String
   :<|> "route624" :> Get '[ JSON] String
   :<|> "route625" :> Get '[ JSON] String
   :<|> "route626" :> Get '[ JSON] String
   :<|> "route627" :> Get '[ JSON] String
   :<|> "route628" :> Get '[ JSON] String
   :<|> "route629" :> Get '[ JSON] String
   :<|> "route630" :> Get '[ JSON] String
   :<|> "route631" :> Get '[ JSON] String
   :<|> "route632" :> Get '[ JSON] String
   :<|> "route633" :> Get '[ JSON] String
   :<|> "route634" :> Get '[ JSON] String
   :<|> "route635" :> Get '[ JSON] String
   :<|> "route636" :> Get '[ JSON] String
   :<|> "route637" :> Get '[ JSON] String
   :<|> "route638" :> Get '[ JSON] String
   :<|> "route639" :> Get '[ JSON] String
   :<|> "route640" :> Get '[ JSON] String
   :<|> "route641" :> Get '[ JSON] String
   :<|> "route642" :> Get '[ JSON] String
   :<|> "route643" :> Get '[ JSON] String
   :<|> "route644" :> Get '[ JSON] String
   :<|> "route645" :> Get '[ JSON] String
   :<|> "route646" :> Get '[ JSON] String
   :<|> "route647" :> Get '[ JSON] String
   :<|> "route648" :> Get '[ JSON] String
   :<|> "route649" :> Get '[ JSON] String
   :<|> "route650" :> Get '[ JSON] String
   :<|> "route651" :> Get '[ JSON] String
   :<|> "route652" :> Get '[ JSON] String
   :<|> "route653" :> Get '[ JSON] String
   :<|> "route654" :> Get '[ JSON] String
   :<|> "route655" :> Get '[ JSON] String
   :<|> "route656" :> Get '[ JSON] String
   :<|> "route657" :> Get '[ JSON] String
   :<|> "route658" :> Get '[ JSON] String
   :<|> "route659" :> Get '[ JSON] String
   :<|> "route660" :> Get '[ JSON] String
   :<|> "route661" :> Get '[ JSON] String
   :<|> "route662" :> Get '[ JSON] String
   :<|> "route663" :> Get '[ JSON] String
   :<|> "route664" :> Get '[ JSON] String
   :<|> "route665" :> Get '[ JSON] String
   :<|> "route666" :> Get '[ JSON] String
   :<|> "route667" :> Get '[ JSON] String
   :<|> "route668" :> Get '[ JSON] String
   :<|> "route669" :> Get '[ JSON] String
   :<|> "route670" :> Get '[ JSON] String
   :<|> "route671" :> Get '[ JSON] String
   :<|> "route672" :> Get '[ JSON] String
   :<|> "route673" :> Get '[ JSON] String
   :<|> "route674" :> Get '[ JSON] String
   :<|> "route675" :> Get '[ JSON] String
   :<|> "route676" :> Get '[ JSON] String
   :<|> "route677" :> Get '[ JSON] String
   :<|> "route678" :> Get '[ JSON] String
   :<|> "route679" :> Get '[ JSON] String
   :<|> "route680" :> Get '[ JSON] String
   :<|> "route681" :> Get '[ JSON] String
   :<|> "route682" :> Get '[ JSON] String
   :<|> "route683" :> Get '[ JSON] String
   :<|> "route684" :> Get '[ JSON] String
   :<|> "route685" :> Get '[ JSON] String
   :<|> "route686" :> Get '[ JSON] String
   :<|> "route687" :> Get '[ JSON] String
   :<|> "route688" :> Get '[ JSON] String
   :<|> "route689" :> Get '[ JSON] String
   :<|> "route690" :> Get '[ JSON] String
   :<|> "route691" :> Get '[ JSON] String
   :<|> "route692" :> Get '[ JSON] String
   :<|> "route693" :> Get '[ JSON] String
   :<|> "route694" :> Get '[ JSON] String
   :<|> "route695" :> Get '[ JSON] String
   :<|> "route696" :> Get '[ JSON] String
   :<|> "route697" :> Get '[ JSON] String
   :<|> "route698" :> Get '[ JSON] String
   :<|> "route699" :> Get '[ JSON] String
   :<|> "route700" :> Get '[ JSON] String
   :<|> "route701" :> Get '[ JSON] String
   :<|> "route702" :> Get '[ JSON] String
   :<|> "route703" :> Get '[ JSON] String
   :<|> "route704" :> Get '[ JSON] String
   :<|> "route705" :> Get '[ JSON] String
   :<|> "route706" :> Get '[ JSON] String
   :<|> "route707" :> Get '[ JSON] String
   :<|> "route708" :> Get '[ JSON] String
   :<|> "route709" :> Get '[ JSON] String
   :<|> "route710" :> Get '[ JSON] String
   :<|> "route711" :> Get '[ JSON] String
   :<|> "route712" :> Get '[ JSON] String
   :<|> "route713" :> Get '[ JSON] String
   :<|> "route714" :> Get '[ JSON] String
   :<|> "route715" :> Get '[ JSON] String
   :<|> "route716" :> Get '[ JSON] String
   :<|> "route717" :> Get '[ JSON] String
   :<|> "route718" :> Get '[ JSON] String
   :<|> "route719" :> Get '[ JSON] String
   :<|> "route720" :> Get '[ JSON] String
   :<|> "route721" :> Get '[ JSON] String
   :<|> "route722" :> Get '[ JSON] String
   :<|> "route723" :> Get '[ JSON] String
   :<|> "route724" :> Get '[ JSON] String
   :<|> "route725" :> Get '[ JSON] String
   :<|> "route726" :> Get '[ JSON] String
   :<|> "route727" :> Get '[ JSON] String
   :<|> "route728" :> Get '[ JSON] String
   :<|> "route729" :> Get '[ JSON] String
   :<|> "route730" :> Get '[ JSON] String
   :<|> "route731" :> Get '[ JSON] String
   :<|> "route732" :> Get '[ JSON] String
   :<|> "route733" :> Get '[ JSON] String
   :<|> "route734" :> Get '[ JSON] String
   :<|> "route735" :> Get '[ JSON] String
   :<|> "route736" :> Get '[ JSON] String
   :<|> "route737" :> Get '[ JSON] String
   :<|> "route738" :> Get '[ JSON] String
   :<|> "route739" :> Get '[ JSON] String
   :<|> "route740" :> Get '[ JSON] String
   :<|> "route741" :> Get '[ JSON] String
   :<|> "route742" :> Get '[ JSON] String
   :<|> "route743" :> Get '[ JSON] String
   :<|> "route744" :> Get '[ JSON] String
   :<|> "route745" :> Get '[ JSON] String
   :<|> "route746" :> Get '[ JSON] String
   :<|> "route747" :> Get '[ JSON] String
   :<|> "route748" :> Get '[ JSON] String
   :<|> "route749" :> Get '[ JSON] String
   :<|> "route750" :> Get '[ JSON] String
   :<|> "route751" :> Get '[ JSON] String
   :<|> "route752" :> Get '[ JSON] String
   :<|> "route753" :> Get '[ JSON] String
   :<|> "route754" :> Get '[ JSON] String
   :<|> "route755" :> Get '[ JSON] String
   :<|> "route756" :> Get '[ JSON] String
   :<|> "route757" :> Get '[ JSON] String
   :<|> "route758" :> Get '[ JSON] String
   :<|> "route759" :> Get '[ JSON] String
   :<|> "route760" :> Get '[ JSON] String
   :<|> "route761" :> Get '[ JSON] String
   :<|> "route762" :> Get '[ JSON] String
   :<|> "route763" :> Get '[ JSON] String
   :<|> "route764" :> Get '[ JSON] String
   :<|> "route765" :> Get '[ JSON] String
   :<|> "route766" :> Get '[ JSON] String
   :<|> "route767" :> Get '[ JSON] String
   :<|> "route768" :> Get '[ JSON] String
   :<|> "route769" :> Get '[ JSON] String
   :<|> "route770" :> Get '[ JSON] String
   :<|> "route771" :> Get '[ JSON] String
   :<|> "route772" :> Get '[ JSON] String
   :<|> "route773" :> Get '[ JSON] String
   :<|> "route774" :> Get '[ JSON] String
   :<|> "route775" :> Get '[ JSON] String
   :<|> "route776" :> Get '[ JSON] String
   :<|> "route777" :> Get '[ JSON] String
   :<|> "route778" :> Get '[ JSON] String
   :<|> "route779" :> Get '[ JSON] String
   :<|> "route780" :> Get '[ JSON] String
   :<|> "route781" :> Get '[ JSON] String
   :<|> "route782" :> Get '[ JSON] String
   :<|> "route783" :> Get '[ JSON] String
   :<|> "route784" :> Get '[ JSON] String
   :<|> "route785" :> Get '[ JSON] String
   :<|> "route786" :> Get '[ JSON] String
   :<|> "route787" :> Get '[ JSON] String
   :<|> "route788" :> Get '[ JSON] String
   :<|> "route789" :> Get '[ JSON] String
   :<|> "route790" :> Get '[ JSON] String
   :<|> "route791" :> Get '[ JSON] String
   :<|> "route792" :> Get '[ JSON] String
   :<|> "route793" :> Get '[ JSON] String
   :<|> "route794" :> Get '[ JSON] String
   :<|> "route795" :> Get '[ JSON] String
   :<|> "route796" :> Get '[ JSON] String
   :<|> "route797" :> Get '[ JSON] String
   :<|> "route798" :> Get '[ JSON] String
   :<|> "route799" :> Get '[ JSON] String
   :<|> "route800" :> Get '[ JSON] String
   :<|> "route801" :> Get '[ JSON] String
   :<|> "route802" :> Get '[ JSON] String
   :<|> "route803" :> Get '[ JSON] String
   :<|> "route804" :> Get '[ JSON] String
   :<|> "route805" :> Get '[ JSON] String
   :<|> "route806" :> Get '[ JSON] String
   :<|> "route807" :> Get '[ JSON] String
   :<|> "route808" :> Get '[ JSON] String
   :<|> "route809" :> Get '[ JSON] String
   :<|> "route810" :> Get '[ JSON] String
   :<|> "route811" :> Get '[ JSON] String
   :<|> "route812" :> Get '[ JSON] String
   :<|> "route813" :> Get '[ JSON] String
   :<|> "route814" :> Get '[ JSON] String
   :<|> "route815" :> Get '[ JSON] String
   :<|> "route816" :> Get '[ JSON] String
   :<|> "route817" :> Get '[ JSON] String
   :<|> "route818" :> Get '[ JSON] String
   :<|> "route819" :> Get '[ JSON] String
   :<|> "route820" :> Get '[ JSON] String
   :<|> "route821" :> Get '[ JSON] String
   :<|> "route822" :> Get '[ JSON] String
   :<|> "route823" :> Get '[ JSON] String
   :<|> "route824" :> Get '[ JSON] String
   :<|> "route825" :> Get '[ JSON] String
   :<|> "route826" :> Get '[ JSON] String
   :<|> "route827" :> Get '[ JSON] String
   :<|> "route828" :> Get '[ JSON] String
   :<|> "route829" :> Get '[ JSON] String
   :<|> "route830" :> Get '[ JSON] String
   :<|> "route831" :> Get '[ JSON] String
   :<|> "route832" :> Get '[ JSON] String
   :<|> "route833" :> Get '[ JSON] String
   :<|> "route834" :> Get '[ JSON] String
   :<|> "route835" :> Get '[ JSON] String
   :<|> "route836" :> Get '[ JSON] String
   :<|> "route837" :> Get '[ JSON] String
   :<|> "route838" :> Get '[ JSON] String
   :<|> "route839" :> Get '[ JSON] String
   :<|> "route840" :> Get '[ JSON] String
   :<|> "route841" :> Get '[ JSON] String
   :<|> "route842" :> Get '[ JSON] String
   :<|> "route843" :> Get '[ JSON] String
   :<|> "route844" :> Get '[ JSON] String
   :<|> "route845" :> Get '[ JSON] String
   :<|> "route846" :> Get '[ JSON] String
   :<|> "route847" :> Get '[ JSON] String
   :<|> "route848" :> Get '[ JSON] String
   :<|> "route849" :> Get '[ JSON] String
   :<|> "route850" :> Get '[ JSON] String
   :<|> "route851" :> Get '[ JSON] String
   :<|> "route852" :> Get '[ JSON] String
   :<|> "route853" :> Get '[ JSON] String
   :<|> "route854" :> Get '[ JSON] String
   :<|> "route855" :> Get '[ JSON] String
   :<|> "route856" :> Get '[ JSON] String
   :<|> "route857" :> Get '[ JSON] String
   :<|> "route858" :> Get '[ JSON] String
   :<|> "route859" :> Get '[ JSON] String
   :<|> "route860" :> Get '[ JSON] String
   :<|> "route861" :> Get '[ JSON] String
   :<|> "route862" :> Get '[ JSON] String
   :<|> "route863" :> Get '[ JSON] String
   :<|> "route864" :> Get '[ JSON] String
   :<|> "route865" :> Get '[ JSON] String
   :<|> "route866" :> Get '[ JSON] String
   :<|> "route867" :> Get '[ JSON] String
   :<|> "route868" :> Get '[ JSON] String
   :<|> "route869" :> Get '[ JSON] String
   :<|> "route870" :> Get '[ JSON] String
   :<|> "route871" :> Get '[ JSON] String
   :<|> "route872" :> Get '[ JSON] String
   :<|> "route873" :> Get '[ JSON] String
   :<|> "route874" :> Get '[ JSON] String
   :<|> "route875" :> Get '[ JSON] String
   :<|> "route876" :> Get '[ JSON] String
   :<|> "route877" :> Get '[ JSON] String
   :<|> "route878" :> Get '[ JSON] String
   :<|> "route879" :> Get '[ JSON] String
   :<|> "route880" :> Get '[ JSON] String
   :<|> "route881" :> Get '[ JSON] String
   :<|> "route882" :> Get '[ JSON] String
   :<|> "route883" :> Get '[ JSON] String
   :<|> "route884" :> Get '[ JSON] String
   :<|> "route885" :> Get '[ JSON] String
   :<|> "route886" :> Get '[ JSON] String
   :<|> "route887" :> Get '[ JSON] String
   :<|> "route888" :> Get '[ JSON] String
   :<|> "route889" :> Get '[ JSON] String
   :<|> "route890" :> Get '[ JSON] String
   :<|> "route891" :> Get '[ JSON] String
   :<|> "route892" :> Get '[ JSON] String
   :<|> "route893" :> Get '[ JSON] String
   :<|> "route894" :> Get '[ JSON] String
   :<|> "route895" :> Get '[ JSON] String
   :<|> "route896" :> Get '[ JSON] String
   :<|> "route897" :> Get '[ JSON] String
   :<|> "route898" :> Get '[ JSON] String
   :<|> "route899" :> Get '[ JSON] String
   :<|> "route900" :> Get '[ JSON] String
   :<|> "route901" :> Get '[ JSON] String
   :<|> "route902" :> Get '[ JSON] String
   :<|> "route903" :> Get '[ JSON] String
   :<|> "route904" :> Get '[ JSON] String
   :<|> "route905" :> Get '[ JSON] String
   :<|> "route906" :> Get '[ JSON] String
   :<|> "route907" :> Get '[ JSON] String
   :<|> "route908" :> Get '[ JSON] String
   :<|> "route909" :> Get '[ JSON] String
   :<|> "route910" :> Get '[ JSON] String
   :<|> "route911" :> Get '[ JSON] String
   :<|> "route912" :> Get '[ JSON] String
   :<|> "route913" :> Get '[ JSON] String
   :<|> "route914" :> Get '[ JSON] String
   :<|> "route915" :> Get '[ JSON] String
   :<|> "route916" :> Get '[ JSON] String
   :<|> "route917" :> Get '[ JSON] String
   :<|> "route918" :> Get '[ JSON] String
   :<|> "route919" :> Get '[ JSON] String
   :<|> "route920" :> Get '[ JSON] String
   :<|> "route921" :> Get '[ JSON] String
   :<|> "route922" :> Get '[ JSON] String
   :<|> "route923" :> Get '[ JSON] String
   :<|> "route924" :> Get '[ JSON] String
   :<|> "route925" :> Get '[ JSON] String
   :<|> "route926" :> Get '[ JSON] String
   :<|> "route927" :> Get '[ JSON] String
   :<|> "route928" :> Get '[ JSON] String
   :<|> "route929" :> Get '[ JSON] String
   :<|> "route930" :> Get '[ JSON] String
   :<|> "route931" :> Get '[ JSON] String
   :<|> "route932" :> Get '[ JSON] String
   :<|> "route933" :> Get '[ JSON] String
   :<|> "route934" :> Get '[ JSON] String
   :<|> "route935" :> Get '[ JSON] String
   :<|> "route936" :> Get '[ JSON] String
   :<|> "route937" :> Get '[ JSON] String
   :<|> "route938" :> Get '[ JSON] String
   :<|> "route939" :> Get '[ JSON] String
   :<|> "route940" :> Get '[ JSON] String
   :<|> "route941" :> Get '[ JSON] String
   :<|> "route942" :> Get '[ JSON] String
   :<|> "route943" :> Get '[ JSON] String
   :<|> "route944" :> Get '[ JSON] String
   :<|> "route945" :> Get '[ JSON] String
   :<|> "route946" :> Get '[ JSON] String
   :<|> "route947" :> Get '[ JSON] String
   :<|> "route948" :> Get '[ JSON] String
   :<|> "route949" :> Get '[ JSON] String
   :<|> "route950" :> Get '[ JSON] String
   :<|> "route951" :> Get '[ JSON] String
   :<|> "route952" :> Get '[ JSON] String
   :<|> "route953" :> Get '[ JSON] String
   :<|> "route954" :> Get '[ JSON] String
   :<|> "route955" :> Get '[ JSON] String
   :<|> "route956" :> Get '[ JSON] String
   :<|> "route957" :> Get '[ JSON] String
   :<|> "route958" :> Get '[ JSON] String
   :<|> "route959" :> Get '[ JSON] String
   :<|> "route960" :> Get '[ JSON] String
   :<|> "route961" :> Get '[ JSON] String
   :<|> "route962" :> Get '[ JSON] String
   :<|> "route963" :> Get '[ JSON] String
   :<|> "route964" :> Get '[ JSON] String
   :<|> "route965" :> Get '[ JSON] String
   :<|> "route966" :> Get '[ JSON] String
   :<|> "route967" :> Get '[ JSON] String
   :<|> "route968" :> Get '[ JSON] String
   :<|> "route969" :> Get '[ JSON] String
   :<|> "route970" :> Get '[ JSON] String
   :<|> "route971" :> Get '[ JSON] String
   :<|> "route972" :> Get '[ JSON] String
   :<|> "route973" :> Get '[ JSON] String
   :<|> "route974" :> Get '[ JSON] String
   :<|> "route975" :> Get '[ JSON] String
   :<|> "route976" :> Get '[ JSON] String
   :<|> "route977" :> Get '[ JSON] String
   :<|> "route978" :> Get '[ JSON] String
   :<|> "route979" :> Get '[ JSON] String
   :<|> "route980" :> Get '[ JSON] String
   :<|> "route981" :> Get '[ JSON] String
   :<|> "route982" :> Get '[ JSON] String
   :<|> "route983" :> Get '[ JSON] String
   :<|> "route984" :> Get '[ JSON] String
   :<|> "route985" :> Get '[ JSON] String
   :<|> "route986" :> Get '[ JSON] String
   :<|> "route987" :> Get '[ JSON] String
   :<|> "route988" :> Get '[ JSON] String
   :<|> "route989" :> Get '[ JSON] String
   :<|> "route990" :> Get '[ JSON] String
   :<|> "route991" :> Get '[ JSON] String
   :<|> "route992" :> Get '[ JSON] String
   :<|> "route993" :> Get '[ JSON] String
   :<|> "route994" :> Get '[ JSON] String
   :<|> "route995" :> Get '[ JSON] String
   :<|> "route996" :> Get '[ JSON] String
   :<|> "route997" :> Get '[ JSON] String
   :<|> "route998" :> Get '[ JSON] String
   :<|> "route999" :> Get '[ JSON] String
   :<|> "route1000" :> Get '[ JSON] String

app :: Application
app = serve (Proxy @API) server
  where
    server =
           (return "route1")
      :<|> (return "route2")
      :<|> (return "route3")
      :<|> (return "route4")
      :<|> (return "route5")
      :<|> (return "route6")
      :<|> (return "route7")
      :<|> (return "route8")
      :<|> (return "route9")
      :<|> (return "route10")
      :<|> (return "route11")
      :<|> (return "route12")
      :<|> (return "route13")
      :<|> (return "route14")
      :<|> (return "route15")
      :<|> (return "route16")
      :<|> (return "route17")
      :<|> (return "route18")
      :<|> (return "route19")
      :<|> (return "route20")
      :<|> (return "route21")
      :<|> (return "route22")
      :<|> (return "route23")
      :<|> (return "route24")
      :<|> (return "route25")
      :<|> (return "route26")
      :<|> (return "route27")
      :<|> (return "route28")
      :<|> (return "route29")
      :<|> (return "route30")
      :<|> (return "route31")
      :<|> (return "route32")
      :<|> (return "route33")
      :<|> (return "route34")
      :<|> (return "route35")
      :<|> (return "route36")
      :<|> (return "route37")
      :<|> (return "route38")
      :<|> (return "route39")
      :<|> (return "route40")
      :<|> (return "route41")
      :<|> (return "route42")
      :<|> (return "route43")
      :<|> (return "route44")
      :<|> (return "route45")
      :<|> (return "route46")
      :<|> (return "route47")
      :<|> (return "route48")
      :<|> (return "route49")
      :<|> (return "route50")
      :<|> (return "route51")
      :<|> (return "route52")
      :<|> (return "route53")
      :<|> (return "route54")
      :<|> (return "route55")
      :<|> (return "route56")
      :<|> (return "route57")
      :<|> (return "route58")
      :<|> (return "route59")
      :<|> (return "route60")
      :<|> (return "route61")
      :<|> (return "route62")
      :<|> (return "route63")
      :<|> (return "route64")
      :<|> (return "route65")
      :<|> (return "route66")
      :<|> (return "route67")
      :<|> (return "route68")
      :<|> (return "route69")
      :<|> (return "route70")
      :<|> (return "route71")
      :<|> (return "route72")
      :<|> (return "route73")
      :<|> (return "route74")
      :<|> (return "route75")
      :<|> (return "route76")
      :<|> (return "route77")
      :<|> (return "route78")
      :<|> (return "route79")
      :<|> (return "route80")
      :<|> (return "route81")
      :<|> (return "route82")
      :<|> (return "route83")
      :<|> (return "route84")
      :<|> (return "route85")
      :<|> (return "route86")
      :<|> (return "route87")
      :<|> (return "route88")
      :<|> (return "route89")
      :<|> (return "route90")
      :<|> (return "route91")
      :<|> (return "route92")
      :<|> (return "route93")
      :<|> (return "route94")
      :<|> (return "route95")
      :<|> (return "route96")
      :<|> (return "route97")
      :<|> (return "route98")
      :<|> (return "route99")
      :<|> (return "route100")
      :<|> (return "route101")
      :<|> (return "route102")
      :<|> (return "route103")
      :<|> (return "route104")
      :<|> (return "route105")
      :<|> (return "route106")
      :<|> (return "route107")
      :<|> (return "route108")
      :<|> (return "route109")
      :<|> (return "route110")
      :<|> (return "route111")
      :<|> (return "route112")
      :<|> (return "route113")
      :<|> (return "route114")
      :<|> (return "route115")
      :<|> (return "route116")
      :<|> (return "route117")
      :<|> (return "route118")
      :<|> (return "route119")
      :<|> (return "route120")
      :<|> (return "route121")
      :<|> (return "route122")
      :<|> (return "route123")
      :<|> (return "route124")
      :<|> (return "route125")
      :<|> (return "route126")
      :<|> (return "route127")
      :<|> (return "route128")
      :<|> (return "route129")
      :<|> (return "route130")
      :<|> (return "route131")
      :<|> (return "route132")
      :<|> (return "route133")
      :<|> (return "route134")
      :<|> (return "route135")
      :<|> (return "route136")
      :<|> (return "route137")
      :<|> (return "route138")
      :<|> (return "route139")
      :<|> (return "route140")
      :<|> (return "route141")
      :<|> (return "route142")
      :<|> (return "route143")
      :<|> (return "route144")
      :<|> (return "route145")
      :<|> (return "route146")
      :<|> (return "route147")
      :<|> (return "route148")
      :<|> (return "route149")
      :<|> (return "route150")
      :<|> (return "route151")
      :<|> (return "route152")
      :<|> (return "route153")
      :<|> (return "route154")
      :<|> (return "route155")
      :<|> (return "route156")
      :<|> (return "route157")
      :<|> (return "route158")
      :<|> (return "route159")
      :<|> (return "route160")
      :<|> (return "route161")
      :<|> (return "route162")
      :<|> (return "route163")
      :<|> (return "route164")
      :<|> (return "route165")
      :<|> (return "route166")
      :<|> (return "route167")
      :<|> (return "route168")
      :<|> (return "route169")
      :<|> (return "route170")
      :<|> (return "route171")
      :<|> (return "route172")
      :<|> (return "route173")
      :<|> (return "route174")
      :<|> (return "route175")
      :<|> (return "route176")
      :<|> (return "route177")
      :<|> (return "route178")
      :<|> (return "route179")
      :<|> (return "route180")
      :<|> (return "route181")
      :<|> (return "route182")
      :<|> (return "route183")
      :<|> (return "route184")
      :<|> (return "route185")
      :<|> (return "route186")
      :<|> (return "route187")
      :<|> (return "route188")
      :<|> (return "route189")
      :<|> (return "route190")
      :<|> (return "route191")
      :<|> (return "route192")
      :<|> (return "route193")
      :<|> (return "route194")
      :<|> (return "route195")
      :<|> (return "route196")
      :<|> (return "route197")
      :<|> (return "route198")
      :<|> (return "route199")
      :<|> (return "route200")
      :<|> (return "route201")
      :<|> (return "route202")
      :<|> (return "route203")
      :<|> (return "route204")
      :<|> (return "route205")
      :<|> (return "route206")
      :<|> (return "route207")
      :<|> (return "route208")
      :<|> (return "route209")
      :<|> (return "route210")
      :<|> (return "route211")
      :<|> (return "route212")
      :<|> (return "route213")
      :<|> (return "route214")
      :<|> (return "route215")
      :<|> (return "route216")
      :<|> (return "route217")
      :<|> (return "route218")
      :<|> (return "route219")
      :<|> (return "route220")
      :<|> (return "route221")
      :<|> (return "route222")
      :<|> (return "route223")
      :<|> (return "route224")
      :<|> (return "route225")
      :<|> (return "route226")
      :<|> (return "route227")
      :<|> (return "route228")
      :<|> (return "route229")
      :<|> (return "route230")
      :<|> (return "route231")
      :<|> (return "route232")
      :<|> (return "route233")
      :<|> (return "route234")
      :<|> (return "route235")
      :<|> (return "route236")
      :<|> (return "route237")
      :<|> (return "route238")
      :<|> (return "route239")
      :<|> (return "route240")
      :<|> (return "route241")
      :<|> (return "route242")
      :<|> (return "route243")
      :<|> (return "route244")
      :<|> (return "route245")
      :<|> (return "route246")
      :<|> (return "route247")
      :<|> (return "route248")
      :<|> (return "route249")
      :<|> (return "route250")
      :<|> (return "route251")
      :<|> (return "route252")
      :<|> (return "route253")
      :<|> (return "route254")
      :<|> (return "route255")
      :<|> (return "route256")
      :<|> (return "route257")
      :<|> (return "route258")
      :<|> (return "route259")
      :<|> (return "route260")
      :<|> (return "route261")
      :<|> (return "route262")
      :<|> (return "route263")
      :<|> (return "route264")
      :<|> (return "route265")
      :<|> (return "route266")
      :<|> (return "route267")
      :<|> (return "route268")
      :<|> (return "route269")
      :<|> (return "route270")
      :<|> (return "route271")
      :<|> (return "route272")
      :<|> (return "route273")
      :<|> (return "route274")
      :<|> (return "route275")
      :<|> (return "route276")
      :<|> (return "route277")
      :<|> (return "route278")
      :<|> (return "route279")
      :<|> (return "route280")
      :<|> (return "route281")
      :<|> (return "route282")
      :<|> (return "route283")
      :<|> (return "route284")
      :<|> (return "route285")
      :<|> (return "route286")
      :<|> (return "route287")
      :<|> (return "route288")
      :<|> (return "route289")
      :<|> (return "route290")
      :<|> (return "route291")
      :<|> (return "route292")
      :<|> (return "route293")
      :<|> (return "route294")
      :<|> (return "route295")
      :<|> (return "route296")
      :<|> (return "route297")
      :<|> (return "route298")
      :<|> (return "route299")
      :<|> (return "route300")
      :<|> (return "route301")
      :<|> (return "route302")
      :<|> (return "route303")
      :<|> (return "route304")
      :<|> (return "route305")
      :<|> (return "route306")
      :<|> (return "route307")
      :<|> (return "route308")
      :<|> (return "route309")
      :<|> (return "route310")
      :<|> (return "route311")
      :<|> (return "route312")
      :<|> (return "route313")
      :<|> (return "route314")
      :<|> (return "route315")
      :<|> (return "route316")
      :<|> (return "route317")
      :<|> (return "route318")
      :<|> (return "route319")
      :<|> (return "route320")
      :<|> (return "route321")
      :<|> (return "route322")
      :<|> (return "route323")
      :<|> (return "route324")
      :<|> (return "route325")
      :<|> (return "route326")
      :<|> (return "route327")
      :<|> (return "route328")
      :<|> (return "route329")
      :<|> (return "route330")
      :<|> (return "route331")
      :<|> (return "route332")
      :<|> (return "route333")
      :<|> (return "route334")
      :<|> (return "route335")
      :<|> (return "route336")
      :<|> (return "route337")
      :<|> (return "route338")
      :<|> (return "route339")
      :<|> (return "route340")
      :<|> (return "route341")
      :<|> (return "route342")
      :<|> (return "route343")
      :<|> (return "route344")
      :<|> (return "route345")
      :<|> (return "route346")
      :<|> (return "route347")
      :<|> (return "route348")
      :<|> (return "route349")
      :<|> (return "route350")
      :<|> (return "route351")
      :<|> (return "route352")
      :<|> (return "route353")
      :<|> (return "route354")
      :<|> (return "route355")
      :<|> (return "route356")
      :<|> (return "route357")
      :<|> (return "route358")
      :<|> (return "route359")
      :<|> (return "route360")
      :<|> (return "route361")
      :<|> (return "route362")
      :<|> (return "route363")
      :<|> (return "route364")
      :<|> (return "route365")
      :<|> (return "route366")
      :<|> (return "route367")
      :<|> (return "route368")
      :<|> (return "route369")
      :<|> (return "route370")
      :<|> (return "route371")
      :<|> (return "route372")
      :<|> (return "route373")
      :<|> (return "route374")
      :<|> (return "route375")
      :<|> (return "route376")
      :<|> (return "route377")
      :<|> (return "route378")
      :<|> (return "route379")
      :<|> (return "route380")
      :<|> (return "route381")
      :<|> (return "route382")
      :<|> (return "route383")
      :<|> (return "route384")
      :<|> (return "route385")
      :<|> (return "route386")
      :<|> (return "route387")
      :<|> (return "route388")
      :<|> (return "route389")
      :<|> (return "route390")
      :<|> (return "route391")
      :<|> (return "route392")
      :<|> (return "route393")
      :<|> (return "route394")
      :<|> (return "route395")
      :<|> (return "route396")
      :<|> (return "route397")
      :<|> (return "route398")
      :<|> (return "route399")
      :<|> (return "route400")
      :<|> (return "route401")
      :<|> (return "route402")
      :<|> (return "route403")
      :<|> (return "route404")
      :<|> (return "route405")
      :<|> (return "route406")
      :<|> (return "route407")
      :<|> (return "route408")
      :<|> (return "route409")
      :<|> (return "route410")
      :<|> (return "route411")
      :<|> (return "route412")
      :<|> (return "route413")
      :<|> (return "route414")
      :<|> (return "route415")
      :<|> (return "route416")
      :<|> (return "route417")
      :<|> (return "route418")
      :<|> (return "route419")
      :<|> (return "route420")
      :<|> (return "route421")
      :<|> (return "route422")
      :<|> (return "route423")
      :<|> (return "route424")
      :<|> (return "route425")
      :<|> (return "route426")
      :<|> (return "route427")
      :<|> (return "route428")
      :<|> (return "route429")
      :<|> (return "route430")
      :<|> (return "route431")
      :<|> (return "route432")
      :<|> (return "route433")
      :<|> (return "route434")
      :<|> (return "route435")
      :<|> (return "route436")
      :<|> (return "route437")
      :<|> (return "route438")
      :<|> (return "route439")
      :<|> (return "route440")
      :<|> (return "route441")
      :<|> (return "route442")
      :<|> (return "route443")
      :<|> (return "route444")
      :<|> (return "route445")
      :<|> (return "route446")
      :<|> (return "route447")
      :<|> (return "route448")
      :<|> (return "route449")
      :<|> (return "route450")
      :<|> (return "route451")
      :<|> (return "route452")
      :<|> (return "route453")
      :<|> (return "route454")
      :<|> (return "route455")
      :<|> (return "route456")
      :<|> (return "route457")
      :<|> (return "route458")
      :<|> (return "route459")
      :<|> (return "route460")
      :<|> (return "route461")
      :<|> (return "route462")
      :<|> (return "route463")
      :<|> (return "route464")
      :<|> (return "route465")
      :<|> (return "route466")
      :<|> (return "route467")
      :<|> (return "route468")
      :<|> (return "route469")
      :<|> (return "route470")
      :<|> (return "route471")
      :<|> (return "route472")
      :<|> (return "route473")
      :<|> (return "route474")
      :<|> (return "route475")
      :<|> (return "route476")
      :<|> (return "route477")
      :<|> (return "route478")
      :<|> (return "route479")
      :<|> (return "route480")
      :<|> (return "route481")
      :<|> (return "route482")
      :<|> (return "route483")
      :<|> (return "route484")
      :<|> (return "route485")
      :<|> (return "route486")
      :<|> (return "route487")
      :<|> (return "route488")
      :<|> (return "route489")
      :<|> (return "route490")
      :<|> (return "route491")
      :<|> (return "route492")
      :<|> (return "route493")
      :<|> (return "route494")
      :<|> (return "route495")
      :<|> (return "route496")
      :<|> (return "route497")
      :<|> (return "route498")
      :<|> (return "route499")
      :<|> (return "route500")
      :<|> (return "route501")
      :<|> (return "route502")
      :<|> (return "route503")
      :<|> (return "route504")
      :<|> (return "route505")
      :<|> (return "route506")
      :<|> (return "route507")
      :<|> (return "route508")
      :<|> (return "route509")
      :<|> (return "route510")
      :<|> (return "route511")
      :<|> (return "route512")
      :<|> (return "route513")
      :<|> (return "route514")
      :<|> (return "route515")
      :<|> (return "route516")
      :<|> (return "route517")
      :<|> (return "route518")
      :<|> (return "route519")
      :<|> (return "route520")
      :<|> (return "route521")
      :<|> (return "route522")
      :<|> (return "route523")
      :<|> (return "route524")
      :<|> (return "route525")
      :<|> (return "route526")
      :<|> (return "route527")
      :<|> (return "route528")
      :<|> (return "route529")
      :<|> (return "route530")
      :<|> (return "route531")
      :<|> (return "route532")
      :<|> (return "route533")
      :<|> (return "route534")
      :<|> (return "route535")
      :<|> (return "route536")
      :<|> (return "route537")
      :<|> (return "route538")
      :<|> (return "route539")
      :<|> (return "route540")
      :<|> (return "route541")
      :<|> (return "route542")
      :<|> (return "route543")
      :<|> (return "route544")
      :<|> (return "route545")
      :<|> (return "route546")
      :<|> (return "route547")
      :<|> (return "route548")
      :<|> (return "route549")
      :<|> (return "route550")
      :<|> (return "route551")
      :<|> (return "route552")
      :<|> (return "route553")
      :<|> (return "route554")
      :<|> (return "route555")
      :<|> (return "route556")
      :<|> (return "route557")
      :<|> (return "route558")
      :<|> (return "route559")
      :<|> (return "route560")
      :<|> (return "route561")
      :<|> (return "route562")
      :<|> (return "route563")
      :<|> (return "route564")
      :<|> (return "route565")
      :<|> (return "route566")
      :<|> (return "route567")
      :<|> (return "route568")
      :<|> (return "route569")
      :<|> (return "route570")
      :<|> (return "route571")
      :<|> (return "route572")
      :<|> (return "route573")
      :<|> (return "route574")
      :<|> (return "route575")
      :<|> (return "route576")
      :<|> (return "route577")
      :<|> (return "route578")
      :<|> (return "route579")
      :<|> (return "route580")
      :<|> (return "route581")
      :<|> (return "route582")
      :<|> (return "route583")
      :<|> (return "route584")
      :<|> (return "route585")
      :<|> (return "route586")
      :<|> (return "route587")
      :<|> (return "route588")
      :<|> (return "route589")
      :<|> (return "route590")
      :<|> (return "route591")
      :<|> (return "route592")
      :<|> (return "route593")
      :<|> (return "route594")
      :<|> (return "route595")
      :<|> (return "route596")
      :<|> (return "route597")
      :<|> (return "route598")
      :<|> (return "route599")
      :<|> (return "route600")
      :<|> (return "route601")
      :<|> (return "route602")
      :<|> (return "route603")
      :<|> (return "route604")
      :<|> (return "route605")
      :<|> (return "route606")
      :<|> (return "route607")
      :<|> (return "route608")
      :<|> (return "route609")
      :<|> (return "route610")
      :<|> (return "route611")
      :<|> (return "route612")
      :<|> (return "route613")
      :<|> (return "route614")
      :<|> (return "route615")
      :<|> (return "route616")
      :<|> (return "route617")
      :<|> (return "route618")
      :<|> (return "route619")
      :<|> (return "route620")
      :<|> (return "route621")
      :<|> (return "route622")
      :<|> (return "route623")
      :<|> (return "route624")
      :<|> (return "route625")
      :<|> (return "route626")
      :<|> (return "route627")
      :<|> (return "route628")
      :<|> (return "route629")
      :<|> (return "route630")
      :<|> (return "route631")
      :<|> (return "route632")
      :<|> (return "route633")
      :<|> (return "route634")
      :<|> (return "route635")
      :<|> (return "route636")
      :<|> (return "route637")
      :<|> (return "route638")
      :<|> (return "route639")
      :<|> (return "route640")
      :<|> (return "route641")
      :<|> (return "route642")
      :<|> (return "route643")
      :<|> (return "route644")
      :<|> (return "route645")
      :<|> (return "route646")
      :<|> (return "route647")
      :<|> (return "route648")
      :<|> (return "route649")
      :<|> (return "route650")
      :<|> (return "route651")
      :<|> (return "route652")
      :<|> (return "route653")
      :<|> (return "route654")
      :<|> (return "route655")
      :<|> (return "route656")
      :<|> (return "route657")
      :<|> (return "route658")
      :<|> (return "route659")
      :<|> (return "route660")
      :<|> (return "route661")
      :<|> (return "route662")
      :<|> (return "route663")
      :<|> (return "route664")
      :<|> (return "route665")
      :<|> (return "route666")
      :<|> (return "route667")
      :<|> (return "route668")
      :<|> (return "route669")
      :<|> (return "route670")
      :<|> (return "route671")
      :<|> (return "route672")
      :<|> (return "route673")
      :<|> (return "route674")
      :<|> (return "route675")
      :<|> (return "route676")
      :<|> (return "route677")
      :<|> (return "route678")
      :<|> (return "route679")
      :<|> (return "route680")
      :<|> (return "route681")
      :<|> (return "route682")
      :<|> (return "route683")
      :<|> (return "route684")
      :<|> (return "route685")
      :<|> (return "route686")
      :<|> (return "route687")
      :<|> (return "route688")
      :<|> (return "route689")
      :<|> (return "route690")
      :<|> (return "route691")
      :<|> (return "route692")
      :<|> (return "route693")
      :<|> (return "route694")
      :<|> (return "route695")
      :<|> (return "route696")
      :<|> (return "route697")
      :<|> (return "route698")
      :<|> (return "route699")
      :<|> (return "route700")
      :<|> (return "route701")
      :<|> (return "route702")
      :<|> (return "route703")
      :<|> (return "route704")
      :<|> (return "route705")
      :<|> (return "route706")
      :<|> (return "route707")
      :<|> (return "route708")
      :<|> (return "route709")
      :<|> (return "route710")
      :<|> (return "route711")
      :<|> (return "route712")
      :<|> (return "route713")
      :<|> (return "route714")
      :<|> (return "route715")
      :<|> (return "route716")
      :<|> (return "route717")
      :<|> (return "route718")
      :<|> (return "route719")
      :<|> (return "route720")
      :<|> (return "route721")
      :<|> (return "route722")
      :<|> (return "route723")
      :<|> (return "route724")
      :<|> (return "route725")
      :<|> (return "route726")
      :<|> (return "route727")
      :<|> (return "route728")
      :<|> (return "route729")
      :<|> (return "route730")
      :<|> (return "route731")
      :<|> (return "route732")
      :<|> (return "route733")
      :<|> (return "route734")
      :<|> (return "route735")
      :<|> (return "route736")
      :<|> (return "route737")
      :<|> (return "route738")
      :<|> (return "route739")
      :<|> (return "route740")
      :<|> (return "route741")
      :<|> (return "route742")
      :<|> (return "route743")
      :<|> (return "route744")
      :<|> (return "route745")
      :<|> (return "route746")
      :<|> (return "route747")
      :<|> (return "route748")
      :<|> (return "route749")
      :<|> (return "route750")
      :<|> (return "route751")
      :<|> (return "route752")
      :<|> (return "route753")
      :<|> (return "route754")
      :<|> (return "route755")
      :<|> (return "route756")
      :<|> (return "route757")
      :<|> (return "route758")
      :<|> (return "route759")
      :<|> (return "route760")
      :<|> (return "route761")
      :<|> (return "route762")
      :<|> (return "route763")
      :<|> (return "route764")
      :<|> (return "route765")
      :<|> (return "route766")
      :<|> (return "route767")
      :<|> (return "route768")
      :<|> (return "route769")
      :<|> (return "route770")
      :<|> (return "route771")
      :<|> (return "route772")
      :<|> (return "route773")
      :<|> (return "route774")
      :<|> (return "route775")
      :<|> (return "route776")
      :<|> (return "route777")
      :<|> (return "route778")
      :<|> (return "route779")
      :<|> (return "route780")
      :<|> (return "route781")
      :<|> (return "route782")
      :<|> (return "route783")
      :<|> (return "route784")
      :<|> (return "route785")
      :<|> (return "route786")
      :<|> (return "route787")
      :<|> (return "route788")
      :<|> (return "route789")
      :<|> (return "route790")
      :<|> (return "route791")
      :<|> (return "route792")
      :<|> (return "route793")
      :<|> (return "route794")
      :<|> (return "route795")
      :<|> (return "route796")
      :<|> (return "route797")
      :<|> (return "route798")
      :<|> (return "route799")
      :<|> (return "route800")
      :<|> (return "route801")
      :<|> (return "route802")
      :<|> (return "route803")
      :<|> (return "route804")
      :<|> (return "route805")
      :<|> (return "route806")
      :<|> (return "route807")
      :<|> (return "route808")
      :<|> (return "route809")
      :<|> (return "route810")
      :<|> (return "route811")
      :<|> (return "route812")
      :<|> (return "route813")
      :<|> (return "route814")
      :<|> (return "route815")
      :<|> (return "route816")
      :<|> (return "route817")
      :<|> (return "route818")
      :<|> (return "route819")
      :<|> (return "route820")
      :<|> (return "route821")
      :<|> (return "route822")
      :<|> (return "route823")
      :<|> (return "route824")
      :<|> (return "route825")
      :<|> (return "route826")
      :<|> (return "route827")
      :<|> (return "route828")
      :<|> (return "route829")
      :<|> (return "route830")
      :<|> (return "route831")
      :<|> (return "route832")
      :<|> (return "route833")
      :<|> (return "route834")
      :<|> (return "route835")
      :<|> (return "route836")
      :<|> (return "route837")
      :<|> (return "route838")
      :<|> (return "route839")
      :<|> (return "route840")
      :<|> (return "route841")
      :<|> (return "route842")
      :<|> (return "route843")
      :<|> (return "route844")
      :<|> (return "route845")
      :<|> (return "route846")
      :<|> (return "route847")
      :<|> (return "route848")
      :<|> (return "route849")
      :<|> (return "route850")
      :<|> (return "route851")
      :<|> (return "route852")
      :<|> (return "route853")
      :<|> (return "route854")
      :<|> (return "route855")
      :<|> (return "route856")
      :<|> (return "route857")
      :<|> (return "route858")
      :<|> (return "route859")
      :<|> (return "route860")
      :<|> (return "route861")
      :<|> (return "route862")
      :<|> (return "route863")
      :<|> (return "route864")
      :<|> (return "route865")
      :<|> (return "route866")
      :<|> (return "route867")
      :<|> (return "route868")
      :<|> (return "route869")
      :<|> (return "route870")
      :<|> (return "route871")
      :<|> (return "route872")
      :<|> (return "route873")
      :<|> (return "route874")
      :<|> (return "route875")
      :<|> (return "route876")
      :<|> (return "route877")
      :<|> (return "route878")
      :<|> (return "route879")
      :<|> (return "route880")
      :<|> (return "route881")
      :<|> (return "route882")
      :<|> (return "route883")
      :<|> (return "route884")
      :<|> (return "route885")
      :<|> (return "route886")
      :<|> (return "route887")
      :<|> (return "route888")
      :<|> (return "route889")
      :<|> (return "route890")
      :<|> (return "route891")
      :<|> (return "route892")
      :<|> (return "route893")
      :<|> (return "route894")
      :<|> (return "route895")
      :<|> (return "route896")
      :<|> (return "route897")
      :<|> (return "route898")
      :<|> (return "route899")
      :<|> (return "route900")
      :<|> (return "route901")
      :<|> (return "route902")
      :<|> (return "route903")
      :<|> (return "route904")
      :<|> (return "route905")
      :<|> (return "route906")
      :<|> (return "route907")
      :<|> (return "route908")
      :<|> (return "route909")
      :<|> (return "route910")
      :<|> (return "route911")
      :<|> (return "route912")
      :<|> (return "route913")
      :<|> (return "route914")
      :<|> (return "route915")
      :<|> (return "route916")
      :<|> (return "route917")
      :<|> (return "route918")
      :<|> (return "route919")
      :<|> (return "route920")
      :<|> (return "route921")
      :<|> (return "route922")
      :<|> (return "route923")
      :<|> (return "route924")
      :<|> (return "route925")
      :<|> (return "route926")
      :<|> (return "route927")
      :<|> (return "route928")
      :<|> (return "route929")
      :<|> (return "route930")
      :<|> (return "route931")
      :<|> (return "route932")
      :<|> (return "route933")
      :<|> (return "route934")
      :<|> (return "route935")
      :<|> (return "route936")
      :<|> (return "route937")
      :<|> (return "route938")
      :<|> (return "route939")
      :<|> (return "route940")
      :<|> (return "route941")
      :<|> (return "route942")
      :<|> (return "route943")
      :<|> (return "route944")
      :<|> (return "route945")
      :<|> (return "route946")
      :<|> (return "route947")
      :<|> (return "route948")
      :<|> (return "route949")
      :<|> (return "route950")
      :<|> (return "route951")
      :<|> (return "route952")
      :<|> (return "route953")
      :<|> (return "route954")
      :<|> (return "route955")
      :<|> (return "route956")
      :<|> (return "route957")
      :<|> (return "route958")
      :<|> (return "route959")
      :<|> (return "route960")
      :<|> (return "route961")
      :<|> (return "route962")
      :<|> (return "route963")
      :<|> (return "route964")
      :<|> (return "route965")
      :<|> (return "route966")
      :<|> (return "route967")
      :<|> (return "route968")
      :<|> (return "route969")
      :<|> (return "route970")
      :<|> (return "route971")
      :<|> (return "route972")
      :<|> (return "route973")
      :<|> (return "route974")
      :<|> (return "route975")
      :<|> (return "route976")
      :<|> (return "route977")
      :<|> (return "route978")
      :<|> (return "route979")
      :<|> (return "route980")
      :<|> (return "route981")
      :<|> (return "route982")
      :<|> (return "route983")
      :<|> (return "route984")
      :<|> (return "route985")
      :<|> (return "route986")
      :<|> (return "route987")
      :<|> (return "route988")
      :<|> (return "route989")
      :<|> (return "route990")
      :<|> (return "route991")
      :<|> (return "route992")
      :<|> (return "route993")
      :<|> (return "route994")
      :<|> (return "route995")
      :<|> (return "route996")
      :<|> (return "route997")
      :<|> (return "route998")
      :<|> (return "route999")
      :<|> (return "route1000")

startApp :: IO ()
startApp = run 8080 app

main :: IO ()
main = startApp
