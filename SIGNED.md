##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJWcOpbAAoJEKU82t1CbYQMLQ8P/iVnydzDQ0xswG95N30ed9lM
Sims2EvPW+93s0hOCy9YQU6ggRTADPKPBxEd/JFctRXUIcUZ/KiUN8YguxAZ1w2w
3rgxrD56glMZrZcCpCDd90n/YmdCSW9DtePeWqY/tHdynvtK7e4ovFFAvztjpL7A
wXa8S3cs7dT/7oS2SuZMfqvZNmjvUhRrdNu7bazBp/SIdIBElR7oo5YoWkLM6i32
8N/bvlFCYm18TaXPuiUQMxfUHf1IDYf2RGJsG1YR8PuW7uSXjZvSDAzMmu1ndr9f
ZO+73S2ngOpkx4j1wJJ/vTIsRU5+ZFWlJBntsp6f6krQBT8UnyB8FY0Khuq+3guM
jAZkJ8UU5kkwMFr2fhoYLVZXEsQLsuIibZJmAkQZos68X8gubMptUVHNfTW5DJ1T
xJqxo5FbNrHiJo7hHrJPbswHamUjnkyAA9UKono+spBeFIfcdDSVJSUAsJV84nlp
jdZs1oXs2Zs/WDOXnFh7hSzRPqWplEaiQ+Fdu/Z5GkuTDyrg85EHQJ4Dp8lx8r3C
xvgY06yWvfH+Hzo8ExEOD1Yb4ybCXfC08CFR5RgFysNUzl8X2qlgQXDkUQz2pSrY
qUUYfxVu4nkZrqTp9muUbqsIPYCfSmSg/gOHf+TgvvXUNe2mGObcrug3bD1635YD
AltRcH0PFzV2mMs0UiLu
=+zz3
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                 contents                                                        
            ./                                                                                   
30            .vimrc             5a206099fe65252763030009b84748031bd2c0395b50cf06440e536005dd5a7e
3101          CHANGELOG.md       a16595eb550bf9c00fc1d1122bd43a947d3d5deaaa0ab88b5a5b201eb92a8895
1083          LICENSE            a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
2175          README.md          9ade3c6b5df776c612a322ca1f52e2a5f46760d236827c1e3dd7764a1e21c145
              lib/                                                                               
                number/                                                                          
561               conversion.ex  f8426227abedb29453d70c2c1b307361040c3359589ff5ed7b70ab10ab18e360
3574              currency.ex    88a6f530ed880d512c597c4f4bea890b5493f1bb59d2838e34496c0626bacfb4
3682              delimit.ex     55e792e82ada92174b5693f17b0abeddf1adfd716813055fa48a70b8c69e7554
1786              human.ex       bc89ce805334c9537fdbf8df57da44de20b190970174487a82d6cb0e8090bf4d
1628              macros.ex      3ba0a0112d6858411e735812b865691223dc1fc5db5b9b259b1c6443f5d36e10
2033              percentage.ex  6ccedca5b5fa3703ec95fd6fc7551ff5bf0a3c6452a000f81a56eddff0b942de
3754              phone.ex       412befb970fda53269cd6644f06decc6ddc9a43d29b8080450dab4ee8a2af752
3205              si.ex          9d23db7fc4d21f63c4f9a39d91648f975c7c8da5cddb9a856b8d2169db8b1177
1038            number.ex        43d6284deb45e077cd7afc8d804eecc2f40bc0d644b06b41755ed66d42320c58
901           mix.exs            77d8a6d49fc195b15c305bb203a5f40a0b39a26dccfa00aec06f9f06737aed68
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing