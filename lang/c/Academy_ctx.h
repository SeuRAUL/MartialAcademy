#ifndef _Academy_ctx_h
#define _Academy_ctx_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Academy_ctx__ARTIST__max Academy_ctx__size_artists
#define Academy_ctx__TECHNIQUE__max Academy_ctx__size_techniques
/* Clause SETS */
typedef int Academy_ctx__ARTIST;
typedef int Academy_ctx__TECHNIQUE;
typedef enum
{
    Academy_ctx__white,
    Academy_ctx__colour,
    Academy_ctx__black,
    Academy_ctx__master
    
} Academy_ctx__RANK;
#define Academy_ctx__RANK__max 4

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define Academy_ctx__size_artists 50
#define Academy_ctx__size_techniques 25
/* Array and record constants */


extern void Academy_ctx__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Academy_ctx_h */
