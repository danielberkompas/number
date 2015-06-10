##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVeHOTAAoJEKU82t1CbYQM/YgP/1zdEsHuqgPY7NBGg0Nec+6I
Uj0M5c3jnP5k37dUSLEjjftIeHcjQz6wpLW/8+uToyHizNetmhQmwzAy/8utjdK6
T+KoW6auheAnyY94dsqqucWAhTXaNd246Q5L8TXb7XmiVKACc7p6D7ovV2sNAfwI
tHgTpHpErUsS7co90O0/ijb1qZoJHKrB6SILjxSVmnhyUdSKd2aYzI5MaaobOF8K
xvK+WiMtkZ271BK7qy16qhk/8Ail/HwHu2384lMdwY6X/FEQZe5QR5Ei2Nz52ocj
EYLRL/4yCkmQ0S5JxdeJmzkcQjBB9YlgrmagOPuP1ZYWFH3ixZX8Li3LziuUJVVL
y2nKRPfheP7i8mAn8QCs/EOLYLEEIMw9QGMPKClduzWL25AgCZSIyYaP3rOUmLtj
L9CClXuS06K0V6DOilMQHzTEVD5lYNYEShxXEMXrwGkFGVjQH2bfHDM4VTVCNOtz
nSDBA9nqHKMTq/KJpJRnafZsjeKd1+1BjO0zoGEd1j5XY0lu+6fbQ60wpehwLF4O
x32mKo++cw94vqfLY1I39/G/ODOuVipRzCjFCY1fetwa65rLAJ4IQCegDL8x0Rf9
0dKQ9tzLCs1aojw9u+rpukKJRRgdpJkjl+NNl6AHf9NB+bGdfXMgXUhks2baOoo8
owfn7RcwwRoWvqpnhiZ2
=1a4c
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file               contents                                                        
            ./                                                                                 
1353          CHANGELOG.md     395c1c484f536007e3ef351c44f5b29b5b6394d171f51394eee6b9d43c04a9a6
1083          LICENSE          a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
1658          README.md        be3f550f68bab44dde27a08b37336dacde8ce197a4a177a1dc2d3b79bbdc0289
              lib/                                                                             
                number/                                                                        
3574              currency.ex  88a6f530ed880d512c597c4f4bea890b5493f1bb59d2838e34496c0626bacfb4
3454              delimit.ex   ec2463508a5627f592f473bfa37c1a34c3e45ae2548363181e2be8450792ce35
771               macros.ex    b42fff520c8a44a177ce83280a933104ac33e9172f3811f2afd6652c30d5de9b
3833              phone.ex     5c2b44d13beb0e6a6cb5c999eed2342c1c369fe741e6db336033441f5bccab03
981             number.ex      0bf4380647d693e795819f1f651ee4ff79c45ca6924db4b9a06a7a1e2fe5b53f
1231          mix.exs          2df679615b5e5ee6d5d2fd4c32ce51a1c26664bffbc2650ba2e8f913f85b44d8
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