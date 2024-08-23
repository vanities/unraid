.PHONY: backup

backup:
		rsync -avXHg --delete nas:/boot/ backup/
		chmod -R 777 backup/
		zip -r -e backup.zip backup/
		rm -rf backup/
