(define (problem pfile19)
 (:domain domain-tms-2-3-light)
 (:objects 
 kiln0 - (either kiln8 kiln20)
 pone0 pone1 pone2 pone3 pone4 pone5 pone6 pone7 pone8 pone9 pone10 pone11 pone12 pone13 pone14 pone15 pone16 pone17 pone18 pone19 pone20 pone21 pone22 pone23 pone24 pone25 pone26 pone27 pone28 pone29 pone30 pone31 pone32 pone33 pone34 pone35 pone36 pone37 pone38 pone39 pone40 pone41 pone42 pone43 pone44 pone45 pone46 pone47 - piecetype1
 ptwo0 ptwo1 ptwo2 ptwo3 ptwo4 ptwo5 ptwo6 ptwo7 ptwo8 ptwo9 ptwo10 ptwo11 ptwo12 ptwo13 ptwo14 ptwo15 ptwo16 ptwo17 ptwo18 ptwo19 ptwo20 ptwo21 ptwo22 ptwo23 ptwo24 ptwo25 ptwo26 ptwo27 ptwo28 ptwo29 ptwo30 ptwo31 ptwo32 ptwo33 ptwo34 ptwo35 ptwo36 ptwo37 ptwo38 ptwo39 ptwo40 ptwo41 ptwo42 ptwo43 ptwo44 ptwo45 ptwo46 ptwo47 ptwo48 ptwo49 ptwo50 ptwo51 ptwo52 ptwo53 ptwo54 ptwo55 ptwo56 ptwo57 ptwo58 ptwo59 ptwo60 ptwo61 ptwo62 ptwo63 ptwo64 ptwo65 ptwo66 ptwo67 ptwo68 ptwo69 ptwo70 ptwo71 - piecetype2
 pthree0 pthree1 pthree2 pthree3 pthree4 pthree5 pthree6 pthree7 pthree8 pthree9 pthree10 pthree11 pthree12 pthree13 pthree14 pthree15 pthree16 pthree17 pthree18 pthree19 pthree20 pthree21 pthree22 pthree23 pthree24 pthree25 pthree26 pthree27 pthree28 pthree29 pthree30 pthree31 pthree32 pthree33 pthree34 pthree35 pthree36 pthree37 pthree38 pthree39 pthree40 pthree41 pthree42 pthree43 pthree44 pthree45 pthree46 pthree47 pthree48 pthree49 pthree50 pthree51 pthree52 pthree53 pthree54 pthree55 pthree56 pthree57 pthree58 pthree59 pthree60 pthree61 pthree62 pthree63 pthree64 pthree65 pthree66 pthree67 pthree68 pthree69 pthree70 pthree71 pthree72 pthree73 pthree74 pthree75 pthree76 pthree77 pthree78 pthree79 pthree80 pthree81 pthree82 pthree83 pthree84 pthree85 pthree86 pthree87 pthree88 pthree89 pthree90 pthree91 pthree92 pthree93 pthree94 pthree95 pthree96 pthree97 pthree98 pthree99 pthree100 pthree101 pthree102 pthree103 pthree104 pthree105 pthree106 pthree107 pthree108 pthree109 pthree110 pthree111 pthree112 pthree113 pthree114 pthree115 pthree116 pthree117 pthree118 pthree119 - piecetype3
)
 (:init 
  (energy)
)
 (:goal
  (and
     (baked-structure pthree23 ptwo59)
     (baked-structure ptwo53 pthree1)
     (baked-structure pone27 pone38)
     (baked-structure pthree16 pthree56)
     (baked-structure ptwo39 ptwo45)
     (baked-structure pthree60 ptwo52)
     (baked-structure ptwo13 pthree29)
     (baked-structure ptwo33 ptwo15)
     (baked-structure pthree4 pthree90)
     (baked-structure pthree47 ptwo50)
     (baked-structure ptwo6 ptwo43)
     (baked-structure pthree19 ptwo46)
     (baked-structure pone11 pone1)
     (baked-structure pone23 ptwo67)
     (baked-structure ptwo56 pthree34)
     (baked-structure pone3 pthree13)
     (baked-structure pthree91 pone22)
     (baked-structure ptwo2 ptwo70)
     (baked-structure pthree77 pthree110)
     (baked-structure pthree43 pthree58)
     (baked-structure pone41 pone18)
     (baked-structure pthree65 pthree15)
     (baked-structure pthree46 ptwo34)
     (baked-structure pthree105 pthree114)
     (baked-structure pone21 pone40)
     (baked-structure pthree11 ptwo55)
     (baked-structure pone17 pthree67)
     (baked-structure pthree8 pthree55)
     (baked-structure pthree25 pthree84)
     (baked-structure ptwo31 pthree116)
     (baked-structure pthree69 pthree92)
     (baked-structure pthree59 pthree98)
     (baked-structure pthree111 pthree61)
     (baked-structure ptwo48 pone29)
     (baked-structure pthree83 ptwo19)
     (baked-structure pone47 pthree36)
     (baked-structure ptwo41 pthree28)
     (baked-structure ptwo1 pone15)
     (baked-structure pthree57 pthree99)
     (baked-structure pthree79 ptwo58)
     (baked-structure pthree54 pthree14)
     (baked-structure pthree63 pthree18)
     (baked-structure pone12 ptwo28)
     (baked-structure pthree2 ptwo29)
     (baked-structure pthree103 pone9)
     (baked-structure ptwo65 pone4)
     (baked-structure pthree75 pone45)
     (baked-structure ptwo49 pone7)
     (baked-structure pthree108 pthree0)
     (baked-structure pthree68 ptwo47)
     (baked-structure ptwo9 pone43)
     (baked-structure pone2 pthree30)
     (baked-structure pthree94 ptwo21)
     (baked-structure ptwo32 ptwo60)
     (baked-structure pthree117 ptwo17)
     (baked-structure ptwo36 pthree42)
     (baked-structure ptwo24 ptwo26)
     (baked-structure pthree41 pthree72)
     (baked-structure pthree119 pone0)
     (baked-structure ptwo44 pthree37)
     (baked-structure pthree101 ptwo37)
     (baked-structure ptwo14 pone42)
     (baked-structure ptwo10 pthree85)
     (baked-structure pthree74 pone19)
     (baked-structure pthree3 ptwo38)
     (baked-structure pthree7 ptwo63)
     (baked-structure pthree93 pone28)
     (baked-structure ptwo20 pthree53)
     (baked-structure pone31 ptwo25)
     (baked-structure ptwo22 pthree106)
     (baked-structure pthree76 pthree21)
     (baked-structure ptwo5 pthree35)
     (baked-structure pthree109 pthree48)
     (baked-structure pthree26 pthree44)
     (baked-structure pthree100 pone13)
     (baked-structure pthree12 pthree9)
     (baked-structure pthree40 pthree88)
     (baked-structure pthree32 pone36)
     (baked-structure pone39 pone20)
     (baked-structure pthree86 ptwo3)
     (baked-structure pthree31 ptwo64)
     (baked-structure pthree27 ptwo62)
     (baked-structure pone32 pthree96)
     (baked-structure pthree89 ptwo51)
     (baked-structure ptwo12 pthree49)
     (baked-structure ptwo68 pthree82)
     (baked-structure pthree70 pthree66)
     (baked-structure pthree104 pone33)
     (baked-structure pone5 ptwo0)
     (baked-structure ptwo30 pthree22)
     (baked-structure pone26 pthree51)
     (baked-structure pone44 pone35)
     (baked-structure ptwo23 ptwo40)
     (baked-structure ptwo4 pthree17)
     (baked-structure pone8 ptwo54)
     (baked-structure pthree62 ptwo57)
     (baked-structure ptwo11 pone16)
     (baked-structure pthree5 pthree118)
     (baked-structure pone14 ptwo35)
     (baked-structure pone37 pone30)
     (baked-structure pthree10 pone6)
     (baked-structure pone10 pthree115)
     (baked-structure pthree73 pthree112)
     (baked-structure pthree33 pone46)
     (baked-structure ptwo69 pone25)
     (baked-structure pthree102 pthree81)
     (baked-structure pthree45 pone24)
     (baked-structure pone34 ptwo8)
     (baked-structure ptwo71 pthree97)
     (baked-structure pthree78 pthree71)
     (baked-structure ptwo66 pthree38)
     (baked-structure pthree107 ptwo27)
     (baked-structure pthree113 pthree24)
     (baked-structure ptwo16 ptwo42)
     (baked-structure ptwo61 pthree95)
     (baked-structure pthree64 pthree6)
     (baked-structure pthree52 pthree80)
     (baked-structure pthree50 pthree39)
     (baked-structure pthree20 ptwo18)
     (baked-structure pthree87 ptwo7)
))
 (:metric minimize (total-time))
)
