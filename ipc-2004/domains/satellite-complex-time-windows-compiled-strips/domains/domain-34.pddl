
(define (domain satellite)
  (:requirements :strips :equality :typing :fluents :durative-actions)
(:types sendwindow satellite direction instrument mode)
 

(:constants
	satellite0 - satellite
	satellite1 - satellite
	satellite2 - satellite
	satellite3 - satellite
	satellite4 - satellite
        window0 - sendwindow
        window1 - sendwindow
        window2 - sendwindow
        window3 - sendwindow
        window4 - sendwindow
        window5 - sendwindow
        window6 - sendwindow
        window7 - sendwindow
        window8 - sendwindow
        window9 - sendwindow
        window10 - sendwindow
        window11 - sendwindow
        window12 - sendwindow
        window13 - sendwindow
        window14 - sendwindow
        window15 - sendwindow
        window16 - sendwindow
        window17 - sendwindow
        window18 - sendwindow
        window19 - sendwindow
        window20 - sendwindow
        window21 - sendwindow
        window22 - sendwindow
        window23 - sendwindow
        window24 - sendwindow
        window25 - sendwindow
        window26 - sendwindow
        window27 - sendwindow
        window28 - sendwindow
        window29 - sendwindow
        window30 - sendwindow
        window31 - sendwindow
        window32 - sendwindow
        window33 - sendwindow
        window34 - sendwindow

)

(:predicates 
               (on_board ?i - instrument ?s - satellite)
	       (supports ?i - instrument ?m - mode)
	       (pointing ?s - satellite ?d - direction)
	       (power_avail ?s - satellite)
	       (power_on ?i - instrument)
	       (calibrated ?i - instrument)
	       (have_image ?d - direction ?m - mode)
	       (calibration_target ?i - instrument ?d - direction)
               (available ?w - sendwindow)
               (active ?w - sendwindow ?s - satellite)
               (sent_image ?d - direction ?m - mode)
               (TLstart)
               (TLstarted)
               (TLend)
               (TLrunning)
               (TL0)
               (TL1)
               (TL2)
               (TL3)
               (TL4)
               (TL5)
               (TL6)
               (TL7)
               (TL8)
               (TL9)
               (TL10)
               (TL11)
               (TL12)
               (TL13)
               (TL14)
               (TL15)
               (TL16)
               (TL17)
               (TL18)
               (TL19)
               (TL20)
               (TL21)
               (TL22)
               (TL23)
               (TL24)
               (TL25)
               (TL26)
               (TL27)
               (TL28)
               (TL29)
               (TL30)
               (TL31)
               (TL32)
               (TL33)
               (TL34)
               (TL35)
               (TL36)
               (TL37)
               (TL38)
               (TL39)
               (TL40)
               (TL41)
               (TL42)
               (TL43)
               (TL44)
               (TL45)
               (TL46)
               (TL47)
               (TL48)
               (TL49)
               (TL50)
               (TL51)
               (TL52)
               (TL53)
               (TL54)
               (TL55)
               (TL56)
               (TL57)
               (TL58)
               (TL59)
               (TL60)
               (TL61)
               (TL62)
               (TL63)
               (TL64)
               (TL65)
               (TL66)
               (TL67)
               (TL68)
               (TL69)



)
 
 

  (:functions (slew_time ?a ?b - direction)
            (calibration_time ?a - instrument ?d - direction)
		(data_capacity ?s - satellite)
		(data ?d - direction ?m - mode)
		(data-stored)
                (send_time ?d - direction ?m - mode)
                (overall-image-utility)
                (image-utility ?d - direction ?m - mode ?w - sendwindow)
	)

 

  (:durative-action turn_to
   :parameters (?s - satellite ?d_new - direction ?d_prev - direction)
   :duration (= ?duration (slew_time ?d_prev ?d_new))
   :condition (and (at start (TLstarted)) (at start (pointing ?s ?d_prev))
              )
   :effect (and  (at end (pointing ?s ?d_new))
                 (at start (not (pointing ?s ?d_prev)))
           )
  )

 
  (:durative-action switch_on
   :parameters (?i - instrument ?s - satellite)
   :duration (= ?duration 2)
   :condition (and (at start (TLstarted)) (over all (on_board ?i ?s)) 
                      (at start (power_avail ?s)))
   :effect (and (at end (power_on ?i))
                (at start (not (calibrated ?i)))
                (at start (not (power_avail ?s)))
           )
          
  )

 
  (:durative-action switch_off
   :parameters (?i - instrument ?s - satellite)
   :duration (= ?duration 1)
   :condition (and (at start (TLstarted)) (over all (on_board ?i ?s))
                      (at start (power_on ?i)) 
                  )
   :effect (and (at start (not (power_on ?i)))
                (at end (power_avail ?s))
           )
  )

  (:durative-action calibrate
   :parameters (?s - satellite ?i - instrument ?d - direction)
   :duration (= ?duration (calibration_time ?i ?d))
   :condition (and (at start (TLstarted)) (over all (on_board ?i ?s))
		      (over all (calibration_target ?i ?d))
                      (at start (pointing ?s ?d))
                      (over all (power_on ?i))
                      (at end (power_on ?i))
                  )
   :effect (at end (calibrated ?i)) 
  )


  (:durative-action take_image
   :parameters (?s - satellite ?d - direction ?i - instrument ?m - mode)
   :duration (= ?duration 7)
   :condition (and (at start (TLstarted)) (over all (calibrated ?i))
                      (over all (on_board ?i ?s))
                      (over all (supports ?i ?m) )
                      (over all (power_on ?i))
                      (over all (pointing ?s ?d))
                      (at end (power_on ?i))
 			  (at start (>= (data_capacity ?s) (data ?d ?m)))
               )
   :effect (and (at start (decrease (data_capacity ?s) (data ?d ?m)))
		(at end (have_image ?d ?m))
		(at end (increase (data-stored) (data ?d ?m)))
		)
  )


  (:durative-action send_image
   :parameters (?s - satellite ?w - sendwindow ?d - direction ?m - mode)
   :duration (= ?duration (send_time ?d ?m))
   :condition (and (at start (TLstarted)) (at start (have_image ?d ?m))
                   (at start (available ?w))
                   (over all (active ?w ?s))
               )
   :effect (and (at end (sent_image ?d ?m))
                (at start (not (available ?w)))
                (at end (available ?w))
                (at end (increase (overall-image-utility) (image-utility ?d ?m ?w))))
  )


(:durative-action timedliteralwrapper
 :parameters ()
 :duration (= ?duration 423.04)
 :condition
	(and (at start (TLstart)))
 :effect
	(and (at start (not (TLstart))) (at start (TLstarted)) (at start (TL0))
             (at start (TLrunning)) (at end (not (TLrunning)))))

(:durative-action timedliteral1
 :parameters ()
 :duration (= ?duration 26.00)
 :condition
	(and (over all (TLrunning)) (over all (TL0)))
 :effect
	(and (at end (TL1)) (at end (not (TL0)))
	(at end (active window0 satellite4))
	(at end (active window0 satellite1))
))

(:durative-action timedliteral2
 :parameters ()
 :duration (= ?duration 15.00)
 :condition
	(and (over all (TLrunning)) (over all (TL1)))
 :effect
	(and (at end (TL2)) (at end (not (TL1)))
	(at end (active window1 satellite4))
	(at end (active window1 satellite1))
))

(:durative-action timedliteral3
 :parameters ()
 :duration (= ?duration 15.00)
 :condition
	(and (over all (TLrunning)) (over all (TL2)))
 :effect
	(and (at end (TL3)) (at end (not (TL2)))
	(at end (active window2 satellite4))
	(at end (active window2 satellite1))
))

(:durative-action timedliteral4
 :parameters ()
 :duration (= ?duration 16.00)
 :condition
	(and (over all (TLrunning)) (over all (TL3)))
 :effect
	(and (at end (TL4)) (at end (not (TL3)))
	(at end (active window3 satellite4))
	(at end (active window3 satellite1))
))

(:durative-action timedliteral5
 :parameters ()
 :duration (= ?duration 10.00)
 :condition
	(and (over all (TLrunning)) (over all (TL4)))
 :effect
	(and (at end (TL5)) (at end (not (TL4)))
	(at end (active window4 satellite4))
	(at end (active window4 satellite1))
	(at end (active window4 satellite2))
))

(:durative-action timedliteral6
 :parameters ()
 :duration (= ?duration 14.00)
 :condition
	(and (over all (TLrunning)) (over all (TL5)))
 :effect
	(and (at end (TL6)) (at end (not (TL5)))
	(at end (active window5 satellite2))
	(at end (active window5 satellite4))
	(at end (active window5 satellite1))
))

(:durative-action timedliteral7
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL6)))
 :effect
	(and (at end (TL7)) (at end (not (TL6)))
	(at end (active window6 satellite4))
	(at end (active window6 satellite1))
	(at end (active window6 satellite2))
))

