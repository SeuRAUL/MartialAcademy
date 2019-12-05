MACHINE
    Academy_ctx

SETS
    ARTIST;
    TECHNIQUE;
    RANK = {white, colour, black, master}

CONSTANTS
    size_artists, size_techniques

PROPERTIES
    size_artists : NAT1 & size_artists > 1 &
    size_techniques : NAT1 & size_techniques > 1
    
END
