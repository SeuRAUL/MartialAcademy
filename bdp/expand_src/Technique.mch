MACHINE
    Technique

SEES
    Academy_ctx

ABSTRACT_VARIABLES
    techniques , rank_technique

INVARIANT
    techniques : 0 .. size_techniques >+> TECHNIQUE &
    rank_technique : TECHNIQUE --> RANK

INITIALISATION
    techniques := {} ||
    rank_technique := TECHNIQUE * {}

OPERATIONS
    create_technique ( tt , rr ) =
    PRE tt : TECHNIQUE & tt /: ran ( techniques ) & rr : RANK
    THEN ANY xx
        WHERE xx : 0 .. size_techniques & xx /: dom ( techniques )
        THEN techniques ( xx ) := tt || rank_technique ( tt ) := rr
        END
    END ;

    delete_technique ( tt ) =
    PRE tt : TECHNIQUE & tt : ran ( techniques )
    THEN techniques := techniques |>> { tt }
    END

END
