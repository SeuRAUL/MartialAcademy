project(MartialAcademy)

cmake_minimum_required(VERSION 2.4)

SET(MartialAcademy_SOURCES
    Academy_ctx_i.c
    Academy_i.c
    Artist_i.c
    Technique_i.c
)
SET(MartialAcademy_HEADERS
    Academy.h
    Academy_ctx.h
    Artist.h
    Technique.h
)

add_library(MartialAcademy ${MartialAcademy_SOURCES} ${MartialAcademy_HEADERS})
