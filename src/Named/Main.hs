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
import Servant.API.Generic (Generic)

type API
   = NamedRoutes Routes

data Routes mode =
  Routes
    { route1 :: mode    :- "route1" :> Get '[ JSON] String
    , route2 :: mode    :- "route2" :> Get '[JSON] String
    , route3 :: mode    :- "route3" :> Get '[JSON] String
    , route4 :: mode    :- "route4" :> Get '[JSON] String
    , route5 :: mode    :- "route5" :> Get '[JSON] String
    , route6 :: mode    :- "route6" :> Get '[JSON] String
    , route7 :: mode    :- "route7" :> Get '[JSON] String
    , route8 :: mode    :- "route8" :> Get '[JSON] String
    , route9 :: mode    :- "route9" :> Get '[JSON] String
    , route10 :: mode   :- "route10" :> Get '[JSON] String
    , route11 :: mode   :- "route11" :> Get '[JSON] String
    , route12 :: mode   :- "route12" :> Get '[JSON] String
    , route13 :: mode   :- "route13" :> Get '[JSON] String
    , route14 :: mode   :- "route14" :> Get '[JSON] String
    , route15 :: mode   :- "route15" :> Get '[JSON] String
    , route16 :: mode   :- "route16" :> Get '[JSON] String
    , route17 :: mode   :- "route17" :> Get '[JSON] String
    , route18 :: mode   :- "route18" :> Get '[JSON] String
    , route19 :: mode   :- "route19" :> Get '[JSON] String
    , route20 :: mode   :- "route20" :> Get '[JSON] String
    , route21 :: mode   :- "route21" :> Get '[JSON] String
    , route22 :: mode   :- "route22" :> Get '[JSON] String
    , route23 :: mode   :- "route23" :> Get '[JSON] String
    , route24 :: mode   :- "route24" :> Get '[JSON] String
    , route25 :: mode   :- "route25" :> Get '[JSON] String
    , route26 :: mode   :- "route26" :> Get '[JSON] String
    , route27 :: mode   :- "route27" :> Get '[JSON] String
    , route28 :: mode   :- "route28" :> Get '[JSON] String
    , route29 :: mode   :- "route29" :> Get '[JSON] String
    , route30 :: mode   :- "route30" :> Get '[JSON] String
    , route31 :: mode   :- "route31" :> Get '[JSON] String
    , route32 :: mode   :- "route32" :> Get '[JSON] String
    , route33 :: mode   :- "route33" :> Get '[JSON] String
    , route34 :: mode   :- "route34" :> Get '[JSON] String
    , route35 :: mode   :- "route35" :> Get '[JSON] String
    , route36 :: mode   :- "route36" :> Get '[JSON] String
    , route37 :: mode   :- "route37" :> Get '[JSON] String
    , route38 :: mode   :- "route38" :> Get '[JSON] String
    , route39 :: mode   :- "route39" :> Get '[JSON] String
    , route40 :: mode   :- "route40" :> Get '[JSON] String
    , route41 :: mode   :- "route41" :> Get '[JSON] String
    , route42 :: mode   :- "route42" :> Get '[JSON] String
    , route43 :: mode   :- "route43" :> Get '[JSON] String
    , route44 :: mode   :- "route44" :> Get '[JSON] String
    , route45 :: mode   :- "route45" :> Get '[JSON] String
    , route46 :: mode   :- "route46" :> Get '[JSON] String
    , route47 :: mode   :- "route47" :> Get '[JSON] String
    , route48 :: mode   :- "route48" :> Get '[JSON] String
    , route49 :: mode   :- "route49" :> Get '[JSON] String
    , route50 :: mode   :- "route50" :> Get '[JSON] String
    , route51 :: mode   :- "route51" :> Get '[JSON] String
    , route52 :: mode   :- "route52" :> Get '[JSON] String
    , route53 :: mode   :- "route53" :> Get '[JSON] String
    , route54 :: mode   :- "route54" :> Get '[JSON] String
    , route55 :: mode   :- "route55" :> Get '[JSON] String
    , route56 :: mode   :- "route56" :> Get '[JSON] String
    , route57 :: mode   :- "route57" :> Get '[JSON] String
    , route58 :: mode   :- "route58" :> Get '[JSON] String
    , route59 :: mode   :- "route59" :> Get '[JSON] String
    , route60 :: mode   :- "route60" :> Get '[JSON] String
    , route61 :: mode   :- "route61" :> Get '[JSON] String
    , route62 :: mode   :- "route62" :> Get '[JSON] String
    , route63 :: mode   :- "route63" :> Get '[JSON] String
    , route64 :: mode   :- "route64" :> Get '[JSON] String
    , route65 :: mode   :- "route65" :> Get '[JSON] String
    , route66 :: mode   :- "route66" :> Get '[JSON] String
    , route67 :: mode   :- "route67" :> Get '[JSON] String
    , route68 :: mode   :- "route68" :> Get '[JSON] String
    , route69 :: mode   :- "route69" :> Get '[JSON] String
    , route70 :: mode   :- "route70" :> Get '[JSON] String
    , route71 :: mode   :- "route71" :> Get '[JSON] String
    , route72 :: mode   :- "route72" :> Get '[JSON] String
    , route73 :: mode   :- "route73" :> Get '[JSON] String
    , route74 :: mode   :- "route74" :> Get '[JSON] String
    , route75 :: mode   :- "route75" :> Get '[JSON] String
    , route76 :: mode   :- "route76" :> Get '[JSON] String
    , route77 :: mode   :- "route77" :> Get '[JSON] String
    , route78 :: mode   :- "route78" :> Get '[JSON] String
    , route79 :: mode   :- "route79" :> Get '[JSON] String
    , route80 :: mode   :- "route80" :> Get '[JSON] String
    , route81 :: mode   :- "route81" :> Get '[JSON] String
    , route82 :: mode   :- "route82" :> Get '[JSON] String
    , route83 :: mode   :- "route83" :> Get '[JSON] String
    , route84 :: mode   :- "route84" :> Get '[JSON] String
    , route85 :: mode   :- "route85" :> Get '[JSON] String
    , route86 :: mode   :- "route86" :> Get '[JSON] String
    , route87 :: mode   :- "route87" :> Get '[JSON] String
    , route88 :: mode   :- "route88" :> Get '[JSON] String
    , route89 :: mode   :- "route89" :> Get '[JSON] String
    , route90 :: mode   :- "route90" :> Get '[JSON] String
    , route91 :: mode   :- "route91" :> Get '[JSON] String
    , route92 :: mode   :- "route92" :> Get '[JSON] String
    , route93 :: mode   :- "route93" :> Get '[JSON] String
    , route94 :: mode   :- "route94" :> Get '[JSON] String
    , route95 :: mode   :- "route95" :> Get '[JSON] String
    , route96 :: mode   :- "route96" :> Get '[JSON] String
    , route97 :: mode   :- "route97" :> Get '[JSON] String
    , route98 :: mode   :- "route98" :> Get '[JSON] String
    , route99 :: mode   :- "route99" :> Get '[JSON] String
    , route100 :: mode  :- "route100" :> Get '[JSON] String
    , route101 :: mode  :- "route101" :> Get '[JSON] String
    , route102 :: mode  :- "route102" :> Get '[JSON] String
    , route103 :: mode  :- "route103" :> Get '[JSON] String
    , route104 :: mode  :- "route104" :> Get '[JSON] String
    , route105 :: mode  :- "route105" :> Get '[JSON] String
    , route106 :: mode  :- "route106" :> Get '[JSON] String
    , route107 :: mode  :- "route107" :> Get '[JSON] String
    , route108 :: mode  :- "route108" :> Get '[JSON] String
    , route109 :: mode  :- "route109" :> Get '[JSON] String
    , route110 :: mode  :- "route110" :> Get '[JSON] String
    , route111 :: mode  :- "route111" :> Get '[JSON] String
    , route112 :: mode  :- "route112" :> Get '[JSON] String
    , route113 :: mode  :- "route113" :> Get '[JSON] String
    , route114 :: mode  :- "route114" :> Get '[JSON] String
    , route115 :: mode  :- "route115" :> Get '[JSON] String
    , route116 :: mode  :- "route116" :> Get '[JSON] String
    , route117 :: mode  :- "route117" :> Get '[JSON] String
    , route118 :: mode  :- "route118" :> Get '[JSON] String
    , route119 :: mode  :- "route119" :> Get '[JSON] String
    , route120 :: mode  :- "route120" :> Get '[JSON] String
    , route121 :: mode  :- "route121" :> Get '[JSON] String
    , route122 :: mode  :- "route122" :> Get '[JSON] String
    , route123 :: mode  :- "route123" :> Get '[JSON] String
    , route124 :: mode  :- "route124" :> Get '[JSON] String
    , route125 :: mode  :- "route125" :> Get '[JSON] String
    , route126 :: mode  :- "route126" :> Get '[JSON] String
    , route127 :: mode  :- "route127" :> Get '[JSON] String
    , route128 :: mode  :- "route128" :> Get '[JSON] String
    , route129 :: mode  :- "route129" :> Get '[JSON] String
    , route130 :: mode  :- "route130" :> Get '[JSON] String
    , route131 :: mode  :- "route131" :> Get '[JSON] String
    , route132 :: mode  :- "route132" :> Get '[JSON] String
    , route133 :: mode  :- "route133" :> Get '[JSON] String
    , route134 :: mode  :- "route134" :> Get '[JSON] String
    , route135 :: mode  :- "route135" :> Get '[JSON] String
    , route136 :: mode  :- "route136" :> Get '[JSON] String
    , route137 :: mode  :- "route137" :> Get '[JSON] String
    , route138 :: mode  :- "route138" :> Get '[JSON] String
    , route139 :: mode  :- "route139" :> Get '[JSON] String
    , route140 :: mode  :- "route140" :> Get '[JSON] String
    , route141 :: mode  :- "route141" :> Get '[JSON] String
    , route142 :: mode  :- "route142" :> Get '[JSON] String
    , route143 :: mode  :- "route143" :> Get '[JSON] String
    , route144 :: mode  :- "route144" :> Get '[JSON] String
    , route145 :: mode  :- "route145" :> Get '[JSON] String
    , route146 :: mode  :- "route146" :> Get '[JSON] String
    , route147 :: mode  :- "route147" :> Get '[JSON] String
    , route148 :: mode  :- "route148" :> Get '[JSON] String
    , route149 :: mode  :- "route149" :> Get '[JSON] String
    , route150 :: mode  :- "route150" :> Get '[JSON] String
    , route151 :: mode  :- "route151" :> Get '[JSON] String
    , route152 :: mode  :- "route152" :> Get '[JSON] String
    , route153 :: mode  :- "route153" :> Get '[JSON] String
    , route154 :: mode  :- "route154" :> Get '[JSON] String
    , route155 :: mode  :- "route155" :> Get '[JSON] String
    , route156 :: mode  :- "route156" :> Get '[JSON] String
    , route157 :: mode  :- "route157" :> Get '[JSON] String
    , route158 :: mode  :- "route158" :> Get '[JSON] String
    , route159 :: mode  :- "route159" :> Get '[JSON] String
    , route160 :: mode  :- "route160" :> Get '[JSON] String
    , route161 :: mode  :- "route161" :> Get '[JSON] String
    , route162 :: mode  :- "route162" :> Get '[JSON] String
    , route163 :: mode  :- "route163" :> Get '[JSON] String
    , route164 :: mode  :- "route164" :> Get '[JSON] String
    , route165 :: mode  :- "route165" :> Get '[JSON] String
    , route166 :: mode  :- "route166" :> Get '[JSON] String
    , route167 :: mode  :- "route167" :> Get '[JSON] String
    , route168 :: mode  :- "route168" :> Get '[JSON] String
    , route169 :: mode  :- "route169" :> Get '[JSON] String
    , route170 :: mode  :- "route170" :> Get '[JSON] String
    , route171 :: mode  :- "route171" :> Get '[JSON] String
    , route172 :: mode  :- "route172" :> Get '[JSON] String
    , route173 :: mode  :- "route173" :> Get '[JSON] String
    , route174 :: mode  :- "route174" :> Get '[JSON] String
    , route175 :: mode  :- "route175" :> Get '[JSON] String
    , route176 :: mode  :- "route176" :> Get '[JSON] String
    , route177 :: mode  :- "route177" :> Get '[JSON] String
    , route178 :: mode  :- "route178" :> Get '[JSON] String
    , route179 :: mode  :- "route179" :> Get '[JSON] String
    , route180 :: mode  :- "route180" :> Get '[JSON] String
    , route181 :: mode  :- "route181" :> Get '[JSON] String
    , route182 :: mode  :- "route182" :> Get '[JSON] String
    , route183 :: mode  :- "route183" :> Get '[JSON] String
    , route184 :: mode  :- "route184" :> Get '[JSON] String
    , route185 :: mode  :- "route185" :> Get '[JSON] String
    , route186 :: mode  :- "route186" :> Get '[JSON] String
    , route187 :: mode  :- "route187" :> Get '[JSON] String
    , route188 :: mode  :- "route188" :> Get '[JSON] String
    , route189 :: mode  :- "route189" :> Get '[JSON] String
    , route190 :: mode  :- "route190" :> Get '[JSON] String
    , route191 :: mode  :- "route191" :> Get '[JSON] String
    , route192 :: mode  :- "route192" :> Get '[JSON] String
    , route193 :: mode  :- "route193" :> Get '[JSON] String
    , route194 :: mode  :- "route194" :> Get '[JSON] String
    , route195 :: mode  :- "route195" :> Get '[JSON] String
    , route196 :: mode  :- "route196" :> Get '[JSON] String
    , route197 :: mode  :- "route197" :> Get '[JSON] String
    , route198 :: mode  :- "route198" :> Get '[JSON] String
    , route199 :: mode  :- "route199" :> Get '[JSON] String
    , route200 :: mode  :- "route200" :> Get '[JSON] String
    , route201 :: mode  :- "route201" :> Get '[JSON] String
    , route202 :: mode  :- "route202" :> Get '[JSON] String
    , route203 :: mode  :- "route203" :> Get '[JSON] String
    , route204 :: mode  :- "route204" :> Get '[JSON] String
    , route205 :: mode  :- "route205" :> Get '[JSON] String
    , route206 :: mode  :- "route206" :> Get '[JSON] String
    , route207 :: mode  :- "route207" :> Get '[JSON] String
    , route208 :: mode  :- "route208" :> Get '[JSON] String
    , route209 :: mode  :- "route209" :> Get '[JSON] String
    , route210 :: mode  :- "route210" :> Get '[JSON] String
    , route211 :: mode  :- "route211" :> Get '[JSON] String
    , route212 :: mode  :- "route212" :> Get '[JSON] String
    , route213 :: mode  :- "route213" :> Get '[JSON] String
    , route214 :: mode  :- "route214" :> Get '[JSON] String
    , route215 :: mode  :- "route215" :> Get '[JSON] String
    , route216 :: mode  :- "route216" :> Get '[JSON] String
    , route217 :: mode  :- "route217" :> Get '[JSON] String
    , route218 :: mode  :- "route218" :> Get '[JSON] String
    , route219 :: mode  :- "route219" :> Get '[JSON] String
    , route220 :: mode  :- "route220" :> Get '[JSON] String
    , route221 :: mode  :- "route221" :> Get '[JSON] String
    , route222 :: mode  :- "route222" :> Get '[JSON] String
    , route223 :: mode  :- "route223" :> Get '[JSON] String
    , route224 :: mode  :- "route224" :> Get '[JSON] String
    , route225 :: mode  :- "route225" :> Get '[JSON] String
    , route226 :: mode  :- "route226" :> Get '[JSON] String
    , route227 :: mode  :- "route227" :> Get '[JSON] String
    , route228 :: mode  :- "route228" :> Get '[JSON] String
    , route229 :: mode  :- "route229" :> Get '[JSON] String
    , route230 :: mode  :- "route230" :> Get '[JSON] String
    , route231 :: mode  :- "route231" :> Get '[JSON] String
    , route232 :: mode  :- "route232" :> Get '[JSON] String
    , route233 :: mode  :- "route233" :> Get '[JSON] String
    , route234 :: mode  :- "route234" :> Get '[JSON] String
    , route235 :: mode  :- "route235" :> Get '[JSON] String
    , route236 :: mode  :- "route236" :> Get '[JSON] String
    , route237 :: mode  :- "route237" :> Get '[JSON] String
    , route238 :: mode  :- "route238" :> Get '[JSON] String
    , route239 :: mode  :- "route239" :> Get '[JSON] String
    , route240 :: mode  :- "route240" :> Get '[JSON] String
    , route241 :: mode  :- "route241" :> Get '[JSON] String
    , route242 :: mode  :- "route242" :> Get '[JSON] String
    , route243 :: mode  :- "route243" :> Get '[JSON] String
    , route244 :: mode  :- "route244" :> Get '[JSON] String
    , route245 :: mode  :- "route245" :> Get '[JSON] String
    , route246 :: mode  :- "route246" :> Get '[JSON] String
    , route247 :: mode  :- "route247" :> Get '[JSON] String
    , route248 :: mode  :- "route248" :> Get '[JSON] String
    , route249 :: mode  :- "route249" :> Get '[JSON] String
    , route250 :: mode  :- "route250" :> Get '[JSON] String
    , route251 :: mode  :- "route251" :> Get '[JSON] String
    , route252 :: mode  :- "route252" :> Get '[JSON] String
    , route253 :: mode  :- "route253" :> Get '[JSON] String
    , route254 :: mode  :- "route254" :> Get '[JSON] String
    , route255 :: mode  :- "route255" :> Get '[JSON] String
    , route256 :: mode  :- "route256" :> Get '[JSON] String
    , route257 :: mode  :- "route257" :> Get '[JSON] String
    , route258 :: mode  :- "route258" :> Get '[JSON] String
    , route259 :: mode  :- "route259" :> Get '[JSON] String
    , route260 :: mode  :- "route260" :> Get '[JSON] String
    , route261 :: mode  :- "route261" :> Get '[JSON] String
    , route262 :: mode  :- "route262" :> Get '[JSON] String
    , route263 :: mode  :- "route263" :> Get '[JSON] String
    , route264 :: mode  :- "route264" :> Get '[JSON] String
    , route265 :: mode  :- "route265" :> Get '[JSON] String
    , route266 :: mode  :- "route266" :> Get '[JSON] String
    , route267 :: mode  :- "route267" :> Get '[JSON] String
    , route268 :: mode  :- "route268" :> Get '[JSON] String
    , route269 :: mode  :- "route269" :> Get '[JSON] String
    , route270 :: mode  :- "route270" :> Get '[JSON] String
    , route271 :: mode  :- "route271" :> Get '[JSON] String
    , route272 :: mode  :- "route272" :> Get '[JSON] String
    , route273 :: mode  :- "route273" :> Get '[JSON] String
    , route274 :: mode  :- "route274" :> Get '[JSON] String
    , route275 :: mode  :- "route275" :> Get '[JSON] String
    , route276 :: mode  :- "route276" :> Get '[JSON] String
    , route277 :: mode  :- "route277" :> Get '[JSON] String
    , route278 :: mode  :- "route278" :> Get '[JSON] String
    , route279 :: mode  :- "route279" :> Get '[JSON] String
    , route280 :: mode  :- "route280" :> Get '[JSON] String
    , route281 :: mode  :- "route281" :> Get '[JSON] String
    , route282 :: mode  :- "route282" :> Get '[JSON] String
    , route283 :: mode  :- "route283" :> Get '[JSON] String
    , route284 :: mode  :- "route284" :> Get '[JSON] String
    , route285 :: mode  :- "route285" :> Get '[JSON] String
    , route286 :: mode  :- "route286" :> Get '[JSON] String
    , route287 :: mode  :- "route287" :> Get '[JSON] String
    , route288 :: mode  :- "route288" :> Get '[JSON] String
    , route289 :: mode  :- "route289" :> Get '[JSON] String
    , route290 :: mode  :- "route290" :> Get '[JSON] String
    , route291 :: mode  :- "route291" :> Get '[JSON] String
    , route292 :: mode  :- "route292" :> Get '[JSON] String
    , route293 :: mode  :- "route293" :> Get '[JSON] String
    , route294 :: mode  :- "route294" :> Get '[JSON] String
    , route295 :: mode  :- "route295" :> Get '[JSON] String
    , route296 :: mode  :- "route296" :> Get '[JSON] String
    , route297 :: mode  :- "route297" :> Get '[JSON] String
    , route298 :: mode  :- "route298" :> Get '[JSON] String
    , route299 :: mode  :- "route299" :> Get '[JSON] String
    , route300 :: mode  :- "route300" :> Get '[JSON] String
    , route301 :: mode  :- "route301" :> Get '[JSON] String
    , route302 :: mode  :- "route302" :> Get '[JSON] String
    , route303 :: mode  :- "route303" :> Get '[JSON] String
    , route304 :: mode  :- "route304" :> Get '[JSON] String
    , route305 :: mode  :- "route305" :> Get '[JSON] String
    , route306 :: mode  :- "route306" :> Get '[JSON] String
    , route307 :: mode  :- "route307" :> Get '[JSON] String
    , route308 :: mode  :- "route308" :> Get '[JSON] String
    , route309 :: mode  :- "route309" :> Get '[JSON] String
    , route310 :: mode  :- "route310" :> Get '[JSON] String
    , route311 :: mode  :- "route311" :> Get '[JSON] String
    , route312 :: mode  :- "route312" :> Get '[JSON] String
    , route313 :: mode  :- "route313" :> Get '[JSON] String
    , route314 :: mode  :- "route314" :> Get '[JSON] String
    , route315 :: mode  :- "route315" :> Get '[JSON] String
    , route316 :: mode  :- "route316" :> Get '[JSON] String
    , route317 :: mode  :- "route317" :> Get '[JSON] String
    , route318 :: mode  :- "route318" :> Get '[JSON] String
    , route319 :: mode  :- "route319" :> Get '[JSON] String
    , route320 :: mode  :- "route320" :> Get '[JSON] String
    , route321 :: mode  :- "route321" :> Get '[JSON] String
    , route322 :: mode  :- "route322" :> Get '[JSON] String
    , route323 :: mode  :- "route323" :> Get '[JSON] String
    , route324 :: mode  :- "route324" :> Get '[JSON] String
    , route325 :: mode  :- "route325" :> Get '[JSON] String
    , route326 :: mode  :- "route326" :> Get '[JSON] String
    , route327 :: mode  :- "route327" :> Get '[JSON] String
    , route328 :: mode  :- "route328" :> Get '[JSON] String
    , route329 :: mode  :- "route329" :> Get '[JSON] String
    , route330 :: mode  :- "route330" :> Get '[JSON] String
    , route331 :: mode  :- "route331" :> Get '[JSON] String
    , route332 :: mode  :- "route332" :> Get '[JSON] String
    , route333 :: mode  :- "route333" :> Get '[JSON] String
    , route334 :: mode  :- "route334" :> Get '[JSON] String
    , route335 :: mode  :- "route335" :> Get '[JSON] String
    , route336 :: mode  :- "route336" :> Get '[JSON] String
    , route337 :: mode  :- "route337" :> Get '[JSON] String
    , route338 :: mode  :- "route338" :> Get '[JSON] String
    , route339 :: mode  :- "route339" :> Get '[JSON] String
    , route340 :: mode  :- "route340" :> Get '[JSON] String
    , route341 :: mode  :- "route341" :> Get '[JSON] String
    , route342 :: mode  :- "route342" :> Get '[JSON] String
    , route343 :: mode  :- "route343" :> Get '[JSON] String
    , route344 :: mode  :- "route344" :> Get '[JSON] String
    , route345 :: mode  :- "route345" :> Get '[JSON] String
    , route346 :: mode  :- "route346" :> Get '[JSON] String
    , route347 :: mode  :- "route347" :> Get '[JSON] String
    , route348 :: mode  :- "route348" :> Get '[JSON] String
    , route349 :: mode  :- "route349" :> Get '[JSON] String
    , route350 :: mode  :- "route350" :> Get '[JSON] String
    , route351 :: mode  :- "route351" :> Get '[JSON] String
    , route352 :: mode  :- "route352" :> Get '[JSON] String
    , route353 :: mode  :- "route353" :> Get '[JSON] String
    , route354 :: mode  :- "route354" :> Get '[JSON] String
    , route355 :: mode  :- "route355" :> Get '[JSON] String
    , route356 :: mode  :- "route356" :> Get '[JSON] String
    , route357 :: mode  :- "route357" :> Get '[JSON] String
    , route358 :: mode  :- "route358" :> Get '[JSON] String
    , route359 :: mode  :- "route359" :> Get '[JSON] String
    , route360 :: mode  :- "route360" :> Get '[JSON] String
    , route361 :: mode  :- "route361" :> Get '[JSON] String
    , route362 :: mode  :- "route362" :> Get '[JSON] String
    , route363 :: mode  :- "route363" :> Get '[JSON] String
    , route364 :: mode  :- "route364" :> Get '[JSON] String
    , route365 :: mode  :- "route365" :> Get '[JSON] String
    , route366 :: mode  :- "route366" :> Get '[JSON] String
    , route367 :: mode  :- "route367" :> Get '[JSON] String
    , route368 :: mode  :- "route368" :> Get '[JSON] String
    , route369 :: mode  :- "route369" :> Get '[JSON] String
    , route370 :: mode  :- "route370" :> Get '[JSON] String
    , route371 :: mode  :- "route371" :> Get '[JSON] String
    , route372 :: mode  :- "route372" :> Get '[JSON] String
    , route373 :: mode  :- "route373" :> Get '[JSON] String
    , route374 :: mode  :- "route374" :> Get '[JSON] String
    , route375 :: mode  :- "route375" :> Get '[JSON] String
    , route376 :: mode  :- "route376" :> Get '[JSON] String
    , route377 :: mode  :- "route377" :> Get '[JSON] String
    , route378 :: mode  :- "route378" :> Get '[JSON] String
    , route379 :: mode  :- "route379" :> Get '[JSON] String
    , route380 :: mode  :- "route380" :> Get '[JSON] String
    , route381 :: mode  :- "route381" :> Get '[JSON] String
    , route382 :: mode  :- "route382" :> Get '[JSON] String
    , route383 :: mode  :- "route383" :> Get '[JSON] String
    , route384 :: mode  :- "route384" :> Get '[JSON] String
    , route385 :: mode  :- "route385" :> Get '[JSON] String
    , route386 :: mode  :- "route386" :> Get '[JSON] String
    , route387 :: mode  :- "route387" :> Get '[JSON] String
    , route388 :: mode  :- "route388" :> Get '[JSON] String
    , route389 :: mode  :- "route389" :> Get '[JSON] String
    , route390 :: mode  :- "route390" :> Get '[JSON] String
    , route391 :: mode  :- "route391" :> Get '[JSON] String
    , route392 :: mode  :- "route392" :> Get '[JSON] String
    , route393 :: mode  :- "route393" :> Get '[JSON] String
    , route394 :: mode  :- "route394" :> Get '[JSON] String
    , route395 :: mode  :- "route395" :> Get '[JSON] String
    , route396 :: mode  :- "route396" :> Get '[JSON] String
    , route397 :: mode  :- "route397" :> Get '[JSON] String
    , route398 :: mode  :- "route398" :> Get '[JSON] String
    , route399 :: mode  :- "route399" :> Get '[JSON] String
    , route400 :: mode  :- "route400" :> Get '[JSON] String
    , route401 :: mode  :- "route401" :> Get '[JSON] String
    , route402 :: mode  :- "route402" :> Get '[JSON] String
    , route403 :: mode  :- "route403" :> Get '[JSON] String
    , route404 :: mode  :- "route404" :> Get '[JSON] String
    , route405 :: mode  :- "route405" :> Get '[JSON] String
    , route406 :: mode  :- "route406" :> Get '[JSON] String
    , route407 :: mode  :- "route407" :> Get '[JSON] String
    , route408 :: mode  :- "route408" :> Get '[JSON] String
    , route409 :: mode  :- "route409" :> Get '[JSON] String
    , route410 :: mode  :- "route410" :> Get '[JSON] String
    , route411 :: mode  :- "route411" :> Get '[JSON] String
    , route412 :: mode  :- "route412" :> Get '[JSON] String
    , route413 :: mode  :- "route413" :> Get '[JSON] String
    , route414 :: mode  :- "route414" :> Get '[JSON] String
    , route415 :: mode  :- "route415" :> Get '[JSON] String
    , route416 :: mode  :- "route416" :> Get '[JSON] String
    , route417 :: mode  :- "route417" :> Get '[JSON] String
    , route418 :: mode  :- "route418" :> Get '[JSON] String
    , route419 :: mode  :- "route419" :> Get '[JSON] String
    , route420 :: mode  :- "route420" :> Get '[JSON] String
    , route421 :: mode  :- "route421" :> Get '[JSON] String
    , route422 :: mode  :- "route422" :> Get '[JSON] String
    , route423 :: mode  :- "route423" :> Get '[JSON] String
    , route424 :: mode  :- "route424" :> Get '[JSON] String
    , route425 :: mode  :- "route425" :> Get '[JSON] String
    , route426 :: mode  :- "route426" :> Get '[JSON] String
    , route427 :: mode  :- "route427" :> Get '[JSON] String
    , route428 :: mode  :- "route428" :> Get '[JSON] String
    , route429 :: mode  :- "route429" :> Get '[JSON] String
    , route430 :: mode  :- "route430" :> Get '[JSON] String
    , route431 :: mode  :- "route431" :> Get '[JSON] String
    , route432 :: mode  :- "route432" :> Get '[JSON] String
    , route433 :: mode  :- "route433" :> Get '[JSON] String
    , route434 :: mode  :- "route434" :> Get '[JSON] String
    , route435 :: mode  :- "route435" :> Get '[JSON] String
    , route436 :: mode  :- "route436" :> Get '[JSON] String
    , route437 :: mode  :- "route437" :> Get '[JSON] String
    , route438 :: mode  :- "route438" :> Get '[JSON] String
    , route439 :: mode  :- "route439" :> Get '[JSON] String
    , route440 :: mode  :- "route440" :> Get '[JSON] String
    , route441 :: mode  :- "route441" :> Get '[JSON] String
    , route442 :: mode  :- "route442" :> Get '[JSON] String
    , route443 :: mode  :- "route443" :> Get '[JSON] String
    , route444 :: mode  :- "route444" :> Get '[JSON] String
    , route445 :: mode  :- "route445" :> Get '[JSON] String
    , route446 :: mode  :- "route446" :> Get '[JSON] String
    , route447 :: mode  :- "route447" :> Get '[JSON] String
    , route448 :: mode  :- "route448" :> Get '[JSON] String
    , route449 :: mode  :- "route449" :> Get '[JSON] String
    , route450 :: mode  :- "route450" :> Get '[JSON] String
    , route451 :: mode  :- "route451" :> Get '[JSON] String
    , route452 :: mode  :- "route452" :> Get '[JSON] String
    , route453 :: mode  :- "route453" :> Get '[JSON] String
    , route454 :: mode  :- "route454" :> Get '[JSON] String
    , route455 :: mode  :- "route455" :> Get '[JSON] String
    , route456 :: mode  :- "route456" :> Get '[JSON] String
    , route457 :: mode  :- "route457" :> Get '[JSON] String
    , route458 :: mode  :- "route458" :> Get '[JSON] String
    , route459 :: mode  :- "route459" :> Get '[JSON] String
    , route460 :: mode  :- "route460" :> Get '[JSON] String
    , route461 :: mode  :- "route461" :> Get '[JSON] String
    , route462 :: mode  :- "route462" :> Get '[JSON] String
    , route463 :: mode  :- "route463" :> Get '[JSON] String
    , route464 :: mode  :- "route464" :> Get '[JSON] String
    , route465 :: mode  :- "route465" :> Get '[JSON] String
    , route466 :: mode  :- "route466" :> Get '[JSON] String
    , route467 :: mode  :- "route467" :> Get '[JSON] String
    , route468 :: mode  :- "route468" :> Get '[JSON] String
    , route469 :: mode  :- "route469" :> Get '[JSON] String
    , route470 :: mode  :- "route470" :> Get '[JSON] String
    , route471 :: mode  :- "route471" :> Get '[JSON] String
    , route472 :: mode  :- "route472" :> Get '[JSON] String
    , route473 :: mode  :- "route473" :> Get '[JSON] String
    , route474 :: mode  :- "route474" :> Get '[JSON] String
    , route475 :: mode  :- "route475" :> Get '[JSON] String
    , route476 :: mode  :- "route476" :> Get '[JSON] String
    , route477 :: mode  :- "route477" :> Get '[JSON] String
    , route478 :: mode  :- "route478" :> Get '[JSON] String
    , route479 :: mode  :- "route479" :> Get '[JSON] String
    , route480 :: mode  :- "route480" :> Get '[JSON] String
    , route481 :: mode  :- "route481" :> Get '[JSON] String
    , route482 :: mode  :- "route482" :> Get '[JSON] String
    , route483 :: mode  :- "route483" :> Get '[JSON] String
    , route484 :: mode  :- "route484" :> Get '[JSON] String
    , route485 :: mode  :- "route485" :> Get '[JSON] String
    , route486 :: mode  :- "route486" :> Get '[JSON] String
    , route487 :: mode  :- "route487" :> Get '[JSON] String
    , route488 :: mode  :- "route488" :> Get '[JSON] String
    , route489 :: mode  :- "route489" :> Get '[JSON] String
    , route490 :: mode  :- "route490" :> Get '[JSON] String
    , route491 :: mode  :- "route491" :> Get '[JSON] String
    , route492 :: mode  :- "route492" :> Get '[JSON] String
    , route493 :: mode  :- "route493" :> Get '[JSON] String
    , route494 :: mode  :- "route494" :> Get '[JSON] String
    , route495 :: mode  :- "route495" :> Get '[JSON] String
    , route496 :: mode  :- "route496" :> Get '[JSON] String
    , route497 :: mode  :- "route497" :> Get '[JSON] String
    , route498 :: mode  :- "route498" :> Get '[JSON] String
    , route499 :: mode  :- "route499" :> Get '[JSON] String
    , route500 :: mode  :- "route500" :> Get '[JSON] String
    , route501 :: mode  :- "route501" :> Get '[JSON] String
    , route502 :: mode  :- "route502" :> Get '[JSON] String
    , route503 :: mode  :- "route503" :> Get '[JSON] String
    , route504 :: mode  :- "route504" :> Get '[JSON] String
    , route505 :: mode  :- "route505" :> Get '[JSON] String
    , route506 :: mode  :- "route506" :> Get '[JSON] String
    , route507 :: mode  :- "route507" :> Get '[JSON] String
    , route508 :: mode  :- "route508" :> Get '[JSON] String
    , route509 :: mode  :- "route509" :> Get '[JSON] String
    , route510 :: mode  :- "route510" :> Get '[JSON] String
    , route511 :: mode  :- "route511" :> Get '[JSON] String
    , route512 :: mode  :- "route512" :> Get '[JSON] String
    , route513 :: mode  :- "route513" :> Get '[JSON] String
    , route514 :: mode  :- "route514" :> Get '[JSON] String
    , route515 :: mode  :- "route515" :> Get '[JSON] String
    , route516 :: mode  :- "route516" :> Get '[JSON] String
    , route517 :: mode  :- "route517" :> Get '[JSON] String
    , route518 :: mode  :- "route518" :> Get '[JSON] String
    , route519 :: mode  :- "route519" :> Get '[JSON] String
    , route520 :: mode  :- "route520" :> Get '[JSON] String
    , route521 :: mode  :- "route521" :> Get '[JSON] String
    , route522 :: mode  :- "route522" :> Get '[JSON] String
    , route523 :: mode  :- "route523" :> Get '[JSON] String
    , route524 :: mode  :- "route524" :> Get '[JSON] String
    , route525 :: mode  :- "route525" :> Get '[JSON] String
    , route526 :: mode  :- "route526" :> Get '[JSON] String
    , route527 :: mode  :- "route527" :> Get '[JSON] String
    , route528 :: mode  :- "route528" :> Get '[JSON] String
    , route529 :: mode  :- "route529" :> Get '[JSON] String
    , route530 :: mode  :- "route530" :> Get '[JSON] String
    , route531 :: mode  :- "route531" :> Get '[JSON] String
    , route532 :: mode  :- "route532" :> Get '[JSON] String
    , route533 :: mode  :- "route533" :> Get '[JSON] String
    , route534 :: mode  :- "route534" :> Get '[JSON] String
    , route535 :: mode  :- "route535" :> Get '[JSON] String
    , route536 :: mode  :- "route536" :> Get '[JSON] String
    , route537 :: mode  :- "route537" :> Get '[JSON] String
    , route538 :: mode  :- "route538" :> Get '[JSON] String
    , route539 :: mode  :- "route539" :> Get '[JSON] String
    , route540 :: mode  :- "route540" :> Get '[JSON] String
    , route541 :: mode  :- "route541" :> Get '[JSON] String
    , route542 :: mode  :- "route542" :> Get '[JSON] String
    , route543 :: mode  :- "route543" :> Get '[JSON] String
    , route544 :: mode  :- "route544" :> Get '[JSON] String
    , route545 :: mode  :- "route545" :> Get '[JSON] String
    , route546 :: mode  :- "route546" :> Get '[JSON] String
    , route547 :: mode  :- "route547" :> Get '[JSON] String
    , route548 :: mode  :- "route548" :> Get '[JSON] String
    , route549 :: mode  :- "route549" :> Get '[JSON] String
    , route550 :: mode  :- "route550" :> Get '[JSON] String
    , route551 :: mode  :- "route551" :> Get '[JSON] String
    , route552 :: mode  :- "route552" :> Get '[JSON] String
    , route553 :: mode  :- "route553" :> Get '[JSON] String
    , route554 :: mode  :- "route554" :> Get '[JSON] String
    , route555 :: mode  :- "route555" :> Get '[JSON] String
    , route556 :: mode  :- "route556" :> Get '[JSON] String
    , route557 :: mode  :- "route557" :> Get '[JSON] String
    , route558 :: mode  :- "route558" :> Get '[JSON] String
    , route559 :: mode  :- "route559" :> Get '[JSON] String
    , route560 :: mode  :- "route560" :> Get '[JSON] String
    , route561 :: mode  :- "route561" :> Get '[JSON] String
    , route562 :: mode  :- "route562" :> Get '[JSON] String
    , route563 :: mode  :- "route563" :> Get '[JSON] String
    , route564 :: mode  :- "route564" :> Get '[JSON] String
    , route565 :: mode  :- "route565" :> Get '[JSON] String
    , route566 :: mode  :- "route566" :> Get '[JSON] String
    , route567 :: mode  :- "route567" :> Get '[JSON] String
    , route568 :: mode  :- "route568" :> Get '[JSON] String
    , route569 :: mode  :- "route569" :> Get '[JSON] String
    , route570 :: mode  :- "route570" :> Get '[JSON] String
    , route571 :: mode  :- "route571" :> Get '[JSON] String
    , route572 :: mode  :- "route572" :> Get '[JSON] String
    , route573 :: mode  :- "route573" :> Get '[JSON] String
    , route574 :: mode  :- "route574" :> Get '[JSON] String
    , route575 :: mode  :- "route575" :> Get '[JSON] String
    , route576 :: mode  :- "route576" :> Get '[JSON] String
    , route577 :: mode  :- "route577" :> Get '[JSON] String
    , route578 :: mode  :- "route578" :> Get '[JSON] String
    , route579 :: mode  :- "route579" :> Get '[JSON] String
    , route580 :: mode  :- "route580" :> Get '[JSON] String
    , route581 :: mode  :- "route581" :> Get '[JSON] String
    , route582 :: mode  :- "route582" :> Get '[JSON] String
    , route583 :: mode  :- "route583" :> Get '[JSON] String
    , route584 :: mode  :- "route584" :> Get '[JSON] String
    , route585 :: mode  :- "route585" :> Get '[JSON] String
    , route586 :: mode  :- "route586" :> Get '[JSON] String
    , route587 :: mode  :- "route587" :> Get '[JSON] String
    , route588 :: mode  :- "route588" :> Get '[JSON] String
    , route589 :: mode  :- "route589" :> Get '[JSON] String
    , route590 :: mode  :- "route590" :> Get '[JSON] String
    , route591 :: mode  :- "route591" :> Get '[JSON] String
    , route592 :: mode  :- "route592" :> Get '[JSON] String
    , route593 :: mode  :- "route593" :> Get '[JSON] String
    , route594 :: mode  :- "route594" :> Get '[JSON] String
    , route595 :: mode  :- "route595" :> Get '[JSON] String
    , route596 :: mode  :- "route596" :> Get '[JSON] String
    , route597 :: mode  :- "route597" :> Get '[JSON] String
    , route598 :: mode  :- "route598" :> Get '[JSON] String
    , route599 :: mode  :- "route599" :> Get '[JSON] String
    , route600 :: mode  :- "route600" :> Get '[JSON] String
    , route601 :: mode  :- "route601" :> Get '[JSON] String
    , route602 :: mode  :- "route602" :> Get '[JSON] String
    , route603 :: mode  :- "route603" :> Get '[JSON] String
    , route604 :: mode  :- "route604" :> Get '[JSON] String
    , route605 :: mode  :- "route605" :> Get '[JSON] String
    , route606 :: mode  :- "route606" :> Get '[JSON] String
    , route607 :: mode  :- "route607" :> Get '[JSON] String
    , route608 :: mode  :- "route608" :> Get '[JSON] String
    , route609 :: mode  :- "route609" :> Get '[JSON] String
    , route610 :: mode  :- "route610" :> Get '[JSON] String
    , route611 :: mode  :- "route611" :> Get '[JSON] String
    , route612 :: mode  :- "route612" :> Get '[JSON] String
    , route613 :: mode  :- "route613" :> Get '[JSON] String
    , route614 :: mode  :- "route614" :> Get '[JSON] String
    , route615 :: mode  :- "route615" :> Get '[JSON] String
    , route616 :: mode  :- "route616" :> Get '[JSON] String
    , route617 :: mode  :- "route617" :> Get '[JSON] String
    , route618 :: mode  :- "route618" :> Get '[JSON] String
    , route619 :: mode  :- "route619" :> Get '[JSON] String
    , route620 :: mode  :- "route620" :> Get '[JSON] String
    , route621 :: mode  :- "route621" :> Get '[JSON] String
    , route622 :: mode  :- "route622" :> Get '[JSON] String
    , route623 :: mode  :- "route623" :> Get '[JSON] String
    , route624 :: mode  :- "route624" :> Get '[JSON] String
    , route625 :: mode  :- "route625" :> Get '[JSON] String
    , route626 :: mode  :- "route626" :> Get '[JSON] String
    , route627 :: mode  :- "route627" :> Get '[JSON] String
    , route628 :: mode  :- "route628" :> Get '[JSON] String
    , route629 :: mode  :- "route629" :> Get '[JSON] String
    , route630 :: mode  :- "route630" :> Get '[JSON] String
    , route631 :: mode  :- "route631" :> Get '[JSON] String
    , route632 :: mode  :- "route632" :> Get '[JSON] String
    , route633 :: mode  :- "route633" :> Get '[JSON] String
    , route634 :: mode  :- "route634" :> Get '[JSON] String
    , route635 :: mode  :- "route635" :> Get '[JSON] String
    , route636 :: mode  :- "route636" :> Get '[JSON] String
    , route637 :: mode  :- "route637" :> Get '[JSON] String
    , route638 :: mode  :- "route638" :> Get '[JSON] String
    , route639 :: mode  :- "route639" :> Get '[JSON] String
    , route640 :: mode  :- "route640" :> Get '[JSON] String
    , route641 :: mode  :- "route641" :> Get '[JSON] String
    , route642 :: mode  :- "route642" :> Get '[JSON] String
    , route643 :: mode  :- "route643" :> Get '[JSON] String
    , route644 :: mode  :- "route644" :> Get '[JSON] String
    , route645 :: mode  :- "route645" :> Get '[JSON] String
    , route646 :: mode  :- "route646" :> Get '[JSON] String
    , route647 :: mode  :- "route647" :> Get '[JSON] String
    , route648 :: mode  :- "route648" :> Get '[JSON] String
    , route649 :: mode  :- "route649" :> Get '[JSON] String
    , route650 :: mode  :- "route650" :> Get '[JSON] String
    , route651 :: mode  :- "route651" :> Get '[JSON] String
    , route652 :: mode  :- "route652" :> Get '[JSON] String
    , route653 :: mode  :- "route653" :> Get '[JSON] String
    , route654 :: mode  :- "route654" :> Get '[JSON] String
    , route655 :: mode  :- "route655" :> Get '[JSON] String
    , route656 :: mode  :- "route656" :> Get '[JSON] String
    , route657 :: mode  :- "route657" :> Get '[JSON] String
    , route658 :: mode  :- "route658" :> Get '[JSON] String
    , route659 :: mode  :- "route659" :> Get '[JSON] String
    , route660 :: mode  :- "route660" :> Get '[JSON] String
    , route661 :: mode  :- "route661" :> Get '[JSON] String
    , route662 :: mode  :- "route662" :> Get '[JSON] String
    , route663 :: mode  :- "route663" :> Get '[JSON] String
    , route664 :: mode  :- "route664" :> Get '[JSON] String
    , route665 :: mode  :- "route665" :> Get '[JSON] String
    , route666 :: mode  :- "route666" :> Get '[JSON] String
    , route667 :: mode  :- "route667" :> Get '[JSON] String
    , route668 :: mode  :- "route668" :> Get '[JSON] String
    , route669 :: mode  :- "route669" :> Get '[JSON] String
    , route670 :: mode  :- "route670" :> Get '[JSON] String
    , route671 :: mode  :- "route671" :> Get '[JSON] String
    , route672 :: mode  :- "route672" :> Get '[JSON] String
    , route673 :: mode  :- "route673" :> Get '[JSON] String
    , route674 :: mode  :- "route674" :> Get '[JSON] String
    , route675 :: mode  :- "route675" :> Get '[JSON] String
    , route676 :: mode  :- "route676" :> Get '[JSON] String
    , route677 :: mode  :- "route677" :> Get '[JSON] String
    , route678 :: mode  :- "route678" :> Get '[JSON] String
    , route679 :: mode  :- "route679" :> Get '[JSON] String
    , route680 :: mode  :- "route680" :> Get '[JSON] String
    , route681 :: mode  :- "route681" :> Get '[JSON] String
    , route682 :: mode  :- "route682" :> Get '[JSON] String
    , route683 :: mode  :- "route683" :> Get '[JSON] String
    , route684 :: mode  :- "route684" :> Get '[JSON] String
    , route685 :: mode  :- "route685" :> Get '[JSON] String
    , route686 :: mode  :- "route686" :> Get '[JSON] String
    , route687 :: mode  :- "route687" :> Get '[JSON] String
    , route688 :: mode  :- "route688" :> Get '[JSON] String
    , route689 :: mode  :- "route689" :> Get '[JSON] String
    , route690 :: mode  :- "route690" :> Get '[JSON] String
    , route691 :: mode  :- "route691" :> Get '[JSON] String
    , route692 :: mode  :- "route692" :> Get '[JSON] String
    , route693 :: mode  :- "route693" :> Get '[JSON] String
    , route694 :: mode  :- "route694" :> Get '[JSON] String
    , route695 :: mode  :- "route695" :> Get '[JSON] String
    , route696 :: mode  :- "route696" :> Get '[JSON] String
    , route697 :: mode  :- "route697" :> Get '[JSON] String
    , route698 :: mode  :- "route698" :> Get '[JSON] String
    , route699 :: mode  :- "route699" :> Get '[JSON] String
    , route700 :: mode  :- "route700" :> Get '[JSON] String
    , route701 :: mode  :- "route701" :> Get '[JSON] String
    , route702 :: mode  :- "route702" :> Get '[JSON] String
    , route703 :: mode  :- "route703" :> Get '[JSON] String
    , route704 :: mode  :- "route704" :> Get '[JSON] String
    , route705 :: mode  :- "route705" :> Get '[JSON] String
    , route706 :: mode  :- "route706" :> Get '[JSON] String
    , route707 :: mode  :- "route707" :> Get '[JSON] String
    , route708 :: mode  :- "route708" :> Get '[JSON] String
    , route709 :: mode  :- "route709" :> Get '[JSON] String
    , route710 :: mode  :- "route710" :> Get '[JSON] String
    , route711 :: mode  :- "route711" :> Get '[JSON] String
    , route712 :: mode  :- "route712" :> Get '[JSON] String
    , route713 :: mode  :- "route713" :> Get '[JSON] String
    , route714 :: mode  :- "route714" :> Get '[JSON] String
    , route715 :: mode  :- "route715" :> Get '[JSON] String
    , route716 :: mode  :- "route716" :> Get '[JSON] String
    , route717 :: mode  :- "route717" :> Get '[JSON] String
    , route718 :: mode  :- "route718" :> Get '[JSON] String
    , route719 :: mode  :- "route719" :> Get '[JSON] String
    , route720 :: mode  :- "route720" :> Get '[JSON] String
    , route721 :: mode  :- "route721" :> Get '[JSON] String
    , route722 :: mode  :- "route722" :> Get '[JSON] String
    , route723 :: mode  :- "route723" :> Get '[JSON] String
    , route724 :: mode  :- "route724" :> Get '[JSON] String
    , route725 :: mode  :- "route725" :> Get '[JSON] String
    , route726 :: mode  :- "route726" :> Get '[JSON] String
    , route727 :: mode  :- "route727" :> Get '[JSON] String
    , route728 :: mode  :- "route728" :> Get '[JSON] String
    , route729 :: mode  :- "route729" :> Get '[JSON] String
    , route730 :: mode  :- "route730" :> Get '[JSON] String
    , route731 :: mode  :- "route731" :> Get '[JSON] String
    , route732 :: mode  :- "route732" :> Get '[JSON] String
    , route733 :: mode  :- "route733" :> Get '[JSON] String
    , route734 :: mode  :- "route734" :> Get '[JSON] String
    , route735 :: mode  :- "route735" :> Get '[JSON] String
    , route736 :: mode  :- "route736" :> Get '[JSON] String
    , route737 :: mode  :- "route737" :> Get '[JSON] String
    , route738 :: mode  :- "route738" :> Get '[JSON] String
    , route739 :: mode  :- "route739" :> Get '[JSON] String
    , route740 :: mode  :- "route740" :> Get '[JSON] String
    , route741 :: mode  :- "route741" :> Get '[JSON] String
    , route742 :: mode  :- "route742" :> Get '[JSON] String
    , route743 :: mode  :- "route743" :> Get '[JSON] String
    , route744 :: mode  :- "route744" :> Get '[JSON] String
    , route745 :: mode  :- "route745" :> Get '[JSON] String
    , route746 :: mode  :- "route746" :> Get '[JSON] String
    , route747 :: mode  :- "route747" :> Get '[JSON] String
    , route748 :: mode  :- "route748" :> Get '[JSON] String
    , route749 :: mode  :- "route749" :> Get '[JSON] String
    , route750 :: mode  :- "route750" :> Get '[JSON] String
    , route751 :: mode  :- "route751" :> Get '[JSON] String
    , route752 :: mode  :- "route752" :> Get '[JSON] String
    , route753 :: mode  :- "route753" :> Get '[JSON] String
    , route754 :: mode  :- "route754" :> Get '[JSON] String
    , route755 :: mode  :- "route755" :> Get '[JSON] String
    , route756 :: mode  :- "route756" :> Get '[JSON] String
    , route757 :: mode  :- "route757" :> Get '[JSON] String
    , route758 :: mode  :- "route758" :> Get '[JSON] String
    , route759 :: mode  :- "route759" :> Get '[JSON] String
    , route760 :: mode  :- "route760" :> Get '[JSON] String
    , route761 :: mode  :- "route761" :> Get '[JSON] String
    , route762 :: mode  :- "route762" :> Get '[JSON] String
    , route763 :: mode  :- "route763" :> Get '[JSON] String
    , route764 :: mode  :- "route764" :> Get '[JSON] String
    , route765 :: mode  :- "route765" :> Get '[JSON] String
    , route766 :: mode  :- "route766" :> Get '[JSON] String
    , route767 :: mode  :- "route767" :> Get '[JSON] String
    , route768 :: mode  :- "route768" :> Get '[JSON] String
    , route769 :: mode  :- "route769" :> Get '[JSON] String
    , route770 :: mode  :- "route770" :> Get '[JSON] String
    , route771 :: mode  :- "route771" :> Get '[JSON] String
    , route772 :: mode  :- "route772" :> Get '[JSON] String
    , route773 :: mode  :- "route773" :> Get '[JSON] String
    , route774 :: mode  :- "route774" :> Get '[JSON] String
    , route775 :: mode  :- "route775" :> Get '[JSON] String
    , route776 :: mode  :- "route776" :> Get '[JSON] String
    , route777 :: mode  :- "route777" :> Get '[JSON] String
    , route778 :: mode  :- "route778" :> Get '[JSON] String
    , route779 :: mode  :- "route779" :> Get '[JSON] String
    , route780 :: mode  :- "route780" :> Get '[JSON] String
    , route781 :: mode  :- "route781" :> Get '[JSON] String
    , route782 :: mode  :- "route782" :> Get '[JSON] String
    , route783 :: mode  :- "route783" :> Get '[JSON] String
    , route784 :: mode  :- "route784" :> Get '[JSON] String
    , route785 :: mode  :- "route785" :> Get '[JSON] String
    , route786 :: mode  :- "route786" :> Get '[JSON] String
    , route787 :: mode  :- "route787" :> Get '[JSON] String
    , route788 :: mode  :- "route788" :> Get '[JSON] String
    , route789 :: mode  :- "route789" :> Get '[JSON] String
    , route790 :: mode  :- "route790" :> Get '[JSON] String
    , route791 :: mode  :- "route791" :> Get '[JSON] String
    , route792 :: mode  :- "route792" :> Get '[JSON] String
    , route793 :: mode  :- "route793" :> Get '[JSON] String
    , route794 :: mode  :- "route794" :> Get '[JSON] String
    , route795 :: mode  :- "route795" :> Get '[JSON] String
    , route796 :: mode  :- "route796" :> Get '[JSON] String
    , route797 :: mode  :- "route797" :> Get '[JSON] String
    , route798 :: mode  :- "route798" :> Get '[JSON] String
    , route799 :: mode  :- "route799" :> Get '[JSON] String
    , route800 :: mode  :- "route800" :> Get '[JSON] String
    , route801 :: mode  :- "route801" :> Get '[JSON] String
    , route802 :: mode  :- "route802" :> Get '[JSON] String
    , route803 :: mode  :- "route803" :> Get '[JSON] String
    , route804 :: mode  :- "route804" :> Get '[JSON] String
    , route805 :: mode  :- "route805" :> Get '[JSON] String
    , route806 :: mode  :- "route806" :> Get '[JSON] String
    , route807 :: mode  :- "route807" :> Get '[JSON] String
    , route808 :: mode  :- "route808" :> Get '[JSON] String
    , route809 :: mode  :- "route809" :> Get '[JSON] String
    , route810 :: mode  :- "route810" :> Get '[JSON] String
    , route811 :: mode  :- "route811" :> Get '[JSON] String
    , route812 :: mode  :- "route812" :> Get '[JSON] String
    , route813 :: mode  :- "route813" :> Get '[JSON] String
    , route814 :: mode  :- "route814" :> Get '[JSON] String
    , route815 :: mode  :- "route815" :> Get '[JSON] String
    , route816 :: mode  :- "route816" :> Get '[JSON] String
    , route817 :: mode  :- "route817" :> Get '[JSON] String
    , route818 :: mode  :- "route818" :> Get '[JSON] String
    , route819 :: mode  :- "route819" :> Get '[JSON] String
    , route820 :: mode  :- "route820" :> Get '[JSON] String
    , route821 :: mode  :- "route821" :> Get '[JSON] String
    , route822 :: mode  :- "route822" :> Get '[JSON] String
    , route823 :: mode  :- "route823" :> Get '[JSON] String
    , route824 :: mode  :- "route824" :> Get '[JSON] String
    , route825 :: mode  :- "route825" :> Get '[JSON] String
    , route826 :: mode  :- "route826" :> Get '[JSON] String
    , route827 :: mode  :- "route827" :> Get '[JSON] String
    , route828 :: mode  :- "route828" :> Get '[JSON] String
    , route829 :: mode  :- "route829" :> Get '[JSON] String
    , route830 :: mode  :- "route830" :> Get '[JSON] String
    , route831 :: mode  :- "route831" :> Get '[JSON] String
    , route832 :: mode  :- "route832" :> Get '[JSON] String
    , route833 :: mode  :- "route833" :> Get '[JSON] String
    , route834 :: mode  :- "route834" :> Get '[JSON] String
    , route835 :: mode  :- "route835" :> Get '[JSON] String
    , route836 :: mode  :- "route836" :> Get '[JSON] String
    , route837 :: mode  :- "route837" :> Get '[JSON] String
    , route838 :: mode  :- "route838" :> Get '[JSON] String
    , route839 :: mode  :- "route839" :> Get '[JSON] String
    , route840 :: mode  :- "route840" :> Get '[JSON] String
    , route841 :: mode  :- "route841" :> Get '[JSON] String
    , route842 :: mode  :- "route842" :> Get '[JSON] String
    , route843 :: mode  :- "route843" :> Get '[JSON] String
    , route844 :: mode  :- "route844" :> Get '[JSON] String
    , route845 :: mode  :- "route845" :> Get '[JSON] String
    , route846 :: mode  :- "route846" :> Get '[JSON] String
    , route847 :: mode  :- "route847" :> Get '[JSON] String
    , route848 :: mode  :- "route848" :> Get '[JSON] String
    , route849 :: mode  :- "route849" :> Get '[JSON] String
    , route850 :: mode  :- "route850" :> Get '[JSON] String
    , route851 :: mode  :- "route851" :> Get '[JSON] String
    , route852 :: mode  :- "route852" :> Get '[JSON] String
    , route853 :: mode  :- "route853" :> Get '[JSON] String
    , route854 :: mode  :- "route854" :> Get '[JSON] String
    , route855 :: mode  :- "route855" :> Get '[JSON] String
    , route856 :: mode  :- "route856" :> Get '[JSON] String
    , route857 :: mode  :- "route857" :> Get '[JSON] String
    , route858 :: mode  :- "route858" :> Get '[JSON] String
    , route859 :: mode  :- "route859" :> Get '[JSON] String
    , route860 :: mode  :- "route860" :> Get '[JSON] String
    , route861 :: mode  :- "route861" :> Get '[JSON] String
    , route862 :: mode  :- "route862" :> Get '[JSON] String
    , route863 :: mode  :- "route863" :> Get '[JSON] String
    , route864 :: mode  :- "route864" :> Get '[JSON] String
    , route865 :: mode  :- "route865" :> Get '[JSON] String
    , route866 :: mode  :- "route866" :> Get '[JSON] String
    , route867 :: mode  :- "route867" :> Get '[JSON] String
    , route868 :: mode  :- "route868" :> Get '[JSON] String
    , route869 :: mode  :- "route869" :> Get '[JSON] String
    , route870 :: mode  :- "route870" :> Get '[JSON] String
    , route871 :: mode  :- "route871" :> Get '[JSON] String
    , route872 :: mode  :- "route872" :> Get '[JSON] String
    , route873 :: mode  :- "route873" :> Get '[JSON] String
    , route874 :: mode  :- "route874" :> Get '[JSON] String
    , route875 :: mode  :- "route875" :> Get '[JSON] String
    , route876 :: mode  :- "route876" :> Get '[JSON] String
    , route877 :: mode  :- "route877" :> Get '[JSON] String
    , route878 :: mode  :- "route878" :> Get '[JSON] String
    , route879 :: mode  :- "route879" :> Get '[JSON] String
    , route880 :: mode  :- "route880" :> Get '[JSON] String
    , route881 :: mode  :- "route881" :> Get '[JSON] String
    , route882 :: mode  :- "route882" :> Get '[JSON] String
    , route883 :: mode  :- "route883" :> Get '[JSON] String
    , route884 :: mode  :- "route884" :> Get '[JSON] String
    , route885 :: mode  :- "route885" :> Get '[JSON] String
    , route886 :: mode  :- "route886" :> Get '[JSON] String
    , route887 :: mode  :- "route887" :> Get '[JSON] String
    , route888 :: mode  :- "route888" :> Get '[JSON] String
    , route889 :: mode  :- "route889" :> Get '[JSON] String
    , route890 :: mode  :- "route890" :> Get '[JSON] String
    , route891 :: mode  :- "route891" :> Get '[JSON] String
    , route892 :: mode  :- "route892" :> Get '[JSON] String
    , route893 :: mode  :- "route893" :> Get '[JSON] String
    , route894 :: mode  :- "route894" :> Get '[JSON] String
    , route895 :: mode  :- "route895" :> Get '[JSON] String
    , route896 :: mode  :- "route896" :> Get '[JSON] String
    , route897 :: mode  :- "route897" :> Get '[JSON] String
    , route898 :: mode  :- "route898" :> Get '[JSON] String
    , route899 :: mode  :- "route899" :> Get '[JSON] String
    , route900 :: mode  :- "route900" :> Get '[JSON] String
    , route901 :: mode  :- "route901" :> Get '[JSON] String
    , route902 :: mode  :- "route902" :> Get '[JSON] String
    , route903 :: mode  :- "route903" :> Get '[JSON] String
    , route904 :: mode  :- "route904" :> Get '[JSON] String
    , route905 :: mode  :- "route905" :> Get '[JSON] String
    , route906 :: mode  :- "route906" :> Get '[JSON] String
    , route907 :: mode  :- "route907" :> Get '[JSON] String
    , route908 :: mode  :- "route908" :> Get '[JSON] String
    , route909 :: mode  :- "route909" :> Get '[JSON] String
    , route910 :: mode  :- "route910" :> Get '[JSON] String
    , route911 :: mode  :- "route911" :> Get '[JSON] String
    , route912 :: mode  :- "route912" :> Get '[JSON] String
    , route913 :: mode  :- "route913" :> Get '[JSON] String
    , route914 :: mode  :- "route914" :> Get '[JSON] String
    , route915 :: mode  :- "route915" :> Get '[JSON] String
    , route916 :: mode  :- "route916" :> Get '[JSON] String
    , route917 :: mode  :- "route917" :> Get '[JSON] String
    , route918 :: mode  :- "route918" :> Get '[JSON] String
    , route919 :: mode  :- "route919" :> Get '[JSON] String
    , route920 :: mode  :- "route920" :> Get '[JSON] String
    , route921 :: mode  :- "route921" :> Get '[JSON] String
    , route922 :: mode  :- "route922" :> Get '[JSON] String
    , route923 :: mode  :- "route923" :> Get '[JSON] String
    , route924 :: mode  :- "route924" :> Get '[JSON] String
    , route925 :: mode  :- "route925" :> Get '[JSON] String
    , route926 :: mode  :- "route926" :> Get '[JSON] String
    , route927 :: mode  :- "route927" :> Get '[JSON] String
    , route928 :: mode  :- "route928" :> Get '[JSON] String
    , route929 :: mode  :- "route929" :> Get '[JSON] String
    , route930 :: mode  :- "route930" :> Get '[JSON] String
    , route931 :: mode  :- "route931" :> Get '[JSON] String
    , route932 :: mode  :- "route932" :> Get '[JSON] String
    , route933 :: mode  :- "route933" :> Get '[JSON] String
    , route934 :: mode  :- "route934" :> Get '[JSON] String
    , route935 :: mode  :- "route935" :> Get '[JSON] String
    , route936 :: mode  :- "route936" :> Get '[JSON] String
    , route937 :: mode  :- "route937" :> Get '[JSON] String
    , route938 :: mode  :- "route938" :> Get '[JSON] String
    , route939 :: mode  :- "route939" :> Get '[JSON] String
    , route940 :: mode  :- "route940" :> Get '[JSON] String
    , route941 :: mode  :- "route941" :> Get '[JSON] String
    , route942 :: mode  :- "route942" :> Get '[JSON] String
    , route943 :: mode  :- "route943" :> Get '[JSON] String
    , route944 :: mode  :- "route944" :> Get '[JSON] String
    , route945 :: mode  :- "route945" :> Get '[JSON] String
    , route946 :: mode  :- "route946" :> Get '[JSON] String
    , route947 :: mode  :- "route947" :> Get '[JSON] String
    , route948 :: mode  :- "route948" :> Get '[JSON] String
    , route949 :: mode  :- "route949" :> Get '[JSON] String
    , route950 :: mode  :- "route950" :> Get '[JSON] String
    , route951 :: mode  :- "route951" :> Get '[JSON] String
    , route952 :: mode  :- "route952" :> Get '[JSON] String
    , route953 :: mode  :- "route953" :> Get '[JSON] String
    , route954 :: mode  :- "route954" :> Get '[JSON] String
    , route955 :: mode  :- "route955" :> Get '[JSON] String
    , route956 :: mode  :- "route956" :> Get '[JSON] String
    , route957 :: mode  :- "route957" :> Get '[JSON] String
    , route958 :: mode  :- "route958" :> Get '[JSON] String
    , route959 :: mode  :- "route959" :> Get '[JSON] String
    , route960 :: mode  :- "route960" :> Get '[JSON] String
    , route961 :: mode  :- "route961" :> Get '[JSON] String
    , route962 :: mode  :- "route962" :> Get '[JSON] String
    , route963 :: mode  :- "route963" :> Get '[JSON] String
    , route964 :: mode  :- "route964" :> Get '[JSON] String
    , route965 :: mode  :- "route965" :> Get '[JSON] String
    , route966 :: mode  :- "route966" :> Get '[JSON] String
    , route967 :: mode  :- "route967" :> Get '[JSON] String
    , route968 :: mode  :- "route968" :> Get '[JSON] String
    , route969 :: mode  :- "route969" :> Get '[JSON] String
    , route970 :: mode  :- "route970" :> Get '[JSON] String
    , route971 :: mode  :- "route971" :> Get '[JSON] String
    , route972 :: mode  :- "route972" :> Get '[JSON] String
    , route973 :: mode  :- "route973" :> Get '[JSON] String
    , route974 :: mode  :- "route974" :> Get '[JSON] String
    , route975 :: mode  :- "route975" :> Get '[JSON] String
    , route976 :: mode  :- "route976" :> Get '[JSON] String
    , route977 :: mode  :- "route977" :> Get '[JSON] String
    , route978 :: mode  :- "route978" :> Get '[JSON] String
    , route979 :: mode  :- "route979" :> Get '[JSON] String
    , route980 :: mode  :- "route980" :> Get '[JSON] String
    , route981 :: mode  :- "route981" :> Get '[JSON] String
    , route982 :: mode  :- "route982" :> Get '[JSON] String
    , route983 :: mode  :- "route983" :> Get '[JSON] String
    , route984 :: mode  :- "route984" :> Get '[JSON] String
    , route985 :: mode  :- "route985" :> Get '[JSON] String
    , route986 :: mode  :- "route986" :> Get '[JSON] String
    , route987 :: mode  :- "route987" :> Get '[JSON] String
    , route988 :: mode  :- "route988" :> Get '[JSON] String
    , route989 :: mode  :- "route989" :> Get '[JSON] String
    , route990 :: mode  :- "route990" :> Get '[JSON] String
    , route991 :: mode  :- "route991" :> Get '[JSON] String
    , route992 :: mode  :- "route992" :> Get '[JSON] String
    , route993 :: mode  :- "route993" :> Get '[JSON] String
    , route994 :: mode  :- "route994" :> Get '[JSON] String
    , route995 :: mode  :- "route995" :> Get '[JSON] String
    , route996 :: mode  :- "route996" :> Get '[JSON] String
    , route997 :: mode  :- "route997" :> Get '[JSON] String
    , route998 :: mode  :- "route998" :> Get '[JSON] String
    , route999 :: mode  :- "route999" :> Get '[JSON] String
    , route1000 :: mode :- "route1000" :> Get '[JSON] String
    }
  deriving (Generic)