(:durative-action timedliteral8
 :parameters ()
 :duration (= ?duration 2.04)
 :condition
	(and (over all (TLrunning)) (over all (TL7)))
 :effect
	(and (at end (TL8)) (at end (not (TL7)))
	(at end (not (active window0 satellite4)))
	(at end (not (active window0 satellite1)))
))

(:durative-action timedliteral9
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL8)))
 :effect
	(and (at end (TL9)) (at end (not (TL8)))
	(at end (active window7 satellite3))
	(at end (active window7 satellite0))
	(at end (active window7 satellite1))
	(at end (active window7 satellite2))
))

(:durative-action timedliteral10
 :parameters ()
 :duration (= ?duration 6.00)
 :condition
	(and (over all (TLrunning)) (over all (TL9)))
 :effect
	(and (at end (TL10)) (at end (not (TL9)))
	(at end (active window8 satellite3))
	(at end (active window8 satellite4))
	(at end (active window8 satellite0))
	(at end (active window8 satellite1))
))

(:durative-action timedliteral11
 :parameters ()
 :duration (= ?duration 4.00)
 :condition
	(and (over all (TLrunning)) (over all (TL10)))
 :effect
	(and (at end (TL11)) (at end (not (TL10)))
	(at end (active window9 satellite2))
	(at end (active window9 satellite4))
	(at end (active window9 satellite3))
	(at end (active window9 satellite0))
))

