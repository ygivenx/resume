texttopdf: resume_rs.tex 
	pdflatex resume_rs.tex

pdftopng: texttopdf
	pdftoppm -png resume_rs.pdf resume -rx 300 -ry 300

resume: pdftopng
	rm *.out
	rm *.aux
	rm *.log
	rm *.fls 
