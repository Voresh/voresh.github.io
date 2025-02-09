.PHONY: all build_thumbnails

all: build_thumbnails
	bundle exec jekyll serve

build_thumbnails:
	mkdir -p assets/thumbnails/steel_rage
	mogrify -path assets/thumbnails/steel_rage -resize 300x300 -quality 85 assets/images/steel_rage/*.jpg 
	mkdir -p assets/thumbnails/grand_wars
	mogrify -path assets/thumbnails/grand_wars -resize 300x300 -quality 85 assets/images/grand_wars/*.jpg
