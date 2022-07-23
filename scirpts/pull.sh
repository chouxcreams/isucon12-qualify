#! /bin/bash

for host_name in isucon12-1 isucon12-2 isucon12-3;do
    echo $host_name
    ssh $host_name "cd webapp && make pull" &
done
wait

echo "Finished pull"
