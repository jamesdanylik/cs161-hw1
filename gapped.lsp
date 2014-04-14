(setq SENT3-GAPPED '(THROW AGENT AG001
       OBJECT OBJ001
       INTO (CONTAINER SHAPE (CYLINDRICAL)
                       FOR (TRASH)
                       REF (DEF)
                       MANNER (SECRETLY))
       EXP-VIOL EXPV001
       LOC (HOME OWNER (HUMAN F-NAME (CHARLOTTE)
                              L-NAME ( )
                              GENDER (FEMALE)))))

(setq AG001 '(HUMAN F-NAME (CHARLES)
L-NAME ( )
GENDER (MALE))
)

(setq OBJ001 '(PRINTED-MATTER TYPE (NEWSPAPER) 
                MATERIAL (PAPER) 
                INFO (STORY) 
                REF (INDEF)))

(setq EXPV001 'CON004)

(setq CON004 ' (SEE AGENT AG002
OBJECT OBJ002)
)

(setq AG002 'CON005)

(setq CON005 '(HUMAN F-NAME (CHARLOTTE)
L-NAME ( )
GENDER (FEMALE))
)

(setq OBJ002 '(HUMAN F-NAME (CHARLES)
L-NAME ( )
GENDER (MALE))
)

(setq C3 '(THROW AGENT AG001
                 OBJECT OBJ001 
                 INTO (CONTAINER SHAPE (CYLINDRICAL)
                                 FOR (TRASH)
                                 REF (DEF))
                 MANNER (SECRETLY)
                 EXP-VIOL EXPV001
                 LOC (HOME OWNER (HUMAN F-NAME (CHARLOTTE) 
                                        L-NAME ( )
                                        GENDER (FEMALE)))))
