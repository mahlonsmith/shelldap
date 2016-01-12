Shelldap
========

A handy shell-like interface for browsing LDAP servers and editing their
content. It keeps command history, has sane autocompletes, credential caching,
site-wide and individual configs, and it's fun to say.
Shelldap! Shelldap! Shelldap!

Witness!


```
% shelldap 
~ > [ tab ]
~ > 
cat     clear   cp      delete  env     grep    id      ls      move    passwd  read    search  touch   whoami  
cd      copy    create  edit    exit    help    list    mkdir   mv      pwd     rm      setenv  vi      
~ > cd ou=People
ou=People,~ > cat uid=ma[ tab ]
ou=People,~ > cat uid=mahlon

dn: uid=mahlon,ou=People,dc=laika,dc=com
objectClass: inetOrgPerson
objectClass: organizationalPerson
objectClass: person
objectClass: top
objectClass: posixAccount
objectClass: shadowAccount
objectClass: apple-user
cn: Mahlon E. Smith
departmentNumber: Technology - IT
displayName: Mahlon
gecos: Mahlon E. Smith
gidNumber: 200
givenName: Mahlon
homeDirectory: /home/m/mahlon
l: Ghetto
loginShell: /bin/tcsh
mail: mahlon@martini.nu
mobile: 1+8829999005747
sn: Smith
title: Manager, Information Systems
uid: mahlon
uidNumber: 20933
userPassword: *

ou=People,~ > 
```


Downloads
---------

You can download the latest script [here](http://code.martini.nu/shelldap/archive/tip.zip).

It is also available via the 
[FreeBSD ports](http://www.freebsd.org/cgi/cvsweb.cgi/ports/net/shelldap/) system, OS X via 
[macports](https://trac.macports.org/browser/trunk/dports/net/shelldap/Portfile), Debian/Ubuntu via [apt](https://packages.debian.org/shelldap),
NetBSD's [pkgsrc](ftp://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/sysutils/shelldap/README.html), OpenBSD [ports](http://openports.se/sysutils/shelldap), and openSUSE's [build service](http://software.opensuse.org/search?q=shelldap&baseproject=openSUSE%3AFactory&lang=en).

Many thanks to the maintainers of these packages.


Installation
-------------

Shelldap is simply a perl script.  Put it into a convenient place of your choosing.

Shelldap requires the following perl modules to function properly:

* YAML::Syck
* Term::Shell
* Digest::MD5 
* Net::LDAP
* Algorithm::Diff

Additional functionality is supported with the presence of:

* IO::Socket::SSL
* Authen::SASL


Development
-----------


You can also check out the source via [Mercurial](http://mercurial.selenic.com/wiki/) from the following uri:

    % hg clone http://code.martini.nu/shelldap/

or via [BitBucket](http://bitbucket.org/) at:

    % hg clone https://bitbucket.org/mahlon/shelldap


Documentation
-------------

Once installed, Shelldap is fully documented via perldoc, and has a built-in `help` command as well.