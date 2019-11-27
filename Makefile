build_pokeset:
	docker build -t pokeset pokeset/

build_pokedex:
	docker build -t pokedex app/

build:
	$(MAKE) build_pokeset
	$(MAKE) build_pokedex

run:
	docker run -d -p 3000:3000 --name pokeset_app pokeset
	docker run -d -p 5000:5000 --link pokeset_app -e DATABASE_URI=http://pokeset_app:3000/pokemon \
		--name pokedex_app pokedex

stop:
	docker stop pokeset_app
	docker stop pokedex_app

clean:
	docker rm -f pokeset_app
	docker rm -f pokedex_app
