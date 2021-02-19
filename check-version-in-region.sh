#!/bin/bash
export region=$1
export version=$2
export result=$(az aks get-versions -l ${region} --query "orchestrators[?contains(orchestratorVersion,'${version}')]")

if [ $result != "[]" ];
then exit 1 ;
fi
