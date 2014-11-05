gen:
	lpad-gen

clean:
	rm -rf presentation

serve:
	cd presentation && python -m SimpleHTTPServer

publish:
	s3cmd sync -P --delete-removed presentation/* s3://www.gar1t.com/presentations/2014-09-22-chicago/
