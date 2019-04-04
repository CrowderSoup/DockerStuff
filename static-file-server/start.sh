#!/usr/bin/env bash

function usage
{
	echo "Usage:"
	echo "./start.sh -d dir [[-p port] | [-h]]"
}

# Init variables
script=$(cd $(dirname "$0") && pwd -P)/$(basename "$0")
basename="${script%/*}"
port=8080
directory=""

while [ "$1" != "" ]; do
  case $1 in
      -p | --port )       shift
                          port=$1
                          ;;
      -d | --directory )	shift
													directory=$1
                          ;;
      -h | --help )       usage
                          exit
                          ;;
  esac
  shift
done

if [ "$directory" = "" ]; then
	echo "-d (--directory) is required!"
	exit 1;
fi

echo "Directory: $directory"
echo "Port: $port"

export DIRECTORY=$directory
export PORT=$port

docker-compose up -d
