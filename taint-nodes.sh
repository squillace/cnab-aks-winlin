#!/bin/bash

kubectl get nodes -l beta.kubernetes.io/os=windows -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}'  | xargs -I XX kubectl taint nodes XX windows=true:NoSchedule