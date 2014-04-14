(defun PRED-SEARCH (slot sfpairs)
	; this function isn't hw, just a helper for FILLER
	(if (eq sfpairs NIL)
		NIL
		(progn 
			(if (eq (car sfpairs) slot)
				(car (cdr sfpairs))
				(PRED-SEARCH slot (cdr (cdr sfpairs)))))))

(defun FILLER (slot frame)
	; takes a frame and returns the filler of slot.
	; if slot does't exist, then return NIL
	(if (eq frame NIL)
		NIL
		(PRED-SEARCH slot (cdr frame))))

(defun PATH-SL (slots concept)
	;code here
	)

(defun UNGAP (atom)
	;code here
	)

(defun ADD-SF (slot filler frame)
	;code here
	)

(defun SAME-SF (frame1 frame2)
	;code here
	)

