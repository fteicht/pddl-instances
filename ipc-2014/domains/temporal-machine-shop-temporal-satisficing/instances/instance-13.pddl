(define (problem prob13)
 (:domain domain-tms-2-3-light)
 (:objects 
 kiln0 - (either kiln8 kiln20)
 pone0 pone1 pone2 pone3 pone4 pone5 pone6 pone7 pone8 pone9 pone10 pone11 pone12 pone13 pone14 pone15 pone16 pone17 pone18 pone19 pone20 pone21 pone22 pone23 pone24 pone25 pone26 pone27 pone28 pone29 pone30 pone31 pone32 pone33 pone34 pone35 pone36 pone37 pone38 pone39 pone40 pone41 pone42 pone43 - piecetype1
 ptwo0 ptwo1 ptwo2 ptwo3 ptwo4 ptwo5 ptwo6 ptwo7 ptwo8 ptwo9 ptwo10 ptwo11 ptwo12 ptwo13 ptwo14 ptwo15 ptwo16 ptwo17 ptwo18 ptwo19 ptwo20 ptwo21 ptwo22 ptwo23 ptwo24 ptwo25 ptwo26 ptwo27 ptwo28 ptwo29 ptwo30 ptwo31 ptwo32 ptwo33 ptwo34 ptwo35 ptwo36 ptwo37 ptwo38 ptwo39 ptwo40 ptwo41 ptwo42 ptwo43 ptwo44 ptwo45 ptwo46 ptwo47 ptwo48 ptwo49 ptwo50 ptwo51 ptwo52 ptwo53 ptwo54 ptwo55 ptwo56 ptwo57 ptwo58 ptwo59 ptwo60 ptwo61 ptwo62 ptwo63 ptwo64 ptwo65 - piecetype2
 pthree0 pthree1 pthree2 pthree3 pthree4 pthree5 pthree6 pthree7 pthree8 pthree9 pthree10 pthree11 pthree12 pthree13 pthree14 pthree15 pthree16 pthree17 pthree18 pthree19 pthree20 pthree21 pthree22 pthree23 pthree24 pthree25 pthree26 pthree27 pthree28 pthree29 pthree30 pthree31 pthree32 pthree33 pthree34 pthree35 pthree36 pthree37 pthree38 pthree39 pthree40 pthree41 pthree42 pthree43 pthree44 pthree45 pthree46 pthree47 pthree48 pthree49 pthree50 pthree51 pthree52 pthree53 pthree54 pthree55 pthree56 pthree57 pthree58 pthree59 pthree60 pthree61 pthree62 pthree63 pthree64 pthree65 pthree66 pthree67 pthree68 pthree69 pthree70 pthree71 pthree72 pthree73 pthree74 pthree75 pthree76 pthree77 pthree78 pthree79 pthree80 pthree81 pthree82 pthree83 pthree84 pthree85 pthree86 pthree87 pthree88 pthree89 pthree90 pthree91 pthree92 pthree93 pthree94 pthree95 pthree96 pthree97 pthree98 pthree99 pthree100 pthree101 pthree102 pthree103 pthree104 pthree105 pthree106 pthree107 pthree108 pthree109 - piecetype3
)
 (:init 
  (energy)
)
 (:goal
  (and
     (baked-structure pone10 ptwo44)
     (baked-structure pthree24 ptwo29)
     (baked-structure ptwo23 pone16)
     (baked-structure pthree64 pthree13)
     (baked-structure pone39 pone7)
     (baked-structure ptwo34 pone18)
     (baked-structure ptwo43 ptwo60)
     (baked-structure ptwo55 pone14)
     (baked-structure ptwo2 pthree81)
     (baked-structure pthree2 pone32)
     (baked-structure ptwo8 ptwo1)
     (baked-structure pone21 pthree1)
     (baked-structure pone19 ptwo49)
     (baked-structure pone5 pone6)
     (baked-structure pthree83 ptwo10)
     (baked-structure pthree18 pthree79)
     (baked-structure pthree9 pthree33)
     (baked-structure pone11 ptwo19)
     (baked-structure pthree69 pthree89)
     (baked-structure ptwo63 pthree63)
     (baked-structure pthree35 pthree30)
     (baked-structure pthree52 pthree82)
     (baked-structure pone30 pone15)
     (baked-structure ptwo42 pone33)
     (baked-structure pthree106 pthree59)
     (baked-structure pone2 pthree87)
     (baked-structure ptwo4 pthree0)
     (baked-structure pthree70 ptwo26)
     (baked-structure pthree84 ptwo30)
     (baked-structure pthree50 ptwo13)
     (baked-structure pone34 pthree101)
     (baked-structure pthree76 pthree26)
     (baked-structure pthree23 ptwo56)
     (baked-structure ptwo62 pthree15)
     (baked-structure ptwo24 pthree104)
     (baked-structure pthree32 pthree72)
     (baked-structure pone43 pthree100)
     (baked-structure pthree40 pthree20)
     (baked-structure pthree19 ptwo50)
     (baked-structure ptwo41 ptwo61)
     (baked-structure pthree8 ptwo33)
     (baked-structure pthree41 pthree44)
     (baked-structure pthree85 pone27)
     (baked-structure pone28 pthree5)
     (baked-structure pthree10 pthree92)
     (baked-structure pthree75 pthree71)
     (baked-structure pthree105 ptwo28)
     (baked-structure ptwo48 pthree11)
     (baked-structure pthree6 pthree28)
     (baked-structure pone29 pthree62)
     (baked-structure ptwo53 pone12)
     (baked-structure pthree66 ptwo59)
     (baked-structure pone0 ptwo64)
     (baked-structure pthree4 pthree47)
     (baked-structure pthree14 ptwo6)
     (baked-structure ptwo52 ptwo7)
     (baked-structure pone38 pthree96)
     (baked-structure pone23 ptwo14)
     (baked-structure ptwo22 ptwo15)
     (baked-structure ptwo35 ptwo21)
     (baked-structure pthree107 pthree65)
     (baked-structure pthree16 pone24)
     (baked-structure pone25 ptwo36)
     (baked-structure pthree54 pthree3)
     (baked-structure ptwo38 pthree56)
     (baked-structure pthree68 pthree60)
     (baked-structure ptwo3 ptwo27)
     (baked-structure pone3 pthree94)
     (baked-structure pthree7 ptwo65)
     (baked-structure ptwo32 ptwo45)
     (baked-structure pthree93 pthree38)
     (baked-structure pone22 pthree98)
     (baked-structure ptwo16 pone37)
     (baked-structure pthree58 pone20)
     (baked-structure pthree53 ptwo25)
     (baked-structure ptwo57 ptwo9)
     (baked-structure pthree55 ptwo5)
     (baked-structure ptwo12 ptwo46)
     (baked-structure ptwo37 pone42)
     (baked-structure ptwo51 pthree34)
     (baked-structure pthree86 pthree12)
     (baked-structure pthree17 pthree102)
     (baked-structure pthree49 ptwo31)
     (baked-structure pthree78 pthree61)
     (baked-structure ptwo20 pthree67)
     (baked-structure pthree42 pthree45)
     (baked-structure ptwo39 pthree31)
     (baked-structure pthree57 pthree37)
     (baked-structure pone40 ptwo0)
     (baked-structure pone41 pthree108)
     (baked-structure pthree51 pthree29)
     (baked-structure pone26 pthree36)
     (baked-structure ptwo11 pthree80)
     (baked-structure pone17 pone1)
     (baked-structure pthree46 pone36)
     (baked-structure pthree48 pthree95)
     (baked-structure ptwo18 pthree73)
     (baked-structure ptwo58 pthree74)
     (baked-structure pone35 pthree103)
     (baked-structure ptwo54 ptwo17)
     (baked-structure pthree27 pthree90)
     (baked-structure pthree77 pthree25)
     (baked-structure ptwo40 pthree43)
     (baked-structure pthree21 ptwo47)
     (baked-structure pthree97 pone9)
     (baked-structure pthree109 pthree39)
     (baked-structure pthree91 pone13)
     (baked-structure pone31 pone4)
     (baked-structure pthree22 pone8)
     (baked-structure pthree99 pthree88)
))
 (:metric minimize (total-time))
)
