#
# cmake/reflect/_Libraries.cmake is generated by `mulle-sde reflect`. Edits will be lost.
# Disable generation of this file with:
#   mulle-sde environment  --global set MULLE_SOURCETREE_TO_CMAKE_LIBRARIES_FILE DISABLE

if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: stdthreads;no-all-load,no-build,no-cmakeinherit,no-delete,no-dependency,no-fs,no-import,no-share,no-update,only-os-freebsd;
# Disable with: `mulle-sourcetree mark stdthreads `
#
if( ${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")
   if( NOT STDTHREADS_LIBRARY)
      find_library( STDTHREADS_LIBRARY NAMES stdthreads)
      message( STATUS "STDTHREADS_LIBRARY is ${STDTHREADS_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( STDTHREADS_LIBRARY)
         #
         # Add STDTHREADS_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark stdthreads no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${STDTHREADS_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         # intentionally left blank
      else()
         message( FATAL_ERROR "STDTHREADS_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: pthread;no-all-load,no-build,no-delete,no-dependency,no-fs,no-import,no-os-android,no-os-mingw,no-update;pthreads,pthread
# Disable with: `mulle-sourcetree mark pthread `
#
if( NOT (${CMAKE_SYSTEM_NAME} MATCHES "Android" OR ${CMAKE_SYSTEM_NAME} MATCHES "Windows"))
   if( NOT PTHREADS_LIBRARY)
      find_library( PTHREADS_LIBRARY NAMES pthreads pthread)
      message( STATUS "PTHREADS_LIBRARY is ${PTHREADS_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( PTHREADS_LIBRARY)
         #
         # Add PTHREADS_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark pthread no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${PTHREADS_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark pthread no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_PTHREADS_ROOT "${PTHREADS_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_PTHREADS_ROOT "${_TMP_PTHREADS_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark pthread no-cmakedependency`
         #
         foreach( _TMP_PTHREADS_NAME "pthreads" "pthread")
            set( _TMP_PTHREADS_DIR "${_TMP_PTHREADS_ROOT}/include/${_TMP_PTHREADS_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_PTHREADS_DIR}/DependenciesAndLibraries.cmake")
               unset( PTHREADS_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_PTHREADS_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_PTHREADS_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_PTHREADS_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${PTHREADS_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_PTHREADS_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "PTHREADS_LIBRARY was not found")
      endif()
   endif()
endif()