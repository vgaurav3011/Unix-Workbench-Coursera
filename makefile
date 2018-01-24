README.md:
	echo '# Guessing Game for Coursera Course\n' > README.md
	echo "* RunTime: $(shell date) \n" >> README.md
	echo "*Number of lines:" $(shell cat guessinggame.sh | wc -l)>>README.md
