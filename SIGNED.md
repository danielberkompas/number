##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVeHWuAAoJEKU82t1CbYQMMv4P/3goaRP/Cy6ysaO8ZTKfWnuT
+pT1lEfE16o7rtzcjUe4toAoF5Irzh5Q0Q2LDBnJaqt/qcU65jWXtquWvUqjXMiz
MBMC+k3t4nV1yvmRbTwponuarXGoLmoyOHWrGMz266hfeHygoZL2FRW0P5q2irVQ
5hKmgVENa5yYCZ2dPEl/dxCsYz3NnOh3f1FTJPnWJIrk1bzTF+PNesCE1VyRI4/y
T6uakvmro0UBt9T5zXuGQTvNNTqQJmD44y8dopQJKW2GqWdN75B9vCuGZkTtkA2L
dLFdRKphOeh8wSsgEOKD1zeqA0x7EowgQzNaSMo1l+CE4Y6beH5djJmc+F/GxFJj
GYXTmfPAbuUUD7SM4klhuZtIqLjbkpf/cv1XDFdEzYNiriwSXOZ4CFXgSY4giw4N
JmkfLde2TSqPhQQsfslrg2vSzMIrnRb3lk1IERtrDttjYB5OAiHRIAlPumsRnw1s
x4rXMcYqRuZnorMpvYkkLJ0Q6D9oSzB82Z3H6KqEYcs/9mg0NuFj+AMonsXYKcdl
m1cj7ARc/DPzdBwl5BMXzmZ/GMaN1i9sKnTbLUXTodjMWBbkX2oHBcbERTvgFVxx
KUmpceMvwo/cou51LwAR5OefQaQGCzqYcQyqe70nPqDULiBJqpUQbyYtY0HDuInh
mtRbECW0+YGNhFTYmNow
=L6mD
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file               contents                                                        
            ./                                                                                 
153           CHANGELOG.md     42e628018fccb4a446a68c506c2e9437df5eb0ab0071c89cf4248f2dc3a398d6
1083          LICENSE          a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
1658          README.md        78c23dafd683355b0f26a637d3e050b8875755ab8c3bfaa31e8dbd891785ae04
              lib/                                                                             
                number/                                                                        
3574              currency.ex  88a6f530ed880d512c597c4f4bea890b5493f1bb59d2838e34496c0626bacfb4
3454              delimit.ex   ec2463508a5627f592f473bfa37c1a34c3e45ae2548363181e2be8450792ce35
771               macros.ex    b42fff520c8a44a177ce83280a933104ac33e9172f3811f2afd6652c30d5de9b
3833              phone.ex     5c2b44d13beb0e6a6cb5c999eed2342c1c369fe741e6db336033441f5bccab03
981             number.ex      0bf4380647d693e795819f1f651ee4ff79c45ca6924db4b9a06a7a1e2fe5b53f
1244          mix.exs          2682f0cff3df8e6b18a0746c4aacb3eb3afb9dbdfdc045aa9107d39643c64d9b
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