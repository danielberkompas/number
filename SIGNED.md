##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVd2hfAAoJEKU82t1CbYQMmRcQAKEzqr2XxR6J7YOw2/RND7md
JkF2H2cE7TqkCqWx84HY7t7Ii1urgLu5qxYdRFaE74g0AFOuMmUFvc52/oFXetSq
KVvIx1F8QSk6+O6eHnZzkeRYJ+JYJkVvjofzh/H4yF48hh+hFgRyQSGB6NGP49P7
1VolXOXK3QElAn8lcF+D/jeBweWoxhGM6JIUyAbSo804hEeuD7hCn6omL18+zKCQ
jd5yEJr4movsaAFLqjZczBhcZacy38Iwkf9N9I/XX3AgelCmvQBga1MlwQkf+o7G
tDavHGOWlTl3Rk3p0N6E74uZmU0MI96m5uJY5GitaM0X7VhmBbBMOfal26VZ52/7
IDN0VzVsZCwvHhbspgE+g1OCEHePi7YETZ8JhYDSfsiUoUnLhmYFX+cXOTYhr7pi
ShUPoXdBp63lQEYcU7TRzmTvimUjqLDyU5w+MbU2R0wo/8UJOCpmplUK0xs8oHe3
pbsIk63gZsDQgKE7CSxndYWEMFWb9k+V9fvFaUhPyLF+LeZdyR1v54q58bztAMM2
K1rGjzTge2mpSrJXnaAktMMEVghfEP7RYfueam/mCV66A3G4/oVXKN5ypPTTBOeA
MakVzLBmndGBHJcaiBiSewm1mDNzeeygMewfH//dXI9oAIAQWf4Wf6jPNzdi+q1O
iUvZu2wTZ+g1lOXQaDMJ
=5aFV
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
234           CHANGELOG.md           d7467c29449dbffe02cebd92918d74c74f33ec20bbc35cba7ce95c0bace8663b
471           CONTRIBUTING.md        cb4eb249dfd382627575aa0a4d3132ebdf150aa69af779ac14b83bcae70e79c3
1083          LICENSE                a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
322           NOTICE                 9b9f53c89cde0e23ea4f718683e5f76d576d8129dc4a5b3d2597128bc61024ad
1320          README.md              3a92f13d36bb1628337cb7bff33847f6a01a8ed883df1f71d46557bcc2bbbc25
              config/                                                                                
1030            config.exs           2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                   
                number/                                                                              
3390              currency.ex        785f898ba692f1a3c744d034fd455ee4dad6558af61a7380cd5e007f3aededf9
3270              delimit.ex         60de5f6388d8e39d2f519edeaf5aa662c53eaeb8f9cffc7b2fa4b7a071c3c66c
955             number.ex            08600282f3188308b5f3faed9a755b5c9e5cc72bad5575990eb24fe08b206e0b
1195          mix.exs                7559570c05cb0616fbc3df6f57fa9623720e5b97b207df3b1b703b5c294061a4
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