(:durative-action timedliteral12
 :parameters ()
 :duration (= ?duration 0.04)
 :condition
	(and (over all (TLrunning)) (over all (TL11)))
 :effect
	(and (at end (TL12)) (at end (not (TL11)))
	(at end (not (active window1 satellite4)))
	(at end (not (active window1 satellite1)))
))

(:durative-action timedliteral13
 :parameters ()
 :duration (= ?duration 6.96)
 :condition
	(and (over all (TLrunning)) (over all (TL12)))
 :effect
	(and (at end (TL13)) (at end (not (TL12)))
	(at end (active window10 satellite1))
	(at end (active window10 satellite2))
	(at end (active window10 satellite0))
	(at end (active window10 satellite3))
))

(:durative-action timedliteral14
 :parameters ()
 :duration (= ?duration 7.00)
 :condition
	(and (over all (TLrunning)) (over all (TL13)))
 :effect
	(and (at end (TL14)) (at end (not (TL13)))
	(at end (active window11 satellite4))
	(at end (active window11 satellite1))
	(at end (active window11 satellite2))
	(at end (active window11 satellite0))
))

(:durative-action timedliteral15
 :parameters ()
 :duration (= ?duration 1.04)
 :condition
	(and (over all (TLrunning)) (over all (TL14)))
 :effect
	(and (at end (TL15)) (at end (not (TL14)))
	(at end (not (active window2 satellite4)))
	(at end (not (active window2 satellite1)))
))

