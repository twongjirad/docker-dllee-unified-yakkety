FROM ubuntu:16.10

FROM twongjirad/dllee-deps-yakkety

# ROOT
ENV ROOTSYS /usr/local

# DL CODE
ENV DLLEE_UNIFIED_BASEDIR /opt/dllee_unified

# BUILD DL LEE CODE
RUN mkdir -p /opt/ && cd /opt/ && \
    	    git clone https://github.com/LArbys/dllee_unified dllee_unified && cd /opt/dllee_unified && git submodule init && git submodule update && \
	    /bin/bash -c "export ROOTSYS=/usr/local && export DLLEE_UNIFIED_BASEDIR=/opt/dllee_unified && source build.sh"

COPY uboone_photon_library_v6_efield.root /opt/dllee_unified/larlite/UserDev/SelectionTool/OpT0Finder/PhotonLibrary/dat/