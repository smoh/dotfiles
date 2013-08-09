# ================================
#
# .profile
#
# ================================



# ================================
# PYTHONPATH
# ================================
export PYTHONPATH=$PYTHONPATH:/Users/smoh/Dropbox/codelib/:/opt/sherpa-4.4.0/lib/python2.7/site-packages/:/Users/smoh/pyds9-1.3/lib/python2.7/site-packages/
export PYTHONPATH=$PYTHONPATH:/Users/smoh/Dropbox/codelib/myastro
export PYTHONPATH=$PYTHONPATH:/Users/smoh/Dropbox/codelib/matts_pythoncodes
export PYTHONPATH=$PYTHONPATH:/Users/smoh/Dropbox/codelib/pyspeckit

# PEP 370 PATH added by PyPM on 2012-01-26 23:50:09.548301
export PATH=/Users/smoh/Library/Python/2.7/bin:$PATH

# Setting PATH for EPD-7.2-2
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

# PyQt Installed through homebrew
export PYTHONPATH=$PYTHONPATH:/usr/local/Cellar/sip/4.13.2/lib/python2.7/site-packages


# SAO DS9
#export PATH=$PATH:/Users/smoh/ds9/:/Users/smoh/ds9/xpa.darwinsnowleopard.2.1.13/
export PATH=$PATH:/Users/smoh/ds9.darwinlion.7.0.2:/Users/smoh/ds9.darwinlion.7.0.2/xpa.darwinlion.2.1.14


# MACPORTS
# MacPorts Installer addition on 2012-02-22_at_17:58:57: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2012-03-10_at_12:46:15: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# IDL 8.1
. /Applications/itt/idl/idl/bin/idl_setup.bash
# IDL License Server
export LM_LICENSE_FILE=1700@147.46.19.23
# IDL Library
export IDL_PATH=":<IDL_DEFAULT>:+/Users/smoh/Dropbox/codelib/idl/"
# SDSS idlutils lib
export IDLUTILS_DIR=/Users/smoh/Dropbox/codelib/idl/idlutils
export PATH=$IDLUTILS_DIR/bin:$PATH
export IDL_PATH=+$IDLUTILS_DIR/pro:$IDL_PATH
export IDL_PATH=+$IDLUTILS_DIR/goddard/pro:$IDL_PATH

# K-correct
KCORRECT_DIR=/Users/smoh/Dropbox/codelib/idl/kcorrect
PATH=$KCORRECT_DIR/bin:$PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$KCORRECT_DIR/lib
export KCORRECT_DIR
export LD_LIBRARY_PATH
IDL_PATH=$IDL_PATH:+$KCORRECT_DIR/pro


# Homebrew
export PATH=/usr/local/bin:$PATH    # put /usr/local/bin in the front


# MacVim
export PATH=/Applications/MacVim.app/Contents/:$PATH
alias v='mvim -v'


# My custom scripts and executables
export PATH=$PATH:/Users/smoh/bin
export PATH=$PATH:/Users/smoh/Dropbox/codelib/myastro/bin/


# wxGlade
export PYTHONPATH=$PYTHONPATH:/Users/smoh/Install/wxGlade-0.6.5
export PATH=$PATH:/Users/smoh/Install/wxGlade-0.6.5

# MacTex
export PATH=$PATH:/usr/texbin/:/usr/local/bin

# Frequently visited
alias lib='cd /Users/smoh/Dropbox/codelib'

# Skim command line tool
alias skimpdf='/Applications/Skim.app/Contents/SharedSupport/skimpdf'
