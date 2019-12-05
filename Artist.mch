MACHINE
    Artist

SEES
    Academy_ctx

VARIABLES
    artists, rank_artist

INVARIANT
    artists : 0..size_artists >+> ARTIST &
    rank_artist : ARTIST --> RANK

INITIALISATION
    artists := {}
    || rank_artist := ARTIST * {}
    
OPERATIONS
    create_artist (aa) =
    PRE aa : ARTIST & aa /: ran(artists)
    THEN ANY xx
        WHERE xx : 0..size_artists & xx /: dom(artists)
        THEN artists(xx) := aa || rank_artist(aa) := white
        END
    END;
    
    delete_artist (aa) =
    PRE aa : ARTIST & aa : ran(artists)
    THEN artists := artists |>> {aa}
    END;

    graduate (aa) = 
    PRE aa : ran(artists) & rank_artist(aa) /= master
    THEN IF rank_artist(aa) = white
        THEN rank_artist(aa) := colour
        ELSIF rank_artist(aa) = colour
        THEN rank_artist(aa) := black
        ELSIF rank_artist(aa) = black
        THEN rank_artist(aa) := master
        END
    END
    

    
END