(:durative-action timedliteral16
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL15)))
 :effect
	(and (at end (TL16)) (at end (not (TL15)))
	(at end (active window12 satellite4))
	(at end (active window12 satellite3))
	(at end (active window12 satellite1))
	(at end (active window12 satellite2))
))

(:durative-action timedliteral17
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL16)))
 :effect
	(and (at end (TL17)) (at end (not (TL16)))
	(at end (active window13 satellite0))
	(at end (active window13 satellite3))
	(at end (active window13 satellite4))
	(at end (active window13 satellite1))
))

(:durative-action timedliteral18
 :parameters ()
 :duration (= ?duration 2.00)
 :condition
	(and (over all (TLrunning)) (over all (TL17)))
 :effect
	(and (at end (TL18)) (at end (not (TL17)))
	(at end (active window14 satellite2))
	(at end (active window14 satellite0))
	(at end (active window14 satellite4))
	(at end (active window14 satellite3))
))

(:durative-action timedliteral19
 :parameters ()
 :duration (= ?duration 1.04)
 :condition
	(and (over all (TLrunning)) (over all (TL18)))
 :effect
	(and (at end (TL19)) (at end (not (TL18)))
	(at end (not (active window3 satellite4)))
	(at end (not (active window3 satellite1)))
))

(:durative-action timedliteral20
 :parameters ()
 :duration (= ?duration 6.96)
 :condition
	(and (over all (TLrunning)) (over all (TL19)))
 :effect
	(and (at end (TL20)) (at end (not (TL19)))
	(at end (active window15 satellite2))
	(at end (active window15 satellite1))
	(at end (active window15 satellite0))
	(at end (active window15 satellite4))
))

(:durative-action timedliteral21
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL20)))
 :effect
	(and (at end (TL21)) (at end (not (TL20)))
	(at end (not (active window4 satellite4)))
	(at end (not (active window4 satellite1)))
	(at end (not (active window4 satellite2)))
))

(:durative-action timedliteral22
 :parameters ()
 :duration (= ?duration 2.96)
 :condition
	(and (over all (TLrunning)) (over all (TL21)))
 :effect
	(and (at end (TL22)) (at end (not (TL21)))
	(at end (active window16 satellite3))
	(at end (active window16 satellite1))
	(at end (active window16 satellite0))
	(at end (active window16 satellite2))
))

(:durative-action timedliteral23
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL22)))
 :effect
	(and (at end (TL23)) (at end (not (TL22)))
	(at end (active window17 satellite4))
	(at end (active window17 satellite3))
	(at end (active window17 satellite0))
	(at end (active window17 satellite2))
))

(:durative-action timedliteral24
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL23)))
 :effect
	(and (at end (TL24)) (at end (not (TL23)))
	(at end (not (active window5 satellite2)))
	(at end (not (active window5 satellite4)))
	(at end (not (active window5 satellite1)))
))

(:durative-action timedliteral25
 :parameters ()
 :duration (= ?duration 3.96)
 :condition
	(and (over all (TLrunning)) (over all (TL24)))
 :effect
	(and (at end (TL25)) (at end (not (TL24)))
	(at end (active window18 satellite1))
	(at end (active window18 satellite4))
	(at end (active window18 satellite3))
	(at end (active window18 satellite0))
))

(:durative-action timedliteral26
 :parameters ()
 :duration (= ?duration 4.04)
 :condition
	(and (over all (TLrunning)) (over all (TL25)))
 :effect
	(and (at end (TL26)) (at end (not (TL25)))
	(at end (not (active window6 satellite4)))
	(at end (not (active window6 satellite1)))
	(at end (not (active window6 satellite2)))
))

