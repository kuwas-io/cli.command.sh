#!/usr/bin/env sh
BPATH="$PATH" ;
BHOME="$HOME/cmd/src" ;
BITEM=(
  "a/all"
  "d/docker"
  "f/find"
  "g/gcloud"
  "g/git"
  "h/helm"
  "i/ip"
  "i/istioctl"
  "k/kubectl"
  "l/ls"
  "p/ps"
  "t/tar"
  "t/terraform"
  "v/vault"
  "x/xargs"
) ;
CITEM=(
  "echo"
  "docker"
  "find"
  "gcloud"
  "git"
  "helm"
  "ifconfig"
  "istioctl"
  "kubectl"
  "ls"
  "ps"
  "tar"
  "terraform"
  "vault"
  "xargs"
) ;

for (( i=0 ; i < ${#BITEM[@]} ; ++i )) ; do
  if which "${CITEM[i]}" > /dev/null 2>&1 ; then
    BPATH="$BHOME/${BITEM[i]}:$BPATH" ;
  fi ;
done ;

export PATH="$BPATH" ;
