#!/bin/bash

envname() {
  # Find env name from arg
  envn=$1
  dir=`pwd`
  # If no args, default env is folder envn
  if [[ $envn == "+" ]]; then
    envn=${dir##*/}
  elif [[ $envn == "" ]]; then
    envn=${dir##*/}
  fi
  echo $envn
}

create() {  
  args=$@
  args=( "${args[@]/$1}" )

  name="$(envname $1)"
  echo "create $name"
  
  virtualenv $name $args
}

delete() {
  name="$(envname $1)"
  echo "delete $name"
  
  rm -rf -f $name
}

activate() {  
  name="$(envname $1)"
  echo "activate $name"
  
  source "${name}/bin/activate"
}

ARG=$@
CMD=$1
DIR=$2

if [[ $CMD == "activate" ]]; then
  activate $DIR
elif [[ $CMD == "create" ]]; then
  ARG=( "${ARG[@]/$CMD}" )
  ARG=( "${ARG[@]/$DIR}" )
  ARG=( "${ARG[@]/+}" )
  create $DIR $ARG
elif [[ $CMD == "delete" ]]; then
  delete $DIR
else
  echo "Unknown command '$CMD'"
fi

echo "done"