(:durative-action timedliteral27
 :parameters ()
 :duration (= ?duration 0.96)
 :condition
	(and (over all (TLrunning)) (over all (TL26)))
 :effect
	(and (at end (TL27)) (at end (not (TL26)))
	(at end (active window19 satellite2))
	(at end (active window19 satellite4))
	(at end (active window19 satellite1))
	(at end (active window19 satellite3))
))

(:durative-action timedliteral28
 :parameters ()
 :duration (= ?duration 6.04)
 :condition
	(and (over all (TLrunning)) (over all (TL27)))
 :effect
	(and (at end (TL28)) (at end (not (TL27)))
	(at end (not (active window7 satellite3)))
	(at end (not (active window7 satellite0)))
	(at end (not (active window7 satellite1)))
	(at end (not (active window7 satellite2)))
))

(:durative-action timedliteral29
 :parameters ()
 :duration (= ?duration 0.96)
 :condition
	(and (over all (TLrunning)) (over all (TL28)))
 :effect
	(and (at end (TL29)) (at end (not (TL28)))
	(at end (active window20 satellite0))
	(at end (active window20 satellite2))
	(at end (active window20 satellite4))
	(at end (active window20 satellite1))
))

(:durative-action timedliteral30
 :parameters ()
 :duration (= ?duration 5.04)
 :condition
	(and (over all (TLrunning)) (over all (TL29)))
 :effect
	(and (at end (TL30)) (at end (not (TL29)))
	(at end (not (active window8 satellite3)))
	(at end (not (active window8 satellite4)))
	(at end (not (active window8 satellite0)))
	(at end (not (active window8 satellite1)))
))

(:durative-action timedliteral31
 :parameters ()
 :duration (= ?duration 2.96)
 :condition
	(and (over all (TLrunning)) (over all (TL30)))
 :effect
	(and (at end (TL31)) (at end (not (TL30)))
	(at end (active window21 satellite3))
	(at end (active window21 satellite0))
	(at end (active window21 satellite2))
	(at end (active window21 satellite1))
))

(:durative-action timedliteral32
 :parameters ()
 :duration (= ?duration 1.04)
 :condition
	(and (over all (TLrunning)) (over all (TL31)))
 :effect
	(and (at end (TL32)) (at end (not (TL31)))
	(at end (not (active window9 satellite2)))
	(at end (not (active window9 satellite4)))
	(at end (not (active window9 satellite3)))
	(at end (not (active window9 satellite0)))
))

(:durative-action timedliteral33
 :parameters ()
 :duration (= ?duration 6.96)
 :condition
	(and (over all (TLrunning)) (over all (TL32)))
 :effect
	(and (at end (TL33)) (at end (not (TL32)))
	(at end (active window22 satellite3))
	(at end (active window22 satellite4))
	(at end (active window22 satellite0))
	(at end (active window22 satellite2))
))

(:durative-action timedliteral34
 :parameters ()
 :duration (= ?duration 0.04)
 :condition
	(and (over all (TLrunning)) (over all (TL33)))
 :effect
	(and (at end (TL34)) (at end (not (TL33)))
	(at end (not (active window10 satellite1)))
	(at end (not (active window10 satellite2)))
	(at end (not (active window10 satellite0)))
	(at end (not (active window10 satellite3)))
))

(:durative-action timedliteral35
 :parameters ()
 :duration (= ?duration 7.00)
 :condition
	(and (over all (TLrunning)) (over all (TL34)))
 :effect
	(and (at end (TL35)) (at end (not (TL34)))
	(at end (not (active window11 satellite4)))
	(at end (not (active window11 satellite1)))
	(at end (not (active window11 satellite2)))
	(at end (not (active window11 satellite0)))
))

(:durative-action timedliteral36
 :parameters ()
 :duration (= ?duration 0.96)
 :condition
	(and (over all (TLrunning)) (over all (TL35)))
 :effect
	(and (at end (TL36)) (at end (not (TL35)))
	(at end (active window23 satellite1))
	(at end (active window23 satellite3))
	(at end (active window23 satellite0))
	(at end (active window23 satellite2))
))

