##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVd2c+AAoJEKU82t1CbYQMVIYP/iYb0OkHMdynzN6PWcmMm76B
Qtp+tpw4dF0P3Tc2OLckTfrX43HjSvWCUziAYDhT37SWZz87KpP164stPpzAAhRW
3LYMl0XkfVs0BoElw9p143SRyDVZAU+fdm6OEALTrn+VIq9A99hhgMwZ3ZstLRc2
lRCH2ps598HuMgLWn736+FjAJ8t7vM8AZg7n0ynmX0A3u+AQcpZvOITorTAyQovA
/80DIx8BCe7Tun/Vn/b9unRXvBnoVc5ARjUKXiVzxOyDBuB/6egZb/gaY3i5Q4B+
e5GeyNb928+5jUTqw/Dt6aytt0cH1x9zm8ZWpnKFeqmPcol4FroRJ6rKeXDG02nw
5wvhZ+YK8cLYuRslPke5+sUFr2HFW8Rx6H2s77aQFZWe90xCP3HIyZP/MS97BFkt
T9wk7TZPoiN8M0TXTpPGA/NhIYriydQRPQsetmQ3hXmK5cbMbtRkBPGjLv1mXP1n
1TXfXCsHGbQ/Q1R88ntTLfppKyMX6iCdj2pgzyvR8nBT6KSWFD8sHSCl5fSZYiRy
nJJWe7r2HARE03I9Z8XqHxiOi6NQpwxa14r8tkR7YgQHyIlOvqeUUfErK7RACjvg
2K3+4xoIVp/+xummDVo3skbFgakc8R/FjO19rIP6h+qyuvjHsC01y/Q7aCWlBYli
6uI4xjKI2a8GvnvQpxWZ
=w4I2
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                     contents                                                        
            ./                                                                                       
39            .gitignore             6852329ebe6cd9ed388b24316ea68612637cba18d8e6d508c502bafbac0a6c41
617           .travis.yml            4d661a691d50e6c45417f7fc2f9be85995ed428e444230e42f86d296c5978558
153           CHANGELOG.md           42e628018fccb4a446a68c506c2e9437df5eb0ab0071c89cf4248f2dc3a398d6
471           CONTRIBUTING.md        cb4eb249dfd382627575aa0a4d3132ebdf150aa69af779ac14b83bcae70e79c3
1083          LICENSE                a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
322           NOTICE                 9b9f53c89cde0e23ea4f718683e5f76d576d8129dc4a5b3d2597128bc61024ad
1320          README.md              d9675ac951da629f93540c14ddcb694ab6550ae88b9f2024f255aec25b1440d7
              config/                                                                                
1030            config.exs           2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                   
                number/                                                                              
3390              currency.ex        785f898ba692f1a3c744d034fd455ee4dad6558af61a7380cd5e007f3aededf9
3270              delimit.ex         60de5f6388d8e39d2f519edeaf5aa662c53eaeb8f9cffc7b2fa4b7a071c3c66c
955             number.ex            08600282f3188308b5f3faed9a755b5c9e5cc72bad5575990eb24fe08b206e0b
1121          mix.exs                c8084fdd560ffa6c6a824411c4715384f596e9cd6e1a792033bb419d4457b31e
116           mix.lock               bdabe33c837c73439778112105873fb4b16157ed3adc9d2b9b268630d8ed6cc9
              script/                                                                                
622   x         release              3bf505bc77c52e4ff6618c63f5dc3cb176f636266abbf4aa9161d6222771663a
              test/                                                                                  
                number/                                                                              
82                currency_test.exs  7ab7518fef55ec686e43c64a5ba77222eb221e94e954effa1280ac473939952e
80                delimit_test.exs   7f965575f5b85d91f50605d1a63135d03e3d392625ef14aca817e87295b108fd
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