the_inexpensive_monitoring.pdf: version.md
		gitbook pdf
		rm version.txt version.md
		mv book.pdf the_inexpensive_monitoring.pdf

version.txt:
		echo '# version of source file' > version.txt
		git log | head -n 4 >> version.txt
		echo '' >> version.txt
		git  remote -v >> version.txt

version.md: version.txt
		awk '{$$0=$$0 "  ";print}' version.txt > version.md