(:durative-action timedliteral37
 :parameters ()
 :duration (= ?duration 5.04)
 :condition
	(and (over all (TLrunning)) (over all (TL36)))
 :effect
	(and (at end (TL37)) (at end (not (TL36)))
	(at end (not (active window12 satellite4)))
	(at end (not (active window12 satellite3)))
	(at end (not (active window12 satellite1)))
	(at end (not (active window12 satellite2)))
))

(:durative-action timedliteral38
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL37)))
 :effect
	(and (at end (TL38)) (at end (not (TL37)))
	(at end (active window24 satellite1))
	(at end (active window24 satellite3))
	(at end (active window24 satellite0))
))

(:durative-action timedliteral39
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL38)))
 :effect
	(and (at end (TL39)) (at end (not (TL38)))
	(at end (not (active window13 satellite0)))
	(at end (not (active window13 satellite3)))
	(at end (not (active window13 satellite4)))
	(at end (not (active window13 satellite1)))
))

(:durative-action timedliteral40
 :parameters ()
 :duration (= ?duration 2.00)
 :condition
	(and (over all (TLrunning)) (over all (TL39)))
 :effect
	(and (at end (TL40)) (at end (not (TL39)))
	(at end (not (active window14 satellite2)))
	(at end (not (active window14 satellite0)))
	(at end (not (active window14 satellite4)))
	(at end (not (active window14 satellite3)))
))

(:durative-action timedliteral41
 :parameters ()
 :duration (= ?duration 2.96)
 :condition
	(and (over all (TLrunning)) (over all (TL40)))
 :effect
	(and (at end (TL41)) (at end (not (TL40)))
	(at end (active window25 satellite2))
	(at end (active window25 satellite0))
	(at end (active window25 satellite4))
	(at end (active window25 satellite3))
))

(:durative-action timedliteral42
 :parameters ()
 :duration (= ?duration 5.04)
 :condition
	(and (over all (TLrunning)) (over all (TL41)))
 :effect
	(and (at end (TL42)) (at end (not (TL41)))
	(at end (not (active window15 satellite2)))
	(at end (not (active window15 satellite1)))
	(at end (not (active window15 satellite0)))
	(at end (not (active window15 satellite4)))
))

(:durative-action timedliteral43
 :parameters ()
 :duration (= ?duration 2.96)
 :condition
	(and (over all (TLrunning)) (over all (TL42)))
 :effect
	(and (at end (TL43)) (at end (not (TL42)))
	(at end (active window26 satellite0))
	(at end (active window26 satellite2))
	(at end (active window26 satellite4))
	(at end (active window26 satellite3))
))

(:durative-action timedliteral44
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL43)))
 :effect
	(and (at end (TL44)) (at end (not (TL43)))
	(at end (not (active window16 satellite3)))
	(at end (not (active window16 satellite1)))
	(at end (not (active window16 satellite0)))
	(at end (not (active window16 satellite2)))
))

(:durative-action timedliteral45
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL44)))
 :effect
	(and (at end (TL45)) (at end (not (TL44)))
	(at end (active window27 satellite0))
	(at end (active window27 satellite2))
	(at end (active window27 satellite4))
	(at end (active window27 satellite3))
))

(:durative-action timedliteral46
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL45)))
 :effect
	(and (at end (TL46)) (at end (not (TL45)))
	(at end (not (active window17 satellite4)))
	(at end (not (active window17 satellite3)))
	(at end (not (active window17 satellite0)))
	(at end (not (active window17 satellite2)))
))

(:durative-action timedliteral47
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL46)))
 :effect
	(and (at end (TL47)) (at end (not (TL46)))
	(at end (active window28 satellite0))
	(at end (active window28 satellite2))
	(at end (active window28 satellite4))
	(at end (active window28 satellite3))
))

