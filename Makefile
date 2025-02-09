all:
	mkdir -p assets/thumbnails/steel_rage
	mogrify -path assets/thumbnails/steel_rage -resize 300x300 -quality 85 assets/images/steel_rage/*.jpg 
	bundle exec jekyll serve
