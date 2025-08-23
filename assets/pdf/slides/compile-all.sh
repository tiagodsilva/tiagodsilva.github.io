for file in *.typ; do
	typst compile "$file" --font-path fonts/comfortaa
done
