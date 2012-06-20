all:
	cd /tmp
	rm -rf /tmp/vc
	mkdir -p /tmp/vc
	cd /tmp/vc; git clone git://github.com/futuregrid/workshop-federatedclouds.git
	cd /tmp/vc/workshop-federatedclouds/doc; ls; make html
	cp -r /tmp/vc/workshop-federatedclouds/doc/build/html/* .
	git add .
	git commit -a -m "updating the github pages"
#	git commit -a _sources
#	git commit -a _static
	git push
	git checkout master