(:durative-action timedliteral48
 :parameters ()
 :duration (= ?duration 2.04)
 :condition
	(and (over all (TLrunning)) (over all (TL47)))
 :effect
	(and (at end (TL48)) (at end (not (TL47)))
	(at end (not (active window18 satellite1)))
	(at end (not (active window18 satellite4)))
	(at end (not (active window18 satellite3)))
	(at end (not (active window18 satellite0)))
))

(:durative-action timedliteral49
 :parameters ()
 :duration (= ?duration 5.00)
 :condition
	(and (over all (TLrunning)) (over all (TL48)))
 :effect
	(and (at end (TL49)) (at end (not (TL48)))
	(at end (not (active window19 satellite2)))
	(at end (not (active window19 satellite4)))
	(at end (not (active window19 satellite1)))
	(at end (not (active window19 satellite3)))
))

(:durative-action timedliteral50
 :parameters ()
 :duration (= ?duration 0.96)
 :condition
	(and (over all (TLrunning)) (over all (TL49)))
 :effect
	(and (at end (TL50)) (at end (not (TL49)))
	(at end (active window29 satellite0))
	(at end (active window29 satellite2))
	(at end (active window29 satellite4))
	(at end (active window29 satellite3))
))

(:durative-action timedliteral51
 :parameters ()
 :duration (= ?duration 6.04)
 :condition
	(and (over all (TLrunning)) (over all (TL50)))
 :effect
	(and (at end (TL51)) (at end (not (TL50)))
	(at end (not (active window20 satellite0)))
	(at end (not (active window20 satellite2)))
	(at end (not (active window20 satellite4)))
	(at end (not (active window20 satellite1)))
))

(:durative-action timedliteral52
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL51)))
 :effect
	(and (at end (TL52)) (at end (not (TL51)))
	(at end (active window30 satellite0))
	(at end (active window30 satellite4))
	(at end (active window30 satellite3))
))

(:durative-action timedliteral53
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL52)))
 :effect
	(and (at end (TL53)) (at end (not (TL52)))
	(at end (not (active window21 satellite3)))
	(at end (not (active window21 satellite0)))
	(at end (not (active window21 satellite2)))
	(at end (not (active window21 satellite1)))
))

(:durative-action timedliteral54
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL53)))
 :effect
	(and (at end (TL54)) (at end (not (TL53)))
	(at end (not (active window22 satellite3)))
	(at end (not (active window22 satellite4)))
	(at end (not (active window22 satellite0)))
	(at end (not (active window22 satellite2)))
))

(:durative-action timedliteral55
 :parameters ()
 :duration (= ?duration 1.96)
 :condition
	(and (over all (TLrunning)) (over all (TL54)))
 :effect
	(and (at end (TL55)) (at end (not (TL54)))
	(at end (active window31 satellite4))
	(at end (active window31 satellite3))
	(at end (active window31 satellite0))
))

(:durative-action timedliteral56
 :parameters ()
 :duration (= ?duration 6.04)
 :condition
	(and (over all (TLrunning)) (over all (TL55)))
 :effect
	(and (at end (TL56)) (at end (not (TL55)))
	(at end (not (active window23 satellite1)))
	(at end (not (active window23 satellite3)))
	(at end (not (active window23 satellite0)))
	(at end (not (active window23 satellite2)))
))

(:durative-action timedliteral57
 :parameters ()
 :duration (= ?duration 10.00)
 :condition
	(and (over all (TLrunning)) (over all (TL56)))
 :effect
	(and (at end (TL57)) (at end (not (TL56)))
	(at end (not (active window24 satellite1)))
	(at end (not (active window24 satellite3)))
	(at end (not (active window24 satellite0)))
))

(:durative-action timedliteral58
 :parameters ()
 :duration (= ?duration 1.96)
 :condition
	(and (over all (TLrunning)) (over all (TL57)))
 :effect
	(and (at end (TL58)) (at end (not (TL57)))
	(at end (active window32 satellite0))
	(at end (active window32 satellite4))
))

