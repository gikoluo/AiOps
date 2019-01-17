# README


## Setup
docker-compose up

## Initialation
1. Test: 
`ldapsearch -x -W -D 'cn=admin,dc=luochunhui,dc=com' -b "" -s base`
```
Enter LDAP Password:
# extended LDIF
#
# LDAPv3
# base <> with scope baseObject
# filter: (objectclass=*)
# requesting: ALL
#
#
dn:
objectClass: top
objectClass: OpenLDAProotDSE
# search result
search: 2
result: 0 Success
# numResponses: 2
# numEntries: 1
```

2. Import Template data
ldapadd -x -W -D 'cn=admin,dc=luochunhui,dc=com' -f org_template.ldif


3. Use ApacheDirectoryStudio to setup the groups and users.
Hostname: 127.0.0.1
Port: 389
Encryption method: No encryption
Provider: Apache Directory LDAP Client API
BindDN or user: cn=admin,dc=luochunhui,dc=com
Bind password: **password set in docker-compose**


