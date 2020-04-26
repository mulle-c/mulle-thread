/*
*   This file will be regenerated by `mulle-sde reflect` and any edits will be
*   lost. Suppress generation of this file with:
*      mulle-sde environment --global \
*         set MULLE_SOURCETREE_TO_C_INCLUDE_FILE DISABLE
*
*   To not generate any header files:
*      mulle-sde environment --global \
*         set MULLE_SOURCETREE_TO_C_RUN DISABLE
*/

#ifndef _mulle_thread_include_h__
#define _mulle_thread_include_h__

// How to tweak the following mulle-c11 #include
//    remove:          `mulle-sourcetree mark mulle-c11 no-header`
//    rename:          `mulle-sourcetree mark mulle-c11 set include whatever.h`
//    toggle #import:  `mulle-sourcetree mark mulle-c11 [no-]import`
//    toggle public:   `mulle-sourcetree mark mulle-c11 [no-]public`
//    toggle optional: `mulle-sourcetree mark mulle-c11 [no-]require`
//    remove for os:   `mulle-sourcetree mark mulle-c11 no-os-<osname>`
# include <mulle-c11/mulle-c11.h>   // mulle-c11

// How to tweak the following stdthreads #include
//    remove:          `mulle-sourcetree mark stdthreads no-header`
//    rename:          `mulle-sourcetree mark stdthreads set include whatever.h`
//    toggle #import:  `mulle-sourcetree mark stdthreads [no-]import`
//    toggle public:   `mulle-sourcetree mark stdthreads [no-]public`
//    toggle optional: `mulle-sourcetree mark stdthreads [no-]require`
//    remove for os:   `mulle-sourcetree mark stdthreads no-os-<osname>`
# if defined( BSD4_3)
#  include <stdthreads.h>   // stdthreads
# endif

// How to tweak the following pthread #include
//    remove:          `mulle-sourcetree mark pthread no-header`
//    rename:          `mulle-sourcetree mark pthread set include whatever.h`
//    toggle #import:  `mulle-sourcetree mark pthread [no-]import`
//    toggle public:   `mulle-sourcetree mark pthread [no-]public`
//    toggle optional: `mulle-sourcetree mark pthread [no-]require`
//    remove for os:   `mulle-sourcetree mark pthread no-os-<osname>`
# if ! defined( __android__) && ! defined( _WIN32)
#  include <pthread.h>   // pthread
# endif

#endif
