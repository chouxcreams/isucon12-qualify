#! /bin/bash

for host_name in isucon12-1 isucon12-2 isucon12-3;do
    ssh $host_name "cd webapp && make log-clear" &
done
wait