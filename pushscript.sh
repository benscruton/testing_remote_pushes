#!/bin/bash
git push origin main
ssh foo@192.168.1.179 -p 8022 /bin/bash < "
	cd testing_remote_pushes
	git pull origin main
	echo 'Pulled latest update'
"
