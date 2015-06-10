##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVeHSsAAoJEKU82t1CbYQMzYsP/Ahw+amWG9av4ffZS18SgfkU
ixHOslzRjX7QE6LXwnEPbV6QyU36w2ukhbRmpDsgjbjd/SDPw5DKOUG0W+70Z/9O
hrJkshbwjL1buYia4TrLHQ0fQVNiRD0j9q6InLpzTh2MI0UXW4hyDzresv0wd1ur
vrchIt876BEyA2jS6EMbTTpa4ZXmBW4TsCIMygxBJdo56dIUreryc4vPdpTZ0sTA
Ej9I02tZIuIr4d9eEwW8+BJFnA9yEGTApBu5P/TlDEVnO+Y4VTWRfU6KWZEpDCda
ZWoncd8lof9dyTYU/OZ08L+dLjktuGLJIfycF2NfmXhoiGIYW7FNjs3N2yskFcU3
tUx6cC+tHZiPk564FVJGBLhkqqbg69ZXbQN7m0rHq8irGzW2Ybk0ApA4/OGAnTPV
vG305wKct2XGTjraiYZMDKc0gzH54g+oQZUcdY6zEgbWVa9h10TuBHF/hCfMybvN
gPcEFv7it/QMvkqcfRZWWAQ/+2aAusQ1cDFHPVnJG7YahRbgcQ91vvNXqZCQRLhg
9hlFsPeGHXVY9ztRBFryNapUs5+HS6usmi/AoBF3+DzzsmMJbNniG0FQ4HQ5dLGB
VAXI3b0H5Y+rQ8/PraUYYzCcnYHShuwWUW2t/Txhi0W0ioxqOdKAEw3R0ssNYY8I
HgFfynBNn9UvpMbQCp9s
=c7YM
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file               contents                                                        
            ./                                                                                 
1366          CHANGELOG.md     67e79da0e187ef0cde7f2a024ed3e61a86302fa34e5ad3accb2f4a2391838cd8
1083          LICENSE          a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
1658          README.md        d507afcd6f6f1375078cf149218b130ba4f5f4ee3c5c6243f0efe9a9eaca90cf
              lib/                                                                             
                number/                                                                        
3574              currency.ex  88a6f530ed880d512c597c4f4bea890b5493f1bb59d2838e34496c0626bacfb4
3454              delimit.ex   ec2463508a5627f592f473bfa37c1a34c3e45ae2548363181e2be8450792ce35
771               macros.ex    b42fff520c8a44a177ce83280a933104ac33e9172f3811f2afd6652c30d5de9b
3833              phone.ex     5c2b44d13beb0e6a6cb5c999eed2342c1c369fe741e6db336033441f5bccab03
981             number.ex      0bf4380647d693e795819f1f651ee4ff79c45ca6924db4b9a06a7a1e2fe5b53f
1231          mix.exs          30d4761a7314c40df6f31a54e0ba056b5214c342c5c004312700f5205ad31a3c
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