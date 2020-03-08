#!/usr/bin/env csh

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if ( $?PROJ_LIB ) then
  setenv _CONDA_SET_PROJ_LIB "$PROJ_LIB"
endif

if ( -d "${CONDA_PREFIX}/share/proj" ) then
  setenv PROJ_LIB "${CONDA_PREFIX}/share/proj"
else if ( -d "${CONDA_PREFIX}/Library/share/proj" ) then
  setenv PROJ_LIB "${CONDA_PREFIX}/Library/share/proj"
endif

setenv PROJ_NETWORK "ON"