app :: Application
app = serve (Proxy @API) server
  where
    server =
      Routes
        { route1 = return "route1"
        , route2 = return "route2"
        , route3 = return "route3"
        , route4 = return "route4"
        , route5 = return "route5"
        , route6 = return "route6"
        , route7 = return "route7"
        , route8 = return "route8"
        , route9 = return "route9"
        , route10 = return "route10"
        , route11 = return "route11"
        , route12 = return "route12"
        , route13 = return "route13"
        , route14 = return "route14"
        , route15 = return "route15"
        , route16 = return "route16"
        , route17 = return "route17"
        , route18 = return "route18"
        , route19 = return "route19"
        , route20 = return "route20"
        , route21 = return "route21"
        , route22 = return "route22"
        , route23 = return "route23"
        , route24 = return "route24"
        , route25 = return "route25"
        , route26 = return "route26"
        , route27 = return "route27"
        , route28 = return "route28"
        , route29 = return "route29"
        , route30 = return "route30"
        , route31 = return "route31"
        , route32 = return "route32"
        , route33 = return "route33"
        , route34 = return "route34"
        , route35 = return "route35"
        , route36 = return "route36"
        , route37 = return "route37"
        , route38 = return "route38"
        , route39 = return "route39"
        , route40 = return "route40"
        , route41 = return "route41"
        , route42 = return "route42"
        , route43 = return "route43"
        , route44 = return "route44"
        , route45 = return "route45"
        , route46 = return "route46"
        , route47 = return "route47"
        , route48 = return "route48"
        , route49 = return "route49"
        , route50 = return "route50"
        , route51 = return "route51"
        , route52 = return "route52"
        , route53 = return "route53"
        , route54 = return "route54"
        , route55 = return "route55"
        , route56 = return "route56"
        , route57 = return "route57"
        , route58 = return "route58"
        , route59 = return "route59"
        , route60 = return "route60"
        , route61 = return "route61"
        , route62 = return "route62"
        , route63 = return "route63"
        , route64 = return "route64"
        , route65 = return "route65"
        , route66 = return "route66"
        , route67 = return "route67"
        , route68 = return "route68"
        , route69 = return "route69"
        , route70 = return "route70"
        , route71 = return "route71"
        , route72 = return "route72"
        , route73 = return "route73"
        , route74 = return "route74"
        , route75 = return "route75"
        , route76 = return "route76"
        , route77 = return "route77"
        , route78 = return "route78"
        , route79 = return "route79"
        , route80 = return "route80"
        , route81 = return "route81"
        , route82 = return "route82"
        , route83 = return "route83"
        , route84 = return "route84"
        , route85 = return "route85"
        , route86 = return "route86"
        , route87 = return "route87"
        , route88 = return "route88"
        , route89 = return "route89"
        , route90 = return "route90"
        , route91 = return "route91"
        , route92 = return "route92"
        , route93 = return "route93"
        , route94 = return "route94"
        , route95 = return "route95"
        , route96 = return "route96"
        , route97 = return "route97"
        , route98 = return "route98"
        , route99 = return "route99"
        , route100 = return "route100"
        , route101 = return "route101"
        , route102 = return "route102"
        , route103 = return "route103"
        , route104 = return "route104"
        , route105 = return "route105"
        , route106 = return "route106"
        , route107 = return "route107"
        , route108 = return "route108"
        , route109 = return "route109"
        , route110 = return "route110"
        , route111 = return "route111"
        , route112 = return "route112"
        , route113 = return "route113"
        , route114 = return "route114"
        , route115 = return "route115"
        , route116 = return "route116"
        , route117 = return "route117"
        , route118 = return "route118"
        , route119 = return "route119"
        , route120 = return "route120"
        , route121 = return "route121"
        , route122 = return "route122"
        , route123 = return "route123"
        , route124 = return "route124"
        , route125 = return "route125"
        , route126 = return "route126"
        , route127 = return "route127"
        , route128 = return "route128"
        , route129 = return "route129"
        , route130 = return "route130"
        , route131 = return "route131"
        , route132 = return "route132"
        , route133 = return "route133"
        , route134 = return "route134"
        , route135 = return "route135"
        , route136 = return "route136"
        , route137 = return "route137"
        , route138 = return "route138"
        , route139 = return "route139"
        , route140 = return "route140"
        , route141 = return "route141"
        , route142 = return "route142"
        , route143 = return "route143"
        , route144 = return "route144"
        , route145 = return "route145"
        , route146 = return "route146"
        , route147 = return "route147"
        , route148 = return "route148"
        , route149 = return "route149"
        , route150 = return "route150"
        , route151 = return "route151"
        , route152 = return "route152"
        , route153 = return "route153"
        , route154 = return "route154"
        , route155 = return "route155"
        , route156 = return "route156"
        , route157 = return "route157"
        , route158 = return "route158"
        , route159 = return "route159"
        , route160 = return "route160"
        , route161 = return "route161"
        , route162 = return "route162"
        , route163 = return "route163"
        , route164 = return "route164"
        , route165 = return "route165"
        , route166 = return "route166"
        , route167 = return "route167"
        , route168 = return "route168"
        , route169 = return "route169"
        , route170 = return "route170"
        , route171 = return "route171"
        , route172 = return "route172"
        , route173 = return "route173"
        , route174 = return "route174"
        , route175 = return "route175"
        , route176 = return "route176"
        , route177 = return "route177"
        , route178 = return "route178"
        , route179 = return "route179"
        , route180 = return "route180"
        , route181 = return "route181"
        , route182 = return "route182"
        , route183 = return "route183"
        , route184 = return "route184"
        , route185 = return "route185"
        , route186 = return "route186"
        , route187 = return "route187"
        , route188 = return "route188"
        , route189 = return "route189"
        , route190 = return "route190"
        , route191 = return "route191"
        , route192 = return "route192"
        , route193 = return "route193"
        , route194 = return "route194"
        , route195 = return "route195"
        , route196 = return "route196"
        , route197 = return "route197"
        , route198 = return "route198"
        , route199 = return "route199"
        , route200 = return "route200"
        , route201 = return "route201"
        , route202 = return "route202"
        , route203 = return "route203"
        , route204 = return "route204"
        , route205 = return "route205"
        , route206 = return "route206"
        , route207 = return "route207"
        , route208 = return "route208"
        , route209 = return "route209"
        , route210 = return "route210"
        , route211 = return "route211"
        , route212 = return "route212"
        , route213 = return "route213"
        , route214 = return "route214"
        , route215 = return "route215"
        , route216 = return "route216"
        , route217 = return "route217"
        , route218 = return "route218"
        , route219 = return "route219"
        , route220 = return "route220"
        , route221 = return "route221"
        , route222 = return "route222"
        , route223 = return "route223"
        , route224 = return "route224"
        , route225 = return "route225"
        , route226 = return "route226"
        , route227 = return "route227"
        , route228 = return "route228"
        , route229 = return "route229"
        , route230 = return "route230"
        , route231 = return "route231"
        , route232 = return "route232"
        , route233 = return "route233"
        , route234 = return "route234"
        , route235 = return "route235"
        , route236 = return "route236"
        , route237 = return "route237"
        , route238 = return "route238"
        , route239 = return "route239"
        , route240 = return "route240"
        , route241 = return "route241"
        , route242 = return "route242"
        , route243 = return "route243"
        , route244 = return "route244"
        , route245 = return "route245"
        , route246 = return "route246"
        , route247 = return "route247"
        , route248 = return "route248"
        , route249 = return "route249"
        , route250 = return "route250"
        , route251 = return "route251"
        , route252 = return "route252"
        , route253 = return "route253"
        , route254 = return "route254"
        , route255 = return "route255"
        , route256 = return "route256"
        , route257 = return "route257"
        , route258 = return "route258"
        , route259 = return "route259"
        , route260 = return "route260"
        , route261 = return "route261"
        , route262 = return "route262"
        , route263 = return "route263"
        , route264 = return "route264"
        , route265 = return "route265"
        , route266 = return "route266"
        , route267 = return "route267"
        , route268 = return "route268"
        , route269 = return "route269"
        , route270 = return "route270"
        , route271 = return "route271"
        , route272 = return "route272"
        , route273 = return "route273"
        , route274 = return "route274"
        , route275 = return "route275"
        , route276 = return "route276"
        , route277 = return "route277"
        , route278 = return "route278"
        , route279 = return "route279"
        , route280 = return "route280"
        , route281 = return "route281"
        , route282 = return "route282"
        , route283 = return "route283"
        , route284 = return "route284"
        , route285 = return "route285"
        , route286 = return "route286"
        , route287 = return "route287"
        , route288 = return "route288"
        , route289 = return "route289"
        , route290 = return "route290"
        , route291 = return "route291"
        , route292 = return "route292"
        , route293 = return "route293"
        , route294 = return "route294"
        , route295 = return "route295"
        , route296 = return "route296"
        , route297 = return "route297"
        , route298 = return "route298"
        , route299 = return "route299"
        , route300 = return "route300"
        , route301 = return "route301"
        , route302 = return "route302"
        , route303 = return "route303"
        , route304 = return "route304"
        , route305 = return "route305"
        , route306 = return "route306"
        , route307 = return "route307"
        , route308 = return "route308"
        , route309 = return "route309"
        , route310 = return "route310"
        , route311 = return "route311"
        , route312 = return "route312"
        , route313 = return "route313"
        , route314 = return "route314"
        , route315 = return "route315"
        , route316 = return "route316"
        , route317 = return "route317"
        , route318 = return "route318"
        , route319 = return "route319"
        , route320 = return "route320"
        , route321 = return "route321"
        , route322 = return "route322"
        , route323 = return "route323"
        , route324 = return "route324"
        , route325 = return "route325"
        , route326 = return "route326"
        , route327 = return "route327"
        , route328 = return "route328"
        , route329 = return "route329"
        , route330 = return "route330"
        , route331 = return "route331"
        , route332 = return "route332"
        , route333 = return "route333"
        , route334 = return "route334"
        , route335 = return "route335"
        , route336 = return "route336"
        , route337 = return "route337"
        , route338 = return "route338"
        , route339 = return "route339"
        , route340 = return "route340"
        , route341 = return "route341"
        , route342 = return "route342"
        , route343 = return "route343"
        , route344 = return "route344"
        , route345 = return "route345"
        , route346 = return "route346"
        , route347 = return "route347"
        , route348 = return "route348"
        , route349 = return "route349"
        , route350 = return "route350"
        , route351 = return "route351"
        , route352 = return "route352"
        , route353 = return "route353"
        , route354 = return "route354"
        , route355 = return "route355"
        , route356 = return "route356"
        , route357 = return "route357"
        , route358 = return "route358"
        , route359 = return "route359"
        , route360 = return "route360"
        , route361 = return "route361"
        , route362 = return "route362"
        , route363 = return "route363"
        , route364 = return "route364"
        , route365 = return "route365"
        , route366 = return "route366"
        , route367 = return "route367"
        , route368 = return "route368"
        , route369 = return "route369"
        , route370 = return "route370"
        , route371 = return "route371"
        , route372 = return "route372"
        , route373 = return "route373"
        , route374 = return "route374"
        , route375 = return "route375"
        , route376 = return "route376"
        , route377 = return "route377"
        , route378 = return "route378"
        , route379 = return "route379"
        , route380 = return "route380"
        , route381 = return "route381"
        , route382 = return "route382"
        , route383 = return "route383"
        , route384 = return "route384"
        , route385 = return "route385"
        , route386 = return "route386"
        , route387 = return "route387"
        , route388 = return "route388"
        , route389 = return "route389"
        , route390 = return "route390"
        , route391 = return "route391"
        , route392 = return "route392"
        , route393 = return "route393"
        , route394 = return "route394"
        , route395 = return "route395"
        , route396 = return "route396"
        , route397 = return "route397"
        , route398 = return "route398"
        , route399 = return "route399"
        , route400 = return "route400"
        , route401 = return "route401"
        , route402 = return "route402"
        , route403 = return "route403"
        , route404 = return "route404"
        , route405 = return "route405"
        , route406 = return "route406"
        , route407 = return "route407"
        , route408 = return "route408"
        , route409 = return "route409"
        , route410 = return "route410"
        , route411 = return "route411"
        , route412 = return "route412"
        , route413 = return "route413"
        , route414 = return "route414"
        , route415 = return "route415"
        , route416 = return "route416"
        , route417 = return "route417"
        , route418 = return "route418"
        , route419 = return "route419"
        , route420 = return "route420"
        , route421 = return "route421"
        , route422 = return "route422"
        , route423 = return "route423"
        , route424 = return "route424"
        , route425 = return "route425"
        , route426 = return "route426"
        , route427 = return "route427"
        , route428 = return "route428"
        , route429 = return "route429"
        , route430 = return "route430"
        , route431 = return "route431"
        , route432 = return "route432"
        , route433 = return "route433"
        , route434 = return "route434"
        , route435 = return "route435"
        , route436 = return "route436"
        , route437 = return "route437"
        , route438 = return "route438"
        , route439 = return "route439"
        , route440 = return "route440"
        , route441 = return "route441"
        , route442 = return "route442"
        , route443 = return "route443"
        , route444 = return "route444"
        , route445 = return "route445"
        , route446 = return "route446"
        , route447 = return "route447"
        , route448 = return "route448"
        , route449 = return "route449"
        , route450 = return "route450"
        , route451 = return "route451"
        , route452 = return "route452"
        , route453 = return "route453"
        , route454 = return "route454"
        , route455 = return "route455"
        , route456 = return "route456"
        , route457 = return "route457"
        , route458 = return "route458"
        , route459 = return "route459"
        , route460 = return "route460"
        , route461 = return "route461"
        , route462 = return "route462"
        , route463 = return "route463"
        , route464 = return "route464"
        , route465 = return "route465"
        , route466 = return "route466"
        , route467 = return "route467"
        , route468 = return "route468"
        , route469 = return "route469"
        , route470 = return "route470"
        , route471 = return "route471"
        , route472 = return "route472"
        , route473 = return "route473"
        , route474 = return "route474"
        , route475 = return "route475"
        , route476 = return "route476"
        , route477 = return "route477"
        , route478 = return "route478"
        , route479 = return "route479"
        , route480 = return "route480"
        , route481 = return "route481"
        , route482 = return "route482"
        , route483 = return "route483"
        , route484 = return "route484"
        , route485 = return "route485"
        , route486 = return "route486"
        , route487 = return "route487"
        , route488 = return "route488"
        , route489 = return "route489"
        , route490 = return "route490"
        , route491 = return "route491"
        , route492 = return "route492"
        , route493 = return "route493"
        , route494 = return "route494"
        , route495 = return "route495"
        , route496 = return "route496"
        , route497 = return "route497"
        , route498 = return "route498"
        , route499 = return "route499"
        , route500 = return "route500"
        , route501 = return "route501"
        , route502 = return "route502"
        , route503 = return "route503"
        , route504 = return "route504"
        , route505 = return "route505"
        , route506 = return "route506"
        , route507 = return "route507"
        , route508 = return "route508"
        , route509 = return "route509"
        , route510 = return "route510"
        , route511 = return "route511"
        , route512 = return "route512"
        , route513 = return "route513"
        , route514 = return "route514"
        , route515 = return "route515"
        , route516 = return "route516"
        , route517 = return "route517"
        , route518 = return "route518"
        , route519 = return "route519"
        , route520 = return "route520"
        , route521 = return "route521"
        , route522 = return "route522"
        , route523 = return "route523"
        , route524 = return "route524"
        , route525 = return "route525"
        , route526 = return "route526"
        , route527 = return "route527"
        , route528 = return "route528"
        , route529 = return "route529"
        , route530 = return "route530"
        , route531 = return "route531"
        , route532 = return "route532"
        , route533 = return "route533"
        , route534 = return "route534"
        , route535 = return "route535"
        , route536 = return "route536"
        , route537 = return "route537"
        , route538 = return "route538"
        , route539 = return "route539"
        , route540 = return "route540"
        , route541 = return "route541"
        , route542 = return "route542"
        , route543 = return "route543"
        , route544 = return "route544"
        , route545 = return "route545"
        , route546 = return "route546"
        , route547 = return "route547"
        , route548 = return "route548"
        , route549 = return "route549"
        , route550 = return "route550"
        , route551 = return "route551"
        , route552 = return "route552"
        , route553 = return "route553"
        , route554 = return "route554"
        , route555 = return "route555"
        , route556 = return "route556"
        , route557 = return "route557"
        , route558 = return "route558"
        , route559 = return "route559"
        , route560 = return "route560"
        , route561 = return "route561"
        , route562 = return "route562"
        , route563 = return "route563"
        , route564 = return "route564"
        , route565 = return "route565"
        , route566 = return "route566"
        , route567 = return "route567"
        , route568 = return "route568"
        , route569 = return "route569"
        , route570 = return "route570"
        , route571 = return "route571"
        , route572 = return "route572"
        , route573 = return "route573"
        , route574 = return "route574"
        , route575 = return "route575"
        , route576 = return "route576"
        , route577 = return "route577"
        , route578 = return "route578"
        , route579 = return "route579"
        , route580 = return "route580"
        , route581 = return "route581"
        , route582 = return "route582"
        , route583 = return "route583"
        , route584 = return "route584"
        , route585 = return "route585"
        , route586 = return "route586"
        , route587 = return "route587"
        , route588 = return "route588"
        , route589 = return "route589"
        , route590 = return "route590"
        , route591 = return "route591"
        , route592 = return "route592"
        , route593 = return "route593"
        , route594 = return "route594"
        , route595 = return "route595"
        , route596 = return "route596"
        , route597 = return "route597"
        , route598 = return "route598"
        , route599 = return "route599"
        , route600 = return "route600"
        , route601 = return "route601"
        , route602 = return "route602"
        , route603 = return "route603"
        , route604 = return "route604"
        , route605 = return "route605"
        , route606 = return "route606"
        , route607 = return "route607"
        , route608 = return "route608"
        , route609 = return "route609"
        , route610 = return "route610"
        , route611 = return "route611"
        , route612 = return "route612"
        , route613 = return "route613"
        , route614 = return "route614"
        , route615 = return "route615"
        , route616 = return "route616"
        , route617 = return "route617"
        , route618 = return "route618"
        , route619 = return "route619"
        , route620 = return "route620"
        , route621 = return "route621"
        , route622 = return "route622"
        , route623 = return "route623"
        , route624 = return "route624"
        , route625 = return "route625"
        , route626 = return "route626"
        , route627 = return "route627"
        , route628 = return "route628"
        , route629 = return "route629"
        , route630 = return "route630"
        , route631 = return "route631"
        , route632 = return "route632"
        , route633 = return "route633"
        , route634 = return "route634"
        , route635 = return "route635"
        , route636 = return "route636"
        , route637 = return "route637"
        , route638 = return "route638"
        , route639 = return "route639"
        , route640 = return "route640"
        , route641 = return "route641"
        , route642 = return "route642"
        , route643 = return "route643"
        , route644 = return "route644"
        , route645 = return "route645"
        , route646 = return "route646"
        , route647 = return "route647"
        , route648 = return "route648"
        , route649 = return "route649"
        , route650 = return "route650"
        , route651 = return "route651"
        , route652 = return "route652"
        , route653 = return "route653"
        , route654 = return "route654"
        , route655 = return "route655"
        , route656 = return "route656"
        , route657 = return "route657"
        , route658 = return "route658"
        , route659 = return "route659"
        , route660 = return "route660"
        , route661 = return "route661"
        , route662 = return "route662"
        , route663 = return "route663"
        , route664 = return "route664"
        , route665 = return "route665"
        , route666 = return "route666"
        , route667 = return "route667"
        , route668 = return "route668"
        , route669 = return "route669"
        , route670 = return "route670"
        , route671 = return "route671"
        , route672 = return "route672"
        , route673 = return "route673"
        , route674 = return "route674"
        , route675 = return "route675"
        , route676 = return "route676"
        , route677 = return "route677"
        , route678 = return "route678"
        , route679 = return "route679"
        , route680 = return "route680"
        , route681 = return "route681"
        , route682 = return "route682"
        , route683 = return "route683"
        , route684 = return "route684"
        , route685 = return "route685"
        , route686 = return "route686"
        , route687 = return "route687"
        , route688 = return "route688"
        , route689 = return "route689"
        , route690 = return "route690"
        , route691 = return "route691"
        , route692 = return "route692"
        , route693 = return "route693"
        , route694 = return "route694"
        , route695 = return "route695"
        , route696 = return "route696"
        , route697 = return "route697"
        , route698 = return "route698"
        , route699 = return "route699"
        , route700 = return "route700"
        , route701 = return "route701"
        , route702 = return "route702"
        , route703 = return "route703"
        , route704 = return "route704"
        , route705 = return "route705"
        , route706 = return "route706"
        , route707 = return "route707"
        , route708 = return "route708"
        , route709 = return "route709"
        , route710 = return "route710"
        , route711 = return "route711"
        , route712 = return "route712"
        , route713 = return "route713"
        , route714 = return "route714"
        , route715 = return "route715"
        , route716 = return "route716"
        , route717 = return "route717"
        , route718 = return "route718"
        , route719 = return "route719"
        , route720 = return "route720"
        , route721 = return "route721"
        , route722 = return "route722"
        , route723 = return "route723"
        , route724 = return "route724"
        , route725 = return "route725"
        , route726 = return "route726"
        , route727 = return "route727"
        , route728 = return "route728"
        , route729 = return "route729"
        , route730 = return "route730"
        , route731 = return "route731"
        , route732 = return "route732"
        , route733 = return "route733"
        , route734 = return "route734"
        , route735 = return "route735"
        , route736 = return "route736"
        , route737 = return "route737"
        , route738 = return "route738"
        , route739 = return "route739"
        , route740 = return "route740"
        , route741 = return "route741"
        , route742 = return "route742"
        , route743 = return "route743"
        , route744 = return "route744"
        , route745 = return "route745"
        , route746 = return "route746"
        , route747 = return "route747"
        , route748 = return "route748"
        , route749 = return "route749"
        , route750 = return "route750"
        , route751 = return "route751"
        , route752 = return "route752"
        , route753 = return "route753"
        , route754 = return "route754"
        , route755 = return "route755"
        , route756 = return "route756"
        , route757 = return "route757"
        , route758 = return "route758"
        , route759 = return "route759"
        , route760 = return "route760"
        , route761 = return "route761"
        , route762 = return "route762"
        , route763 = return "route763"
        , route764 = return "route764"
        , route765 = return "route765"
        , route766 = return "route766"
        , route767 = return "route767"
        , route768 = return "route768"
        , route769 = return "route769"
        , route770 = return "route770"
        , route771 = return "route771"
        , route772 = return "route772"
        , route773 = return "route773"
        , route774 = return "route774"
        , route775 = return "route775"
        , route776 = return "route776"
        , route777 = return "route777"
        , route778 = return "route778"
        , route779 = return "route779"
        , route780 = return "route780"
        , route781 = return "route781"
        , route782 = return "route782"
        , route783 = return "route783"
        , route784 = return "route784"
        , route785 = return "route785"
        , route786 = return "route786"
        , route787 = return "route787"
        , route788 = return "route788"
        , route789 = return "route789"
        , route790 = return "route790"
        , route791 = return "route791"
        , route792 = return "route792"
        , route793 = return "route793"
        , route794 = return "route794"
        , route795 = return "route795"
        , route796 = return "route796"
        , route797 = return "route797"
        , route798 = return "route798"
        , route799 = return "route799"
        , route800 = return "route800"
        , route801 = return "route801"
        , route802 = return "route802"
        , route803 = return "route803"
        , route804 = return "route804"
        , route805 = return "route805"
        , route806 = return "route806"
        , route807 = return "route807"
        , route808 = return "route808"
        , route809 = return "route809"
        , route810 = return "route810"
        , route811 = return "route811"
        , route812 = return "route812"
        , route813 = return "route813"
        , route814 = return "route814"
        , route815 = return "route815"
        , route816 = return "route816"
        , route817 = return "route817"
        , route818 = return "route818"
        , route819 = return "route819"
        , route820 = return "route820"
        , route821 = return "route821"
        , route822 = return "route822"
        , route823 = return "route823"
        , route824 = return "route824"
        , route825 = return "route825"
        , route826 = return "route826"
        , route827 = return "route827"
        , route828 = return "route828"
        , route829 = return "route829"
        , route830 = return "route830"
        , route831 = return "route831"
        , route832 = return "route832"
        , route833 = return "route833"
        , route834 = return "route834"
        , route835 = return "route835"
        , route836 = return "route836"
        , route837 = return "route837"
        , route838 = return "route838"
        , route839 = return "route839"
        , route840 = return "route840"
        , route841 = return "route841"
        , route842 = return "route842"
        , route843 = return "route843"
        , route844 = return "route844"
        , route845 = return "route845"
        , route846 = return "route846"
        , route847 = return "route847"
        , route848 = return "route848"
        , route849 = return "route849"
        , route850 = return "route850"
        , route851 = return "route851"
        , route852 = return "route852"
        , route853 = return "route853"
        , route854 = return "route854"
        , route855 = return "route855"
        , route856 = return "route856"
        , route857 = return "route857"
        , route858 = return "route858"
        , route859 = return "route859"
        , route860 = return "route860"
        , route861 = return "route861"
        , route862 = return "route862"
        , route863 = return "route863"
        , route864 = return "route864"
        , route865 = return "route865"
        , route866 = return "route866"
        , route867 = return "route867"
        , route868 = return "route868"
        , route869 = return "route869"
        , route870 = return "route870"
        , route871 = return "route871"
        , route872 = return "route872"
        , route873 = return "route873"
        , route874 = return "route874"
        , route875 = return "route875"
        , route876 = return "route876"
        , route877 = return "route877"
        , route878 = return "route878"
        , route879 = return "route879"
        , route880 = return "route880"
        , route881 = return "route881"
        , route882 = return "route882"
        , route883 = return "route883"
        , route884 = return "route884"
        , route885 = return "route885"
        , route886 = return "route886"
        , route887 = return "route887"
        , route888 = return "route888"
        , route889 = return "route889"
        , route890 = return "route890"
        , route891 = return "route891"
        , route892 = return "route892"
        , route893 = return "route893"
        , route894 = return "route894"
        , route895 = return "route895"
        , route896 = return "route896"
        , route897 = return "route897"
        , route898 = return "route898"
        , route899 = return "route899"
        , route900 = return "route900"
        , route901 = return "route901"
        , route902 = return "route902"
        , route903 = return "route903"
        , route904 = return "route904"
        , route905 = return "route905"
        , route906 = return "route906"
        , route907 = return "route907"
        , route908 = return "route908"
        , route909 = return "route909"
        , route910 = return "route910"
        , route911 = return "route911"
        , route912 = return "route912"
        , route913 = return "route913"
        , route914 = return "route914"
        , route915 = return "route915"
        , route916 = return "route916"
        , route917 = return "route917"
        , route918 = return "route918"
        , route919 = return "route919"
        , route920 = return "route920"
        , route921 = return "route921"
        , route922 = return "route922"
        , route923 = return "route923"
        , route924 = return "route924"
        , route925 = return "route925"
        , route926 = return "route926"
        , route927 = return "route927"
        , route928 = return "route928"
        , route929 = return "route929"
        , route930 = return "route930"
        , route931 = return "route931"
        , route932 = return "route932"
        , route933 = return "route933"
        , route934 = return "route934"
        , route935 = return "route935"
        , route936 = return "route936"
        , route937 = return "route937"
        , route938 = return "route938"
        , route939 = return "route939"
        , route940 = return "route940"
        , route941 = return "route941"
        , route942 = return "route942"
        , route943 = return "route943"
        , route944 = return "route944"
        , route945 = return "route945"
        , route946 = return "route946"
        , route947 = return "route947"
        , route948 = return "route948"
        , route949 = return "route949"
        , route950 = return "route950"
        , route951 = return "route951"
        , route952 = return "route952"
        , route953 = return "route953"
        , route954 = return "route954"
        , route955 = return "route955"
        , route956 = return "route956"
        , route957 = return "route957"
        , route958 = return "route958"
        , route959 = return "route959"
        , route960 = return "route960"
        , route961 = return "route961"
        , route962 = return "route962"
        , route963 = return "route963"
        , route964 = return "route964"
        , route965 = return "route965"
        , route966 = return "route966"
        , route967 = return "route967"
        , route968 = return "route968"
        , route969 = return "route969"
        , route970 = return "route970"
        , route971 = return "route971"
        , route972 = return "route972"
        , route973 = return "route973"
        , route974 = return "route974"
        , route975 = return "route975"
        , route976 = return "route976"
        , route977 = return "route977"
        , route978 = return "route978"
        , route979 = return "route979"
        , route980 = return "route980"
        , route981 = return "route981"
        , route982 = return "route982"
        , route983 = return "route983"
        , route984 = return "route984"
        , route985 = return "route985"
        , route986 = return "route986"
        , route987 = return "route987"
        , route988 = return "route988"
        , route989 = return "route989"
        , route990 = return "route990"
        , route991 = return "route991"
        , route992 = return "route992"
        , route993 = return "route993"
        , route994 = return "route994"
        , route995 = return "route995"
        , route996 = return "route996"
        , route997 = return "route997"
        , route998 = return "route998"
        , route999 = return "route999"
        , route1000 = return "route1000"
        }

startApp :: IO ()
startApp = run 8080 app

main :: IO ()
main = startApp
