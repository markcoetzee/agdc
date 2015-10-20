#!/bin/bash

# ===============================================================================
# Copyright 2015 Geoscience Australia
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#===============================================================================

PBS_SCRIPT="$(which ndvi_statistics_arg25.pbs.sh)"

if [ $# -ne 3 ]
then
    echo "Usage is $0 <x> <y> <output directory>"
    exit -1
fi

x=$1
y=$2

outputdir="$3"

qsub -v outputdir=$outputdir,x=$x,y=$y ${PBS_SCRIPT}
