(define (problem prob1)
 (:domain domain-tms-2-3-light)
 (:objects 
 kiln0 - (either kiln8 kiln20)
 pone0 pone1 pone2 pone3 pone4 pone5 pone6 pone7 pone8 pone9 pone10 pone11 pone12 pone13 pone14 pone15 pone16 pone17 pone18 pone19 - piecetype1
 ptwo0 ptwo1 ptwo2 ptwo3 ptwo4 ptwo5 ptwo6 ptwo7 ptwo8 ptwo9 ptwo10 ptwo11 ptwo12 ptwo13 ptwo14 ptwo15 ptwo16 ptwo17 ptwo18 ptwo19 ptwo20 ptwo21 ptwo22 ptwo23 ptwo24 ptwo25 ptwo26 ptwo27 ptwo28 ptwo29 - piecetype2
 pthree0 pthree1 pthree2 pthree3 pthree4 pthree5 pthree6 pthree7 pthree8 pthree9 pthree10 pthree11 pthree12 pthree13 pthree14 pthree15 pthree16 pthree17 pthree18 pthree19 pthree20 pthree21 pthree22 pthree23 pthree24 pthree25 pthree26 pthree27 pthree28 pthree29 pthree30 pthree31 pthree32 pthree33 pthree34 pthree35 pthree36 pthree37 pthree38 pthree39 pthree40 pthree41 pthree42 pthree43 pthree44 pthree45 pthree46 pthree47 pthree48 pthree49 - piecetype3
)
 (:init 
  (energy)
)
 (:goal
  (and
     (baked-structure pthree7 ptwo14)
     (baked-structure pthree36 pthree6)
     (baked-structure pthree24 ptwo8)
     (baked-structure pthree32 pthree31)
     (baked-structure pone17 pthree44)
     (baked-structure pthree47 pthree16)
     (baked-structure pone1 pone2)
     (baked-structure ptwo26 pthree3)
     (baked-structure ptwo9 pthree29)
     (baked-structure ptwo1 pthree11)
     (baked-structure ptwo11 ptwo12)
     (baked-structure ptwo28 ptwo15)
     (baked-structure pthree13 pthree33)
     (baked-structure pone4 ptwo0)
     (baked-structure pthree42 pthree1)
     (baked-structure pthree17 ptwo24)
     (baked-structure pone15 pthree26)
     (baked-structure pone10 pthree25)
     (baked-structure ptwo22 pone19)
     (baked-structure pone13 pone8)
     (baked-structure pthree8 ptwo10)
     (baked-structure pthree37 pone5)
     (baked-structure pthree46 ptwo16)
     (baked-structure ptwo5 ptwo23)
     (baked-structure pthree45 pthree2)
     (baked-structure pthree20 ptwo4)
     (baked-structure pthree43 pone7)
     (baked-structure pthree15 pthree9)
     (baked-structure ptwo7 pone6)
     (baked-structure ptwo13 pone9)
     (baked-structure pthree49 pthree38)
     (baked-structure pthree28 ptwo3)
     (baked-structure pthree22 pone0)
     (baked-structure ptwo20 ptwo6)
     (baked-structure pthree12 ptwo29)
     (baked-structure pone16 pthree0)
     (baked-structure pthree41 pthree5)
     (baked-structure pthree35 pthree34)
     (baked-structure pthree21 pone14)
     (baked-structure pthree39 pthree10)
     (baked-structure ptwo27 pthree27)
     (baked-structure pone18 ptwo2)
     (baked-structure pthree18 ptwo17)
     (baked-structure pone3 pthree23)
     (baked-structure ptwo18 pthree4)
     (baked-structure pthree30 pthree48)
     (baked-structure pone12 pthree19)
     (baked-structure pthree14 ptwo21)
     (baked-structure pone11 ptwo25)
     (baked-structure ptwo19 pthree40)
))
 (:metric minimize (total-time))
)
