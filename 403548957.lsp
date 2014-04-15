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

(defun UNGAP-FRAME (frame)
	(if (eq frame NIL)
		NIL
		(if (boundp (car frame))
			(eval (car frame))
			)))

(defun UNGAP-SF (sfpairs accum)
	(if (eq sfpairs NIL)
		(reverse accum)
		(if (boundp (car (cdr sfpairs)))
			(UNGAP-SF (cdr (cdr sfpairs)) (cons (eval (car (cdr sfpairs))) (cons (car sfpairs) accum)))
			(UNGAP-SF (cdr (cdr sfpairs)) (cons (car (cdr sfpairs)) (cons (car sfpairs) accum))))))

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

(defun CONTAINS-SF (slot sfpairs)
	;returns T if sfpairs contains slot at top level
	;returns NIL otherwise
	(if (eq sfpairs NIL)
		NIL
		(progn 
			(if (eq (car sfpairs) slot)
				T
				(CONTAINS-SF slot (cdr (cdr sfpairs)))))))

(defun ADD-SF (slot filler frame)
	;problem 4 - DONE. 
	(let ((oldfill (CONTAINS-SF slot (cdr frame))))
		(if (eq oldfill NIL) 
			(append (append frame (list slot)) (list filler))
			(cons (car frame) (REPLACE-SF slot filler (cdr frame) NIL))
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

