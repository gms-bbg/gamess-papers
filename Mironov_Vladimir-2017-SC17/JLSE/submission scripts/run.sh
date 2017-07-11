#!/bin/bash -evx

#export ATTRS=knl_memory_mode=Flat:knl_Cluster_mode=SNC-2
#export ATTRS=knl_memory_mode=Cache:knl_Cluster_mode=SNC-2
#export ATTRS=knl_memory_mode=Hybrid:knl_Cluster_mode=SNC-2

#export ATTRS=knl_memory_mode=Flat:knl_Cluster_mode=SNC-4
#export ATTRS=knl_memory_mode=Cache:knl_Cluster_mode=SNC-4
#export ATTRS=knl_memory_mode=Hybrid:knl_Cluster_mode=SNC-4

#export ATTRS=knl_memory_mode=Flat:knl_Cluster_mode=Quadrant
export ATTRS=knl_memory_mode=Cache:knl_Cluster_mode=Quadrant
#export ATTRS=knl_memory_mode=Hybrid:knl_Cluster_mode=Quadrant

qsub --attrs $ATTRS ./script.sh 2nm.6-31Gd.inp 4 64
