#! /bin/bash
# HOST_NAMEを事前に指定する
# バイナリ名を確認、指定する
# デーモン名を確認、指定する

echo "start deploy ${USER}"
for host_name in isucon12-1 isucon12-2 isucon12-3;do
    echo $host_name
    ssh $host_name "cd webapp && make apply"
done
echo "finish deploy ${USER}"
