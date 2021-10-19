#!/bin/bash
docker-compose up -d
for var in {1..4}
do
	docker-compose --scale ping$var=50
done

for var in {1..4}
do
	docker-compose logs ping$var
done