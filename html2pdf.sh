#! /bin/sh

# Need to install wkhtmltopdf use following command
# sudo apt install wkhtmltopdf

if (command -v wkhtmltopdf)
then
	echo "Enter HTML file name without extension. (example)"
	echo "If file is not in same folder then specify full path."
	read filename
	file="${filename}.html"
	out="${filename}.pdf"
	wkhtmltopdf $file $out
else 
	echo "wkhtmltopdf not installed. Use following command."
	echo "sudo apt install wkhtmltopdf"
fi
