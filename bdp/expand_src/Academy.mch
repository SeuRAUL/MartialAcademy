MACHINE
    Academy

INCLUDES
    Artist , Technique

SEES
    Academy_ctx

ABSTRACT_VARIABLES
    artist_techniques

INVARIANT
    artist_techniques : ARTIST <-> TECHNIQUE

INITIALISATION
    artist_techniques := {}

OPERATIONS
    new_artist ( aa ) =
    PRE aa : ARTIST & aa /: ran ( artists )
    THEN create_artist ( aa )
    END ;

    new_technique ( tt , rr ) =
    PRE tt : TECHNIQUE & tt /: ran ( techniques ) & rr : RANK
    THEN create_technique ( tt , rr )
    END ;

    grant_technique ( aa , tt ) =
    PRE aa : ran ( artists ) & tt : ran ( techniques ) & rank_artist ( aa ) = rank_technique ( tt )
    THEN artist_techniques := artist_techniques \/ { aa |-> tt }
    END ;

    grant_rank ( aa ) =
    PRE aa : ran ( artists ) & rank_artist ( aa ) /= master
        & ran ( { aa } <| artist_techniques ) = ran ( { rank_artist ( aa ) } <| rank_technique ~ )
    THEN graduate ( aa ) || artist_techniques := artist_techniques - ( { aa } <| artist_techniques )
    END ;

    remove_artist ( aa ) =
    PRE aa : ran ( artists )
    THEN IF { aa } <| artist_techniques /= {}
        THEN artist_techniques := artist_techniques - ( { aa } <| artist_techniques )
        END
        || delete_artist ( aa )
    END ;

    remove_technique ( tt ) =
    PRE tt : ran ( techniques )
    THEN IF tt : ran ( artist_techniques )
        THEN artist_techniques := artist_techniques - ( artist_techniques |> { tt } )
        END
        || delete_technique ( tt )
    END

END
