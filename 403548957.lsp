(defun PRED-SEARCH (slot sfpairs)
	; this function isn't hw, just a helper for FILLER
	(if (eq sfpairs NIL)
		NIL
		(progn 
			(if (eq (car sfpairs) slot)
				(car (cdr sfpairs))
				(PRED-SEARCH slot (cdr (cdr sfpairs)))))))

(defun FILLER (slot frame)
	; problem 1 - DONE
	; takes a frame and returns the filler of slot.
	; if slot does't exist, then return NIL
	(if (eq frame NIL)
		NIL
		(PRED-SEARCH slot (cdr frame))))

(defun PATH-SL (slots concept)
	; problem 2 - DONE (waiting on gap fix)
	; select a slot with a path. don't call with bad data!
	; upgap first!
	(let ((result (FILLER (car slots) concept)))
		(if (eq (cdr slots) NIL)
			result
			(PATH-SL (cdr slots) result))))

(defun UNGAP (atom)
	; problem 3 - TODO
	)

(defun FRAME-CONTAINS (slot frame)
	(let (predicates (cdr frame))
		(PRED-CONTAINS slot predicates)))

(defun PRED-CONTAINS (slot preds)
	(if (eq preds NIL)
		NIL
		(progn 
			(if (eq (car preds) slot)
				'YES
				(PRED-CONTAINS slot (cdr (cdr preds)))))))

(defun ADD-SF (slot filler frame)
	;problem 4 - TODO
	(let ((oldfill (FILLER slot frame)))
		(if (eq oldfill NIL) ;problem here processesing gaps
			(append (append frame (list slot)) (list filler))
			(REPLACE-SF slot filler (cdr frame) NIL)
			)))

(defun REPLACE-SF (slot filler frame accum)
	;helper for ADD-SF
	(if (eq frame NIL)
		(reverse accum)
		(progn
			(if (eq (car frame) slot)
				(REPLACE-SF slot filler (cdr (cdr frame)) (cons filler (cons slot accum)))
				(REPLACE-SF slot filler (cdr (cdr frame)) (cons (car (cdr frame)) (cons (car frame) accum)))))))


(defun SAME-SF (frame1 frame2)
	;problem 5 - TODO
	)

