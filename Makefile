
STUFF := api identity icons notifications admin server nginx attachments mssql setup


all: $(STUFF)

clean:
	git clean -fxd

# works
api:
	./src/Api/build.sh

# works
identity:
	./src/Identity/build.sh

# works
icons:
	./src/Icons/build.sh

# works
notifications:
	./src/Notifications/build.sh

# broken on nodejs crap
admin:
	./src/Admin/build.sh

# works
server:
	./util/Server/build.sh

# works
nginx:
	./util/Nginx/build.sh

# works
attachments:
	./util/Attachments/build.sh

# works
mssql:
	./util/MsSql/build.sh

# works
setup:
	./util/Setup/build.sh

.PHONY: all clean $(STUFF)
