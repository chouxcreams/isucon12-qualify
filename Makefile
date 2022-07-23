## サーバー内で実行するやつ
up: # コンテナ起動
	docker compose -f docker-compose-go.yml up -d

down: # コンテナ停止
	docker compose -f docker-compose-go.yml down

pull: # git pull
	git checkout master && git pull origin master

apply: # 最新を適用
	make down pull up

log-clear: # ログ消去
	echo > /var/log/mysql/mysql-slow.log && echo > /var/log/nginx/access.log

## ローカルで実行するやつ
deploy:
	bash ./go/deploy.sh
