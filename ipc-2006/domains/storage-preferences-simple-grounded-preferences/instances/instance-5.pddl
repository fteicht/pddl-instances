;TIME:     0.10 seconds
; Map of the Depots:                      
; 00=11 22 33         
; 0* *1 2* *3         
;------------         
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; *: Depot access point
; =: Transit area

(define (problem storage-5)
(:domain Storage-PropositionalSimplePreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-2-1 depot1-2-2 depot2-1-1 depot2-1-2 depot2-2-1 depot2-2-2 depot3-1-1 depot3-1-2 depot3-2-1 depot3-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 - storearea
	hoist0 hoist1 - hoist
	crate0 crate1 crate2 crate3 crate4 - crate
	container0 container1 - container
	depot0 depot1 depot2 depot3 - depot
	loadarea transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-1 depot0-2-2)
	(connected depot0-2-2 depot0-1-2)
	(connected depot0-2-2 depot0-2-1)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-2-2)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-1 depot1-2-2)
	(connected depot1-2-2 depot1-1-2)
	(connected depot1-2-2 depot1-2-1)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-2-2)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-1 depot3-2-2)
	(connected depot3-2-2 depot3-1-2)
	(connected depot3-2-2 depot3-2-1)
	(connected transit0 depot0-1-2)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)  
	(connected depot0-2-2 loadarea)
	(connected loadarea depot0-2-2)
	(connected depot1-2-1 loadarea)
	(connected loadarea depot1-2-1)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)
	(connected depot3-2-1 loadarea)
	(connected loadarea depot3-2-1)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-2-1)
	(clear depot0-2-2)
	(clear depot1-1-1)
	(clear depot1-2-2)
	(clear depot1-2-1)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-2-1)
	(clear depot2-2-2)
	(clear depot3-1-1)
	(clear depot3-1-2)
	(clear depot3-2-1)  
	(at hoist0 depot1-1-2)
	(available hoist0)
	(at hoist1 depot3-2-2)
	(available hoist1)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate3 crate4)
	(compatible crate4 crate3))

