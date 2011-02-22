
VERSION := $(shell awk '/VERSION/ { print $$4 }' shelldap | sed -e "s/[';]//g")

release:
	@mkdir shelldap-${VERSION}
	@cp shelldap shelldap-${VERSION}
	@hg log --style=changelog > shelldap-${VERSION}/ChangeLog
	@pod2text shelldap > shelldap-${VERSION}/README
	@tar -czvf shelldap-${VERSION}.tar.gz shelldap-${VERSION}
	@rm -rf shelldap-${VERSION}
