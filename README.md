# docker-registry-nginx

### Setuping users
Users are set at run time with the environment variable USERS

USERS='admin:$apr1$AyMA3sgt$jchcyTGgMk2SmuN1kbSR./'
will set a user admin with the password admin (default)

If no variable is set, admin:admin will be used.

For multiple users, add a space between them.
    USERS='admin:$apr1$AyMA3sgt$jchcyTGgMk2SmuN1kbSR./ foobar:$apr1$AyMA3sgt$jchcyTGgMk2SmuN1kbSR./'

The password is gererated using htpasswd

### References
https://www.nginx.com/resources/admin-guide/restricting-access-auth-basic/