(:durative-action timedliteral59
 :parameters ()
 :duration (= ?duration 6.04)
 :condition
	(and (over all (TLrunning)) (over all (TL58)))
 :effect
	(and (at end (TL59)) (at end (not (TL58)))
	(at end (not (active window25 satellite2)))
	(at end (not (active window25 satellite0)))
	(at end (not (active window25 satellite4)))
	(at end (not (active window25 satellite3)))
))

(:durative-action timedliteral60
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL59)))
 :effect
	(and (at end (TL60)) (at end (not (TL59)))
	(at end (not (active window26 satellite0)))
	(at end (not (active window26 satellite2)))
	(at end (not (active window26 satellite4)))
	(at end (not (active window26 satellite3)))
))

(:durative-action timedliteral61
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL60)))
 :effect
	(and (at end (TL61)) (at end (not (TL60)))
	(at end (active window33 satellite0))
	(at end (active window33 satellite4))
))

(:durative-action timedliteral62
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL61)))
 :effect
	(and (at end (TL62)) (at end (not (TL61)))
	(at end (not (active window27 satellite0)))
	(at end (not (active window27 satellite2)))
	(at end (not (active window27 satellite4)))
	(at end (not (active window27 satellite3)))
))

(:durative-action timedliteral63
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL62)))
 :effect
	(and (at end (TL63)) (at end (not (TL62)))
	(at end (not (active window28 satellite0)))
	(at end (not (active window28 satellite2)))
	(at end (not (active window28 satellite4)))
	(at end (not (active window28 satellite3)))
))

(:durative-action timedliteral64
 :parameters ()
 :duration (= ?duration 4.96)
 :condition
	(and (over all (TLrunning)) (over all (TL63)))
 :effect
	(and (at end (TL64)) (at end (not (TL63)))
	(at end (active window34 satellite0))
	(at end (active window34 satellite4))
))

(:durative-action timedliteral65
 :parameters ()
 :duration (= ?duration 3.04)
 :condition
	(and (over all (TLrunning)) (over all (TL64)))
 :effect
	(and (at end (TL65)) (at end (not (TL64)))
	(at end (not (active window29 satellite0)))
	(at end (not (active window29 satellite2)))
	(at end (not (active window29 satellite4)))
	(at end (not (active window29 satellite3)))
))

(:durative-action timedliteral66
 :parameters ()
 :duration (= ?duration 11.00)
 :condition
	(and (over all (TLrunning)) (over all (TL65)))
 :effect
	(and (at end (TL66)) (at end (not (TL65)))
	(at end (not (active window30 satellite0)))
	(at end (not (active window30 satellite4)))
	(at end (not (active window30 satellite3)))
))

(:durative-action timedliteral67
 :parameters ()
 :duration (= ?duration 13.00)
 :condition
	(and (over all (TLrunning)) (over all (TL66)))
 :effect
	(and (at end (TL67)) (at end (not (TL66)))
	(at end (not (active window31 satellite4)))
	(at end (not (active window31 satellite3)))
	(at end (not (active window31 satellite0)))
))

(:durative-action timedliteral68
 :parameters ()
 :duration (= ?duration 18.00)
 :condition
	(and (over all (TLrunning)) (over all (TL67)))
 :effect
	(and (at end (TL68)) (at end (not (TL67)))
	(at end (not (active window32 satellite0)))
	(at end (not (active window32 satellite4)))
))

(:durative-action timedliteral69
 :parameters ()
 :duration (= ?duration 19.00)
 :condition
	(and (over all (TLrunning)) (over all (TL68)))
 :effect
	(and (at end (TL69)) (at end (not (TL68)))
	(at end (not (active window33 satellite0)))
	(at end (not (active window33 satellite4)))
))

(:durative-action timedliteral70
 :parameters ()
 :duration (= ?duration 16.00)
 :condition
	(and (over all (TLrunning)) (over all (TL69)))
 :effect
	(and (at end (TLend)) (at end (not (TL69)))
	(at end (not (active window34 satellite0)))
	(at end (not (active window34 satellite4)))
))


  


)
