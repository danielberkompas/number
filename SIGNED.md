##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVeG1WAAoJEKU82t1CbYQM0SUP/i0/N9Ps8y0oP3f5cOic2F0x
bUsjyVLjh6GbKOevzzBRQqbaSy7xqilpoOHE0oO4TiCiWyRZTYp4mAHWZ5onfJGp
FaoPV5Z71BQxCDtdi39vBB7wDbETKEMIhm3J+ucoIYAKeEH7yr0Td6P/v0USeLdD
/7FQn1K2Dsw3mFkqGyIrwGzpahhnqSmcOnosi70AHaSuJavn8KM+D2DXSsjA5sez
VUkFrnfY7uddRTetcY/pjf/xcElKo6XdlBMH912AlNB8HhcfPp2y9tF7S466Bdic
ZL5UXScM1k4b/BO0goyXh/IKGfDmaDspYJdC7r6b8tvqwqowqEgZiFQjLa4hIaWx
S5TERqbpdlK0ZPBX64hxjIVE60Ithh8W0Sw4dnHi/UEqBcEtQY6vAhQBnlcCi1RB
6B1LCDdCAWvwG6XwW79qxOtt7ldeacKZzA0mXn6ec4wx0pRU+vHl/IPSmGgqpX/F
CvZ3+TSs9MpxnU7WE05/BZFwfV4eLtuyoxFC/hY9uqddRLTO0qu8g/3nznCP2inn
oLlwhLjrq/akjaMOsINpq36+OS9K/vmLbj2HhbNg+lUXCZ3yduKBiLonc1tkjg+H
792GVma9dz5oizCTDoxFyRV8BF/x3XbpcwkfEZgYy5NMkoH7J2EFW3FGJNFHHw+l
sjYRM8JEgtxA02kiSZbc
=kNFL
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                     contents                                                        
            ./                                                                                       
39            .gitignore             6852329ebe6cd9ed388b24316ea68612637cba18d8e6d508c502bafbac0a6c41
578           .travis.yml            cd663fddb9e1825543a2a88f345ccd41a35972f3157dbf62c252844764ff8b5c
855           CHANGELOG.md           47d47ec2eb2fcded72ad6c643d770adc94a5e987ddeca63e7131d36a8deaaf69
471           CONTRIBUTING.md        cb4eb249dfd382627575aa0a4d3132ebdf150aa69af779ac14b83bcae70e79c3
1083          LICENSE                a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
322           NOTICE                 9b9f53c89cde0e23ea4f718683e5f76d576d8129dc4a5b3d2597128bc61024ad
1320          README.md              5a270f42f28c78787f763b3bb3b71328e0893095495bbc05e3bab46bf658960e
              config/                                                                                
1030            config.exs           2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                   
                number/                                                                              
3574              currency.ex        88a6f530ed880d512c597c4f4bea890b5493f1bb59d2838e34496c0626bacfb4
3454              delimit.ex         ec2463508a5627f592f473bfa37c1a34c3e45ae2548363181e2be8450792ce35
771               macros.ex          b42fff520c8a44a177ce83280a933104ac33e9172f3811f2afd6652c30d5de9b
3833              phone.ex           5c2b44d13beb0e6a6cb5c999eed2342c1c369fe741e6db336033441f5bccab03
981             number.ex            0bf4380647d693e795819f1f651ee4ff79c45ca6924db4b9a06a7a1e2fe5b53f
1202          mix.exs                603368544600612e077499d355f3293a787a4dc3353e65ed16638aa480ab5abd
116           mix.lock               bdabe33c837c73439778112105873fb4b16157ed3adc9d2b9b268630d8ed6cc9
              script/                                                                                
856   x         release              7d8cec57ccd23d806aadb0f6405c02dd295361e9c034c26f6805f55034195c17
              test/                                                                                  
                number/                                                                              
82                currency_test.exs  7ab7518fef55ec686e43c64a5ba77222eb221e94e954effa1280ac473939952e
80                delimit_test.exs   7f965575f5b85d91f50605d1a63135d03e3d392625ef14aca817e87295b108fd
78                macros_test.exs    31325f05ce2b5e5803d9d648550b46ad4b66f694b159f0fe839e8e0387ee89c1
76                phone_test.exs     045d2f587e070918eb2f25f27c5c5a282a6919be456aa7f2901f840c4b2e2c55
46              number_test.exs      c75fd9c4b92a7e78875df9136839510bd2f032c57c6038d55e6c456abcedff67
15              test_helper.exs      b086ec47f0c6c7aaeb4cffca5ae5243dd05e0dc96ab761ced93325d5315f4b12
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