(:goal (and

    (preference P3E 
        (or (not (at hoist1 depot3-2-2))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist0 depot3-2-2))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist1 depot3-2-1))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist0 depot3-2-1))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist1 depot3-1-2))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist0 depot3-1-2))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist1 depot3-1-1))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist0 depot3-1-1))
            (and (not (in crate0 depot3))
                 (not (in crate1 depot3))
                 (not (in crate2 depot3))
                 (not (in crate3 depot3))
                 (not (in crate4 depot3)))))
    (preference P3E 
        (or (not (at hoist1 depot2-2-2))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist0 depot2-2-2))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist1 depot2-2-1))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist0 depot2-2-1))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist1 depot2-1-2))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist0 depot2-1-2))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist1 depot2-1-1))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist0 depot2-1-1))
            (and (not (in crate0 depot2))
                 (not (in crate1 depot2))
                 (not (in crate2 depot2))
                 (not (in crate3 depot2))
                 (not (in crate4 depot2)))))
    (preference P3E 
        (or (not (at hoist1 depot1-2-2))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist0 depot1-2-2))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist1 depot1-2-1))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist0 depot1-2-1))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist1 depot1-1-2))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist0 depot1-1-2))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist1 depot1-1-1))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist0 depot1-1-1))
            (and (not (in crate0 depot1))
                 (not (in crate1 depot1))
                 (not (in crate2 depot1))
                 (not (in crate3 depot1))
                 (not (in crate4 depot1)))))
    (preference P3E 
        (or (not (at hoist1 depot0-2-2))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist0 depot0-2-2))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist1 depot0-2-1))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist0 depot0-2-1))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist1 depot0-1-2))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist0 depot0-1-2))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist1 depot0-1-1))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P3E 
        (or (not (at hoist0 depot0-1-1))
            (and (not (in crate0 depot0))
                 (not (in crate1 depot0))
                 (not (in crate2 depot0))
                 (not (in crate3 depot0))
                 (not (in crate4 depot0)))))
    (preference P7A 
        (or (not (on crate4 depot3-2-2))
            (not (on crate2 depot3-2-1))))
    (preference P7A 
        (or (not (on crate4 depot3-2-2))
            (not (on crate2 depot3-1-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-1))
            (not (on crate2 depot3-2-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-1))
            (not (on crate2 depot3-1-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-2))
            (not (on crate2 depot3-2-2))))
    (preference P7A 
        (or (not (on crate4 depot3-1-2))
            (not (on crate2 depot3-1-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-1))
            (not (on crate2 depot3-2-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-1))
            (not (on crate2 depot3-1-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-2))
            (not (on crate2 depot2-2-1))))
    (preference P7A 
        (or (not (on crate4 depot2-2-2))
            (not (on crate2 depot2-1-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-1))
            (not (on crate2 depot2-2-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-1))
            (not (on crate2 depot2-1-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-2))
            (not (on crate2 depot2-2-2))))
    (preference P7A 
        (or (not (on crate4 depot2-1-2))
            (not (on crate2 depot2-1-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-1))
            (not (on crate2 depot2-2-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-1))
            (not (on crate2 depot2-1-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-2))
            (not (on crate2 depot1-2-1))))
    (preference P7A 
        (or (not (on crate4 depot1-2-2))
            (not (on crate2 depot1-1-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-1))
            (not (on crate2 depot1-2-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-1))
            (not (on crate2 depot1-1-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-2))
            (not (on crate2 depot1-2-2))))
    (preference P7A 
        (or (not (on crate4 depot1-1-2))
            (not (on crate2 depot1-1-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-1))
            (not (on crate2 depot1-2-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-1))
            (not (on crate2 depot1-1-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-2))
            (not (on crate2 depot0-2-1))))
    (preference P7A 
        (or (not (on crate4 depot0-2-2))
            (not (on crate2 depot0-1-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-1))
            (not (on crate2 depot0-2-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-1))
            (not (on crate2 depot0-1-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-2))
            (not (on crate2 depot0-2-2))))
    (preference P7A 
        (or (not (on crate4 depot0-1-2))
            (not (on crate2 depot0-1-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-1))
            (not (on crate2 depot0-2-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-1))
            (not (on crate2 depot0-1-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-2))
            (not (on crate1 depot3-2-1))))
    (preference P7A 
        (or (not (on crate4 depot3-2-2))
            (not (on crate1 depot3-1-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-1))
            (not (on crate1 depot3-2-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-1))
            (not (on crate1 depot3-1-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-2))
            (not (on crate1 depot3-2-2))))
    (preference P7A 
        (or (not (on crate4 depot3-1-2))
            (not (on crate1 depot3-1-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-1))
            (not (on crate1 depot3-2-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-1))
            (not (on crate1 depot3-1-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-2))
            (not (on crate1 depot2-2-1))))
    (preference P7A 
        (or (not (on crate4 depot2-2-2))
            (not (on crate1 depot2-1-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-1))
            (not (on crate1 depot2-2-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-1))
            (not (on crate1 depot2-1-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-2))
            (not (on crate1 depot2-2-2))))
    (preference P7A 
        (or (not (on crate4 depot2-1-2))
            (not (on crate1 depot2-1-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-1))
            (not (on crate1 depot2-2-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-1))
            (not (on crate1 depot2-1-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-2))
            (not (on crate1 depot1-2-1))))
    (preference P7A 
        (or (not (on crate4 depot1-2-2))
            (not (on crate1 depot1-1-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-1))
            (not (on crate1 depot1-2-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-1))
            (not (on crate1 depot1-1-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-2))
            (not (on crate1 depot1-2-2))))
    (preference P7A 
        (or (not (on crate4 depot1-1-2))
            (not (on crate1 depot1-1-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-1))
            (not (on crate1 depot1-2-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-1))
            (not (on crate1 depot1-1-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-2))
            (not (on crate1 depot0-2-1))))
    (preference P7A 
        (or (not (on crate4 depot0-2-2))
            (not (on crate1 depot0-1-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-1))
            (not (on crate1 depot0-2-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-1))
            (not (on crate1 depot0-1-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-2))
            (not (on crate1 depot0-2-2))))
    (preference P7A 
        (or (not (on crate4 depot0-1-2))
            (not (on crate1 depot0-1-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-1))
            (not (on crate1 depot0-2-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-1))
            (not (on crate1 depot0-1-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-2))
            (not (on crate0 depot3-2-1))))
    (preference P7A 
        (or (not (on crate4 depot3-2-2))
            (not (on crate0 depot3-1-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-1))
            (not (on crate0 depot3-2-2))))
    (preference P7A 
        (or (not (on crate4 depot3-2-1))
            (not (on crate0 depot3-1-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-2))
            (not (on crate0 depot3-2-2))))
    (preference P7A 
        (or (not (on crate4 depot3-1-2))
            (not (on crate0 depot3-1-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-1))
            (not (on crate0 depot3-2-1))))
    (preference P7A 
        (or (not (on crate4 depot3-1-1))
            (not (on crate0 depot3-1-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-2))
            (not (on crate0 depot2-2-1))))
    (preference P7A 
        (or (not (on crate4 depot2-2-2))
            (not (on crate0 depot2-1-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-1))
            (not (on crate0 depot2-2-2))))
    (preference P7A 
        (or (not (on crate4 depot2-2-1))
            (not (on crate0 depot2-1-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-2))
            (not (on crate0 depot2-2-2))))
    (preference P7A 
        (or (not (on crate4 depot2-1-2))
            (not (on crate0 depot2-1-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-1))
            (not (on crate0 depot2-2-1))))
    (preference P7A 
        (or (not (on crate4 depot2-1-1))
            (not (on crate0 depot2-1-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-2))
            (not (on crate0 depot1-2-1))))
    (preference P7A 
        (or (not (on crate4 depot1-2-2))
            (not (on crate0 depot1-1-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-1))
            (not (on crate0 depot1-2-2))))
    (preference P7A 
        (or (not (on crate4 depot1-2-1))
            (not (on crate0 depot1-1-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-2))
            (not (on crate0 depot1-2-2))))
    (preference P7A 
        (or (not (on crate4 depot1-1-2))
            (not (on crate0 depot1-1-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-1))
            (not (on crate0 depot1-2-1))))
    (preference P7A 
        (or (not (on crate4 depot1-1-1))
            (not (on crate0 depot1-1-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-2))
            (not (on crate0 depot0-2-1))))
    (preference P7A 
        (or (not (on crate4 depot0-2-2))
            (not (on crate0 depot0-1-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-1))
            (not (on crate0 depot0-2-2))))
    (preference P7A 
        (or (not (on crate4 depot0-2-1))
            (not (on crate0 depot0-1-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-2))
            (not (on crate0 depot0-2-2))))
    (preference P7A 
        (or (not (on crate4 depot0-1-2))
            (not (on crate0 depot0-1-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-1))
            (not (on crate0 depot0-2-1))))
    (preference P7A 
        (or (not (on crate4 depot0-1-1))
            (not (on crate0 depot0-1-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-2))
            (not (on crate2 depot3-2-1))))
    (preference P7A 
        (or (not (on crate3 depot3-2-2))
            (not (on crate2 depot3-1-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-1))
            (not (on crate2 depot3-2-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-1))
            (not (on crate2 depot3-1-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-2))
            (not (on crate2 depot3-2-2))))
    (preference P7A 
        (or (not (on crate3 depot3-1-2))
            (not (on crate2 depot3-1-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-1))
            (not (on crate2 depot3-2-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-1))
            (not (on crate2 depot3-1-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-2))
            (not (on crate2 depot2-2-1))))
    (preference P7A 
        (or (not (on crate3 depot2-2-2))
            (not (on crate2 depot2-1-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-1))
            (not (on crate2 depot2-2-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-1))
            (not (on crate2 depot2-1-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-2))
            (not (on crate2 depot2-2-2))))
    (preference P7A 
        (or (not (on crate3 depot2-1-2))
            (not (on crate2 depot2-1-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-1))
            (not (on crate2 depot2-2-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-1))
            (not (on crate2 depot2-1-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-2))
            (not (on crate2 depot1-2-1))))
    (preference P7A 
        (or (not (on crate3 depot1-2-2))
            (not (on crate2 depot1-1-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-1))
            (not (on crate2 depot1-2-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-1))
            (not (on crate2 depot1-1-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-2))
            (not (on crate2 depot1-2-2))))
    (preference P7A 
        (or (not (on crate3 depot1-1-2))
            (not (on crate2 depot1-1-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-1))
            (not (on crate2 depot1-2-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-1))
            (not (on crate2 depot1-1-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-2))
            (not (on crate2 depot0-2-1))))
    (preference P7A 
        (or (not (on crate3 depot0-2-2))
            (not (on crate2 depot0-1-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-1))
            (not (on crate2 depot0-2-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-1))
            (not (on crate2 depot0-1-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-2))
            (not (on crate2 depot0-2-2))))
    (preference P7A 
        (or (not (on crate3 depot0-1-2))
            (not (on crate2 depot0-1-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-1))
            (not (on crate2 depot0-2-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-1))
            (not (on crate2 depot0-1-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-2))
            (not (on crate1 depot3-2-1))))
    (preference P7A 
        (or (not (on crate3 depot3-2-2))
            (not (on crate1 depot3-1-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-1))
            (not (on crate1 depot3-2-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-1))
            (not (on crate1 depot3-1-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-2))
            (not (on crate1 depot3-2-2))))
    (preference P7A 
        (or (not (on crate3 depot3-1-2))
            (not (on crate1 depot3-1-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-1))
            (not (on crate1 depot3-2-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-1))
            (not (on crate1 depot3-1-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-2))
            (not (on crate1 depot2-2-1))))
    (preference P7A 
        (or (not (on crate3 depot2-2-2))
            (not (on crate1 depot2-1-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-1))
            (not (on crate1 depot2-2-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-1))
            (not (on crate1 depot2-1-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-2))
            (not (on crate1 depot2-2-2))))
    (preference P7A 
        (or (not (on crate3 depot2-1-2))
            (not (on crate1 depot2-1-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-1))
            (not (on crate1 depot2-2-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-1))
            (not (on crate1 depot2-1-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-2))
            (not (on crate1 depot1-2-1))))
    (preference P7A 
        (or (not (on crate3 depot1-2-2))
            (not (on crate1 depot1-1-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-1))
            (not (on crate1 depot1-2-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-1))
            (not (on crate1 depot1-1-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-2))
            (not (on crate1 depot1-2-2))))
    (preference P7A 
        (or (not (on crate3 depot1-1-2))
            (not (on crate1 depot1-1-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-1))
            (not (on crate1 depot1-2-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-1))
            (not (on crate1 depot1-1-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-2))
            (not (on crate1 depot0-2-1))))
    (preference P7A 
        (or (not (on crate3 depot0-2-2))
            (not (on crate1 depot0-1-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-1))
            (not (on crate1 depot0-2-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-1))
            (not (on crate1 depot0-1-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-2))
            (not (on crate1 depot0-2-2))))
    (preference P7A 
        (or (not (on crate3 depot0-1-2))
            (not (on crate1 depot0-1-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-1))
            (not (on crate1 depot0-2-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-1))
            (not (on crate1 depot0-1-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-2))
            (not (on crate0 depot3-2-1))))
    (preference P7A 
        (or (not (on crate3 depot3-2-2))
            (not (on crate0 depot3-1-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-1))
            (not (on crate0 depot3-2-2))))
    (preference P7A 
        (or (not (on crate3 depot3-2-1))
            (not (on crate0 depot3-1-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-2))
            (not (on crate0 depot3-2-2))))
    (preference P7A 
        (or (not (on crate3 depot3-1-2))
            (not (on crate0 depot3-1-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-1))
            (not (on crate0 depot3-2-1))))
    (preference P7A 
        (or (not (on crate3 depot3-1-1))
            (not (on crate0 depot3-1-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-2))
            (not (on crate0 depot2-2-1))))
    (preference P7A 
        (or (not (on crate3 depot2-2-2))
            (not (on crate0 depot2-1-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-1))
            (not (on crate0 depot2-2-2))))
    (preference P7A 
        (or (not (on crate3 depot2-2-1))
            (not (on crate0 depot2-1-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-2))
            (not (on crate0 depot2-2-2))))
    (preference P7A 
        (or (not (on crate3 depot2-1-2))
            (not (on crate0 depot2-1-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-1))
            (not (on crate0 depot2-2-1))))
    (preference P7A 
        (or (not (on crate3 depot2-1-1))
            (not (on crate0 depot2-1-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-2))
            (not (on crate0 depot1-2-1))))
    (preference P7A 
        (or (not (on crate3 depot1-2-2))
            (not (on crate0 depot1-1-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-1))
            (not (on crate0 depot1-2-2))))
    (preference P7A 
        (or (not (on crate3 depot1-2-1))
            (not (on crate0 depot1-1-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-2))
            (not (on crate0 depot1-2-2))))
    (preference P7A 
        (or (not (on crate3 depot1-1-2))
            (not (on crate0 depot1-1-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-1))
            (not (on crate0 depot1-2-1))))
    (preference P7A 
        (or (not (on crate3 depot1-1-1))
            (not (on crate0 depot1-1-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-2))
            (not (on crate0 depot0-2-1))))
    (preference P7A 
        (or (not (on crate3 depot0-2-2))
            (not (on crate0 depot0-1-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-1))
            (not (on crate0 depot0-2-2))))
    (preference P7A 
        (or (not (on crate3 depot0-2-1))
            (not (on crate0 depot0-1-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-2))
            (not (on crate0 depot0-2-2))))
    (preference P7A 
        (or (not (on crate3 depot0-1-2))
            (not (on crate0 depot0-1-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-1))
            (not (on crate0 depot0-2-1))))
    (preference P7A 
        (or (not (on crate3 depot0-1-1))
            (not (on crate0 depot0-1-2))))
    (preference P7A 
        (or (not (on crate2 depot3-2-2))
            (not (on crate4 depot3-2-1))))
    (preference P7A 
        (or (not (on crate2 depot3-2-2))
            (not (on crate4 depot3-1-2))))
    (preference P7A 
        (or (not (on crate2 depot3-2-1))
            (not (on crate4 depot3-2-2))))
    (preference P7A 
        (or (not (on crate2 depot3-2-1))
            (not (on crate4 depot3-1-1))))
    (preference P7A 
        (or (not (on crate2 depot3-1-2))
            (not (on crate4 depot3-2-2))))
    (preference P7A 
        (or (not (on crate2 depot3-1-2))
            (not (on crate4 depot3-1-1))))
    (preference P7A 
        (or (not (on crate2 depot3-1-1))
            (not (on crate4 depot3-2-1))))
    (preference P7A 
        (or (not (on crate2 depot3-1-1))
            (not (on crate4 depot3-1-2))))
    (preference P7A 
        (or (not (on crate2 depot2-2-2))
            (not (on crate4 depot2-2-1))))
    (preference P7A 
        (or (not (on crate2 depot2-2-2))
            (not (on crate4 depot2-1-2))))
    (preference P7A 
        (or (not (on crate2 depot2-2-1))
            (not (on crate4 depot2-2-2))))
    (preference P7A 
        (or (not (on crate2 depot2-2-1))
            (not (on crate4 depot2-1-1))))
    (preference P7A 
        (or (not (on crate2 depot2-1-2))
            (not (on crate4 depot2-2-2))))
    (preference P7A 
        (or (not (on crate2 depot2-1-2))
            (not (on crate4 depot2-1-1))))
    (preference P7A 
        (or (not (on crate2 depot2-1-1))
            (not (on crate4 depot2-2-1))))
    (preference P7A 
        (or (not (on crate2 depot2-1-1))
            (not (on crate4 depot2-1-2))))
    (preference P7A 
        (or (not (on crate2 depot1-2-2))
            (not (on crate4 depot1-2-1))))
    (preference P7A 
        (or (not (on crate2 depot1-2-2))
            (not (on crate4 depot1-1-2))))
    (preference P7A 
        (or (not (on crate2 depot1-2-1))
            (not (on crate4 depot1-2-2))))
    (preference P7A 
        (or (not (on crate2 depot1-2-1))
            (not (on crate4 depot1-1-1))))
    (preference P7A 
        (or (not (on crate2 depot1-1-2))
            (not (on crate4 depot1-2-2))))
    (preference P7A 
        (or (not (on crate2 depot1-1-2))
            (not (on crate4 depot1-1-1))))
    (preference P7A 
        (or (not (on crate2 depot1-1-1))
            (not (on crate4 depot1-2-1))))
    (preference P7A 
        (or (not (on crate2 depot1-1-1))
            (not (on crate4 depot1-1-2))))
    (preference P7A 
        (or (not (on crate2 depot0-2-2))
            (not (on crate4 depot0-2-1))))
    (preference P7A 
        (or (not (on crate2 depot0-2-2))
            (not (on crate4 depot0-1-2))))
    (preference P7A 
        (or (not (on crate2 depot0-2-1))
            (not (on crate4 depot0-2-2))))
    (preference P7A 
        (or (not (on crate2 depot0-2-1))
            (not (on crate4 depot0-1-1))))
    (preference P7A 
        (or (not (on crate2 depot0-1-2))
            (not (on crate4 depot0-2-2))))
    (preference P7A 
        (or (not (on crate2 depot0-1-2))
            (not (on crate4 depot0-1-1))))
    (preference P7A 
        (or (not (on crate2 depot0-1-1))
            (not (on crate4 depot0-2-1))))
    (preference P7A 
        (or (not (on crate2 depot0-1-1))
            (not (on crate4 depot0-1-2))))
    (preference P7A 
        (or (not (on crate2 depot3-2-2))
            (not (on crate3 depot3-2-1))))
    (preference P7A 
        (or (not (on crate2 depot3-2-2))
            (not (on crate3 depot3-1-2))))
    (preference P7A 
        (or (not (on crate2 depot3-2-1))
            (not (on crate3 depot3-2-2))))
    (preference P7A 
        (or (not (on crate2 depot3-2-1))
            (not (on crate3 depot3-1-1))))
    (preference P7A 
        (or (not (on crate2 depot3-1-2))
            (not (on crate3 depot3-2-2))))
    (preference P7A 
        (or (not (on crate2 depot3-1-2))
            (not (on crate3 depot3-1-1))))
    (preference P7A 
        (or (not (on crate2 depot3-1-1))
            (not (on crate3 depot3-2-1))))
    (preference P7A 
        (or (not (on crate2 depot3-1-1))
            (not (on crate3 depot3-1-2))))
    (preference P7A 
        (or (not (on crate2 depot2-2-2))
            (not (on crate3 depot2-2-1))))
    (preference P7A 
        (or (not (on crate2 depot2-2-2))
            (not (on crate3 depot2-1-2))))
    (preference P7A 
        (or (not (on crate2 depot2-2-1))
            (not (on crate3 depot2-2-2))))
    (preference P7A 
        (or (not (on crate2 depot2-2-1))
            (not (on crate3 depot2-1-1))))
    (preference P7A 
        (or (not (on crate2 depot2-1-2))
            (not (on crate3 depot2-2-2))))
    (preference P7A 
        (or (not (on crate2 depot2-1-2))
            (not (on crate3 depot2-1-1))))
    (preference P7A 
        (or (not (on crate2 depot2-1-1))
            (not (on crate3 depot2-2-1))))
    (preference P7A 
        (or (not (on crate2 depot2-1-1))
            (not (on crate3 depot2-1-2))))
    (preference P7A 
        (or (not (on crate2 depot1-2-2))
            (not (on crate3 depot1-2-1))))
    (preference P7A 
        (or (not (on crate2 depot1-2-2))
            (not (on crate3 depot1-1-2))))
    (preference P7A 
        (or (not (on crate2 depot1-2-1))
            (not (on crate3 depot1-2-2))))
    (preference P7A 
        (or (not (on crate2 depot1-2-1))
            (not (on crate3 depot1-1-1))))
    (preference P7A 
        (or (not (on crate2 depot1-1-2))
            (not (on crate3 depot1-2-2))))
    (preference P7A 
        (or (not (on crate2 depot1-1-2))
            (not (on crate3 depot1-1-1))))
    (preference P7A 
        (or (not (on crate2 depot1-1-1))
            (not (on crate3 depot1-2-1))))
    (preference P7A 
        (or (not (on crate2 depot1-1-1))
            (not (on crate3 depot1-1-2))))
    (preference P7A 
        (or (not (on crate2 depot0-2-2))
            (not (on crate3 depot0-2-1))))
    (preference P7A 
        (or (not (on crate2 depot0-2-2))
            (not (on crate3 depot0-1-2))))
    (preference P7A 
        (or (not (on crate2 depot0-2-1))
            (not (on crate3 depot0-2-2))))
    (preference P7A 
        (or (not (on crate2 depot0-2-1))
            (not (on crate3 depot0-1-1))))
    (preference P7A 
        (or (not (on crate2 depot0-1-2))
            (not (on crate3 depot0-2-2))))
    (preference P7A 
        (or (not (on crate2 depot0-1-2))
            (not (on crate3 depot0-1-1))))
    (preference P7A 
        (or (not (on crate2 depot0-1-1))
            (not (on crate3 depot0-2-1))))
    (preference P7A 
        (or (not (on crate2 depot0-1-1))
            (not (on crate3 depot0-1-2))))
    (preference P7A 
        (or (not (on crate1 depot3-2-2))
            (not (on crate4 depot3-2-1))))
    (preference P7A 
        (or (not (on crate1 depot3-2-2))
            (not (on crate4 depot3-1-2))))
    (preference P7A 
        (or (not (on crate1 depot3-2-1))
            (not (on crate4 depot3-2-2))))
    (preference P7A 
        (or (not (on crate1 depot3-2-1))
            (not (on crate4 depot3-1-1))))
    (preference P7A 
        (or (not (on crate1 depot3-1-2))
            (not (on crate4 depot3-2-2))))
    (preference P7A 
        (or (not (on crate1 depot3-1-2))
            (not (on crate4 depot3-1-1))))
    (preference P7A 
        (or (not (on crate1 depot3-1-1))
            (not (on crate4 depot3-2-1))))
    (preference P7A 
        (or (not (on crate1 depot3-1-1))
            (not (on crate4 depot3-1-2))))
    (preference P7A 
        (or (not (on crate1 depot2-2-2))
            (not (on crate4 depot2-2-1))))
    (preference P7A 
        (or (not (on crate1 depot2-2-2))
            (not (on crate4 depot2-1-2))))
    (preference P7A 
        (or (not (on crate1 depot2-2-1))
            (not (on crate4 depot2-2-2))))
    (preference P7A 
        (or (not (on crate1 depot2-2-1))
            (not (on crate4 depot2-1-1))))
    (preference P7A 
        (or (not (on crate1 depot2-1-2))
            (not (on crate4 depot2-2-2))))
    (preference P7A 
        (or (not (on crate1 depot2-1-2))
            (not (on crate4 depot2-1-1))))
    (preference P7A 
        (or (not (on crate1 depot2-1-1))
            (not (on crate4 depot2-2-1))))
    (preference P7A 
        (or (not (on crate1 depot2-1-1))
            (not (on crate4 depot2-1-2))))
    (preference P7A 
        (or (not (on crate1 depot1-2-2))
            (not (on crate4 depot1-2-1))))
    (preference P7A 
        (or (not (on crate1 depot1-2-2))
            (not (on crate4 depot1-1-2))))
    (preference P7A 
        (or (not (on crate1 depot1-2-1))
            (not (on crate4 depot1-2-2))))
    (preference P7A 
        (or (not (on crate1 depot1-2-1))
            (not (on crate4 depot1-1-1))))
    (preference P7A 
        (or (not (on crate1 depot1-1-2))
            (not (on crate4 depot1-2-2))))
    (preference P7A 
        (or (not (on crate1 depot1-1-2))
            (not (on crate4 depot1-1-1))))
    (preference P7A 
        (or (not (on crate1 depot1-1-1))
            (not (on crate4 depot1-2-1))))
    (preference P7A 
        (or (not (on crate1 depot1-1-1))
            (not (on crate4 depot1-1-2))))
    (preference P7A 
        (or (not (on crate1 depot0-2-2))
            (not (on crate4 depot0-2-1))))
    (preference P7A 
        (or (not (on crate1 depot0-2-2))
            (not (on crate4 depot0-1-2))))
    (preference P7A 
        (or (not (on crate1 depot0-2-1))
            (not (on crate4 depot0-2-2))))
    (preference P7A 
        (or (not (on crate1 depot0-2-1))
            (not (on crate4 depot0-1-1))))
    (preference P7A 
        (or (not (on crate1 depot0-1-2))
            (not (on crate4 depot0-2-2))))
    (preference P7A 
        (or (not (on crate1 depot0-1-2))
            (not (on crate4 depot0-1-1))))
    (preference P7A 
        (or (not (on crate1 depot0-1-1))
            (not (on crate4 depot0-2-1))))
    (preference P7A 
        (or (not (on crate1 depot0-1-1))
            (not (on crate4 depot0-1-2))))
    (preference P7A 
        (or (not (on crate1 depot3-2-2))
            (not (on crate3 depot3-2-1))))
    (preference P7A 
        (or (not (on crate1 depot3-2-2))
            (not (on crate3 depot3-1-2))))
    (preference P7A 
        (or (not (on crate1 depot3-2-1))
            (not (on crate3 depot3-2-2))))
    (preference P7A 
        (or (not (on crate1 depot3-2-1))
            (not (on crate3 depot3-1-1))))
    (preference P7A 
        (or (not (on crate1 depot3-1-2))
            (not (on crate3 depot3-2-2))))
    (preference P7A 
        (or (not (on crate1 depot3-1-2))
            (not (on crate3 depot3-1-1))))
    (preference P7A 
        (or (not (on crate1 depot3-1-1))
            (not (on crate3 depot3-2-1))))
    (preference P7A 
        (or (not (on crate1 depot3-1-1))
            (not (on crate3 depot3-1-2))))
    (preference P7A 
        (or (not (on crate1 depot2-2-2))
            (not (on crate3 depot2-2-1))))
    (preference P7A 
        (or (not (on crate1 depot2-2-2))
            (not (on crate3 depot2-1-2))))
    (preference P7A 
        (or (not (on crate1 depot2-2-1))
            (not (on crate3 depot2-2-2))))
    (preference P7A 
        (or (not (on crate1 depot2-2-1))
            (not (on crate3 depot2-1-1))))
    (preference P7A 
        (or (not (on crate1 depot2-1-2))
            (not (on crate3 depot2-2-2))))
    (preference P7A 
        (or (not (on crate1 depot2-1-2))
            (not (on crate3 depot2-1-1))))
    (preference P7A 
        (or (not (on crate1 depot2-1-1))
            (not (on crate3 depot2-2-1))))
    (preference P7A 
        (or (not (on crate1 depot2-1-1))
            (not (on crate3 depot2-1-2))))
    (preference P7A 
        (or (not (on crate1 depot1-2-2))
            (not (on crate3 depot1-2-1))))
    (preference P7A 
        (or (not (on crate1 depot1-2-2))
            (not (on crate3 depot1-1-2))))
    (preference P7A 
        (or (not (on crate1 depot1-2-1))
            (not (on crate3 depot1-2-2))))
    (preference P7A 
        (or (not (on crate1 depot1-2-1))
            (not (on crate3 depot1-1-1))))
    (preference P7A 
        (or (not (on crate1 depot1-1-2))
            (not (on crate3 depot1-2-2))))
    (preference P7A 
        (or (not (on crate1 depot1-1-2))
            (not (on crate3 depot1-1-1))))
    (preference P7A 
        (or (not (on crate1 depot1-1-1))
            (not (on crate3 depot1-2-1))))
    (preference P7A 
        (or (not (on crate1 depot1-1-1))
            (not (on crate3 depot1-1-2))))
    (preference P7A 
        (or (not (on crate1 depot0-2-2))
            (not (on crate3 depot0-2-1))))
    (preference P7A 
        (or (not (on crate1 depot0-2-2))
            (not (on crate3 depot0-1-2))))
    (preference P7A 
        (or (not (on crate1 depot0-2-1))
            (not (on crate3 depot0-2-2))))
    (preference P7A 
        (or (not (on crate1 depot0-2-1))
            (not (on crate3 depot0-1-1))))
    (preference P7A 
        (or (not (on crate1 depot0-1-2))
            (not (on crate3 depot0-2-2))))
    (preference P7A 
        (or (not (on crate1 depot0-1-2))
            (not (on crate3 depot0-1-1))))
    (preference P7A 
        (or (not (on crate1 depot0-1-1))
            (not (on crate3 depot0-2-1))))
    (preference P7A 
        (or (not (on crate1 depot0-1-1))
            (not (on crate3 depot0-1-2))))
    (preference P7A 
        (or (not (on crate0 depot3-2-2))
            (not (on crate4 depot3-2-1))))
    (preference P7A 
        (or (not (on crate0 depot3-2-2))
            (not (on crate4 depot3-1-2))))
    (preference P7A 
        (or (not (on crate0 depot3-2-1))
            (not (on crate4 depot3-2-2))))
    (preference P7A 
        (or (not (on crate0 depot3-2-1))
            (not (on crate4 depot3-1-1))))
    (preference P7A 
        (or (not (on crate0 depot3-1-2))
            (not (on crate4 depot3-2-2))))
    (preference P7A 
        (or (not (on crate0 depot3-1-2))
            (not (on crate4 depot3-1-1))))
    (preference P7A 
        (or (not (on crate0 depot3-1-1))
            (not (on crate4 depot3-2-1))))
    (preference P7A 
        (or (not (on crate0 depot3-1-1))
            (not (on crate4 depot3-1-2))))
    (preference P7A 
        (or (not (on crate0 depot2-2-2))
            (not (on crate4 depot2-2-1))))
    (preference P7A 
        (or (not (on crate0 depot2-2-2))
            (not (on crate4 depot2-1-2))))
    (preference P7A 
        (or (not (on crate0 depot2-2-1))
            (not (on crate4 depot2-2-2))))
    (preference P7A 
        (or (not (on crate0 depot2-2-1))
            (not (on crate4 depot2-1-1))))
    (preference P7A 
        (or (not (on crate0 depot2-1-2))
            (not (on crate4 depot2-2-2))))
    (preference P7A 
        (or (not (on crate0 depot2-1-2))
            (not (on crate4 depot2-1-1))))
    (preference P7A 
        (or (not (on crate0 depot2-1-1))
            (not (on crate4 depot2-2-1))))
    (preference P7A 
        (or (not (on crate0 depot2-1-1))
            (not (on crate4 depot2-1-2))))
    (preference P7A 
        (or (not (on crate0 depot1-2-2))
            (not (on crate4 depot1-2-1))))
    (preference P7A 
        (or (not (on crate0 depot1-2-2))
            (not (on crate4 depot1-1-2))))
    (preference P7A 
        (or (not (on crate0 depot1-2-1))
            (not (on crate4 depot1-2-2))))
    (preference P7A 
        (or (not (on crate0 depot1-2-1))
            (not (on crate4 depot1-1-1))))
    (preference P7A 
        (or (not (on crate0 depot1-1-2))
            (not (on crate4 depot1-2-2))))
    (preference P7A 
        (or (not (on crate0 depot1-1-2))
            (not (on crate4 depot1-1-1))))
    (preference P7A 
        (or (not (on crate0 depot1-1-1))
            (not (on crate4 depot1-2-1))))
    (preference P7A 
        (or (not (on crate0 depot1-1-1))
            (not (on crate4 depot1-1-2))))
    (preference P7A 
        (or (not (on crate0 depot0-2-2))
            (not (on crate4 depot0-2-1))))
    (preference P7A 
        (or (not (on crate0 depot0-2-2))
            (not (on crate4 depot0-1-2))))
    (preference P7A 
        (or (not (on crate0 depot0-2-1))
            (not (on crate4 depot0-2-2))))
    (preference P7A 
        (or (not (on crate0 depot0-2-1))
            (not (on crate4 depot0-1-1))))
    (preference P7A 
        (or (not (on crate0 depot0-1-2))
            (not (on crate4 depot0-2-2))))
    (preference P7A 
        (or (not (on crate0 depot0-1-2))
            (not (on crate4 depot0-1-1))))
    (preference P7A 
        (or (not (on crate0 depot0-1-1))
            (not (on crate4 depot0-2-1))))
    (preference P7A 
        (or (not (on crate0 depot0-1-1))
            (not (on crate4 depot0-1-2))))
    (preference P7A 
        (or (not (on crate0 depot3-2-2))
            (not (on crate3 depot3-2-1))))
    (preference P7A 
        (or (not (on crate0 depot3-2-2))
            (not (on crate3 depot3-1-2))))
    (preference P7A 
        (or (not (on crate0 depot3-2-1))
            (not (on crate3 depot3-2-2))))
    (preference P7A 
        (or (not (on crate0 depot3-2-1))
            (not (on crate3 depot3-1-1))))
    (preference P7A 
        (or (not (on crate0 depot3-1-2))
            (not (on crate3 depot3-2-2))))
    (preference P7A 
        (or (not (on crate0 depot3-1-2))
            (not (on crate3 depot3-1-1))))
    (preference P7A 
        (or (not (on crate0 depot3-1-1))
            (not (on crate3 depot3-2-1))))
    (preference P7A 
        (or (not (on crate0 depot3-1-1))
            (not (on crate3 depot3-1-2))))
    (preference P7A 
        (or (not (on crate0 depot2-2-2))
            (not (on crate3 depot2-2-1))))
    (preference P7A 
        (or (not (on crate0 depot2-2-2))
            (not (on crate3 depot2-1-2))))
    (preference P7A 
        (or (not (on crate0 depot2-2-1))
            (not (on crate3 depot2-2-2))))
    (preference P7A 
        (or (not (on crate0 depot2-2-1))
            (not (on crate3 depot2-1-1))))
    (preference P7A 
        (or (not (on crate0 depot2-1-2))
            (not (on crate3 depot2-2-2))))
    (preference P7A 
        (or (not (on crate0 depot2-1-2))
            (not (on crate3 depot2-1-1))))
    (preference P7A 
        (or (not (on crate0 depot2-1-1))
            (not (on crate3 depot2-2-1))))
    (preference P7A 
        (or (not (on crate0 depot2-1-1))
            (not (on crate3 depot2-1-2))))
    (preference P7A 
        (or (not (on crate0 depot1-2-2))
            (not (on crate3 depot1-2-1))))
    (preference P7A 
        (or (not (on crate0 depot1-2-2))
            (not (on crate3 depot1-1-2))))
    (preference P7A 
        (or (not (on crate0 depot1-2-1))
            (not (on crate3 depot1-2-2))))
    (preference P7A 
        (or (not (on crate0 depot1-2-1))
            (not (on crate3 depot1-1-1))))
    (preference P7A 
        (or (not (on crate0 depot1-1-2))
            (not (on crate3 depot1-2-2))))
    (preference P7A 
        (or (not (on crate0 depot1-1-2))
            (not (on crate3 depot1-1-1))))
    (preference P7A 
        (or (not (on crate0 depot1-1-1))
            (not (on crate3 depot1-2-1))))
    (preference P7A 
        (or (not (on crate0 depot1-1-1))
            (not (on crate3 depot1-1-2))))
    (preference P7A 
        (or (not (on crate0 depot0-2-2))
            (not (on crate3 depot0-2-1))))
    (preference P7A 
        (or (not (on crate0 depot0-2-2))
            (not (on crate3 depot0-1-2))))
    (preference P7A 
        (or (not (on crate0 depot0-2-1))
            (not (on crate3 depot0-2-2))))
    (preference P7A 
        (or (not (on crate0 depot0-2-1))
            (not (on crate3 depot0-1-1))))
    (preference P7A 
        (or (not (on crate0 depot0-1-2))
            (not (on crate3 depot0-2-2))))
    (preference P7A 
        (or (not (on crate0 depot0-1-2))
            (not (on crate3 depot0-1-1))))
    (preference P7A 
        (or (not (on crate0 depot0-1-1))
            (not (on crate3 depot0-2-1))))
    (preference P7A 
        (or (not (on crate0 depot0-1-1))
            (not (on crate3 depot0-1-2))))
    (preference P2A 
        (or (not (in crate4 depot3))
            (not (in crate2 depot3))))
    (preference P2A 
        (or (not (in crate4 depot2))
            (not (in crate2 depot2))))
    (preference P2A 
        (or (not (in crate4 depot1))
            (not (in crate2 depot1))))
    (preference P2A 
        (or (not (in crate4 depot0))
            (not (in crate2 depot0))))
    (preference P2A 
        (or (not (in crate4 depot3))
            (not (in crate1 depot3))))
    (preference P2A 
        (or (not (in crate4 depot2))
            (not (in crate1 depot2))))
    (preference P2A 
        (or (not (in crate4 depot1))
            (not (in crate1 depot1))))
    (preference P2A 
        (or (not (in crate4 depot0))
            (not (in crate1 depot0))))
    (preference P2A 
        (or (not (in crate4 depot3))
            (not (in crate0 depot3))))
    (preference P2A 
        (or (not (in crate4 depot2))
            (not (in crate0 depot2))))
    (preference P2A 
        (or (not (in crate4 depot1))
            (not (in crate0 depot1))))
    (preference P2A 
        (or (not (in crate4 depot0))
            (not (in crate0 depot0))))
    (preference P2A 
        (or (not (in crate3 depot3))
            (not (in crate2 depot3))))
    (preference P2A 
        (or (not (in crate3 depot2))
            (not (in crate2 depot2))))
    (preference P2A 
        (or (not (in crate3 depot1))
            (not (in crate2 depot1))))
    (preference P2A 
        (or (not (in crate3 depot0))
            (not (in crate2 depot0))))
    (preference P2A 
        (or (not (in crate3 depot3))
            (not (in crate1 depot3))))
    (preference P2A 
        (or (not (in crate3 depot2))
            (not (in crate1 depot2))))
    (preference P2A 
        (or (not (in crate3 depot1))
            (not (in crate1 depot1))))
    (preference P2A 
        (or (not (in crate3 depot0))
            (not (in crate1 depot0))))
    (preference P2A 
        (or (not (in crate3 depot3))
            (not (in crate0 depot3))))
    (preference P2A 
        (or (not (in crate3 depot2))
            (not (in crate0 depot2))))
    (preference P2A 
        (or (not (in crate3 depot1))
            (not (in crate0 depot1))))
    (preference P2A 
        (or (not (in crate3 depot0))
            (not (in crate0 depot0))))
    (preference P2A 
        (or (not (in crate2 depot3))
            (not (in crate4 depot3))))
    (preference P2A 
        (or (not (in crate2 depot2))
            (not (in crate4 depot2))))
    (preference P2A 
        (or (not (in crate2 depot1))
            (not (in crate4 depot1))))
    (preference P2A 
        (or (not (in crate2 depot0))
            (not (in crate4 depot0))))
    (preference P2A 
        (or (not (in crate2 depot3))
            (not (in crate3 depot3))))
    (preference P2A 
        (or (not (in crate2 depot2))
            (not (in crate3 depot2))))
    (preference P2A 
        (or (not (in crate2 depot1))
            (not (in crate3 depot1))))
    (preference P2A 
        (or (not (in crate2 depot0))
            (not (in crate3 depot0))))
    (preference P2A 
        (or (not (in crate1 depot3))
            (not (in crate4 depot3))))
    (preference P2A 
        (or (not (in crate1 depot2))
            (not (in crate4 depot2))))
    (preference P2A 
        (or (not (in crate1 depot1))
            (not (in crate4 depot1))))
    (preference P2A 
        (or (not (in crate1 depot0))
            (not (in crate4 depot0))))
    (preference P2A 
        (or (not (in crate1 depot3))
            (not (in crate3 depot3))))
    (preference P2A 
        (or (not (in crate1 depot2))
            (not (in crate3 depot2))))
    (preference P2A 
        (or (not (in crate1 depot1))
            (not (in crate3 depot1))))
    (preference P2A 
        (or (not (in crate1 depot0))
            (not (in crate3 depot0))))
    (preference P2A 
        (or (not (in crate0 depot3))
            (not (in crate4 depot3))))
    (preference P2A 
        (or (not (in crate0 depot2))
            (not (in crate4 depot2))))
    (preference P2A 
        (or (not (in crate0 depot1))
            (not (in crate4 depot1))))
    (preference P2A 
        (or (not (in crate0 depot0))
            (not (in crate4 depot0))))
    (preference P2A 
        (or (not (in crate0 depot3))
            (not (in crate3 depot3))))
    (preference P2A 
        (or (not (in crate0 depot2))
            (not (in crate3 depot2))))
    (preference P2A 
        (or (not (in crate0 depot1))
            (not (in crate3 depot1))))
    (preference P2A 
        (or (not (in crate0 depot0))
            (not (in crate3 depot0))))
    (preference P12B 
        (or (at hoist1 depot0-1-1)
            (at hoist1 depot0-1-2)
            (at hoist1 depot0-2-1)
            (at hoist1 depot0-2-2)
            (at hoist1 depot1-1-1)
            (at hoist1 depot1-1-2)
            (at hoist1 depot1-2-1)
            (at hoist1 depot1-2-2)
            (at hoist1 depot2-1-1)
            (at hoist1 depot2-1-2)
            (at hoist1 depot2-2-1)
            (at hoist1 depot2-2-2)))
    (preference P12B 
        (or (at hoist0 depot0-1-1)
            (at hoist0 depot0-1-2)
            (at hoist0 depot0-2-1)
            (at hoist0 depot0-2-2)
            (at hoist0 depot1-1-1)
            (at hoist0 depot1-1-2)
            (at hoist0 depot1-2-1)
            (at hoist0 depot1-2-2)
            (at hoist0 depot2-1-1)
            (at hoist0 depot2-1-2)
            (at hoist0 depot2-2-1)
            (at hoist0 depot2-2-2)))
    (preference P8B 
        (or (at hoist1 depot0-1-1)
            (at hoist1 depot0-1-2)
            (at hoist1 depot0-2-1)
            (at hoist1 depot0-2-2)
            (at hoist1 depot1-1-1)
            (at hoist1 depot1-1-2)
            (at hoist1 depot1-2-1)
            (at hoist1 depot1-2-2)
            (at hoist1 depot3-1-1)
            (at hoist1 depot3-1-2)
            (at hoist1 depot3-2-1)
            (at hoist1 depot3-2-2)))
    (preference P8B 
        (or (at hoist0 depot0-1-1)
            (at hoist0 depot0-1-2)
            (at hoist0 depot0-2-1)
            (at hoist0 depot0-2-2)
            (at hoist0 depot1-1-1)
            (at hoist0 depot1-1-2)
            (at hoist0 depot1-2-1)
            (at hoist0 depot1-2-2)
            (at hoist0 depot3-1-1)
            (at hoist0 depot3-1-2)
            (at hoist0 depot3-2-1)
            (at hoist0 depot3-2-2)))
    (preference P4B 
        (or (at hoist1 depot0-1-1)
            (at hoist1 depot0-1-2)
            (at hoist1 depot0-2-1)
            (at hoist1 depot0-2-2)
            (at hoist1 depot2-1-1)
            (at hoist1 depot2-1-2)
            (at hoist1 depot2-2-1)
            (at hoist1 depot2-2-2)
            (at hoist1 depot3-1-1)
            (at hoist1 depot3-1-2)
            (at hoist1 depot3-2-1)
            (at hoist1 depot3-2-2)))
    (preference P4B 
        (or (at hoist0 depot0-1-1)
            (at hoist0 depot0-1-2)
            (at hoist0 depot0-2-1)
            (at hoist0 depot0-2-2)
            (at hoist0 depot2-1-1)
            (at hoist0 depot2-1-2)
            (at hoist0 depot2-2-1)
            (at hoist0 depot2-2-2)
            (at hoist0 depot3-1-1)
            (at hoist0 depot3-1-2)
            (at hoist0 depot3-2-1)
            (at hoist0 depot3-2-2)))
    (preference P12A 
        (or (in crate4 depot0)
            (in crate4 depot1)
            (in crate4 depot2)))
    (preference P12A 
        (or (in crate3 depot0)
            (in crate3 depot1)
            (in crate3 depot2)))
    (preference P12A 
        (or (in crate2 depot0)
            (in crate2 depot1)
            (in crate2 depot2)))
    (preference P12A 
        (or (in crate1 depot0)
            (in crate1 depot1)
            (in crate1 depot2)))
    (preference P12A 
        (or (in crate0 depot0)
            (in crate0 depot1)
            (in crate0 depot2)))
    (preference P8A 
        (or (in crate4 depot0)
            (in crate4 depot1)
            (in crate4 depot3)))
    (preference P8A 
        (or (in crate3 depot0)
            (in crate3 depot1)
            (in crate3 depot3)))
    (preference P8A 
        (or (in crate2 depot0)
            (in crate2 depot1)
            (in crate2 depot3)))
    (preference P8A 
        (or (in crate1 depot0)
            (in crate1 depot1)
            (in crate1 depot3)))
    (preference P8A 
        (or (in crate0 depot0)
            (in crate0 depot1)
            (in crate0 depot3)))
    (preference P4A 
        (or (in crate4 depot0)
            (in crate4 depot2)
            (in crate4 depot3)))
    (preference P4A 
        (or (in crate3 depot0)
            (in crate3 depot2)
            (in crate3 depot3)))
    (preference P4A 
        (or (in crate2 depot0)
            (in crate2 depot2)
            (in crate2 depot3)))
    (preference P4A 
        (or (in crate1 depot0)
            (in crate1 depot2)
            (in crate1 depot3)))
    (preference P4A 
        (or (in crate0 depot0)
            (in crate0 depot2)
            (in crate0 depot3)))
    (preference P1H 
        (clear depot3-2-2))
    (preference P1G 
        (clear depot3-1-1))
    (preference P3D 
        (clear depot3-2-1))
    (preference P1F 
        (clear depot2-2-1))
    (preference P1E 
        (clear depot2-1-2))
    (preference P3C 
        (clear depot2-2-2))
    (preference P1D 
        (clear depot1-2-2))
    (preference P1C 
        (clear depot1-1-1))
    (preference P3B 
        (clear depot1-2-1))
    (preference P1B 
        (clear depot0-2-1))
    (preference P1A 
        (clear depot0-1-2))
    (preference P3A 
        (clear depot0-2-2))
))
(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 2 (is-violated p2A))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 3 (is-violated p3C))
		     (* 3 (is-violated p3D))
		     (* 3 (is-violated p3E))
		     (* 4 (is-violated p4A))
		     (* 4 (is-violated p4B))
		     (* 7 (is-violated p7A))
		     (* 8 (is-violated p8A))
		     (* 8 (is-violated p8B))
		     (* 12 (is-violated p12A))
		     (* 12 (is-violated p12B))))
)
