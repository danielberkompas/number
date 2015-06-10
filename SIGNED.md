##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVeGk7AAoJEKU82t1CbYQMubMQAIgKCx1GQxiTP1aOFfxzhdfu
9BmdMqWdxx1xLHWDt1fOZ/NXuaRY5r8szPnyFWp/BpWyoaju9seQlSvadE65KDx+
1LEpUlui0/EocxJ0Ma/DWwdbNzSfCyBKdBnbZNv//PVhVmZcJKmyFE76AlCL9msU
ODTEd4hNGdLIKBhwKPq4r4rVUzGKAjoc5ClkvlXOmH/EA2ZTFuueQERThplJx5zF
6u2JlUzNdLZcXklQKR8IFrxah9TcWFcuXnB106jSj5M0HBuvX/5vsvkXYeuhmX3X
gGgVCPm5SMwafUyEjC8LNFrEEcEWmL4fOdpGC1XuZ8Ze7S2yVwYgqd1XQw5oT6al
3YF0RT2Ge8W7Qjl8G6eFHNha7JyXpsdEXe1Ia6JGFc7UIgMhMv2vC0U0kcA3Pres
8zsTYzbddSqaT94M7gWFhvRk1rbdisWVR6SMqW6kD2oLBlnk251JMb4LXorZj8H6
86gzQbovz/0T/6B+gzjlACG8uYmc5iNsoo2JNoKKuZniijJtwxz19fGhm7e2EuL6
cXQ7c/ygXWPI1VXvMpqfb7A0jfhlTN9/mh+q8dLGWuwdaAp5Ln150hAJn8/emgrj
jdsXRutAE1q0I+XAOXB0pp5ufABTCS0x96+yqTs1OpRHytWvKcX8tGe9QMYTIXLg
9a6kJZ87cux6zdlJxxvC
=Z0aX
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
842           CHANGELOG.md           8c41fe349a1dfa4f16f8311fc450c92461026304dc29f6f9efe13296aed5e862
471           CONTRIBUTING.md        cb4eb249dfd382627575aa0a4d3132ebdf150aa69af779ac14b83bcae70e79c3
1083          LICENSE                a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
322           NOTICE                 9b9f53c89cde0e23ea4f718683e5f76d576d8129dc4a5b3d2597128bc61024ad
1320          README.md              606b0c520ae1eff70fb45a8f838e352ffae712930fddfc138e8419b895a2f7dc
              config/                                                                                
1030            config.exs           2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                   
                number/                                                                              
3384              currency.ex        8e97ef04f800274b91677558249c30d58def086637195fa21d4a38da2f03b1c6
3264              delimit.ex         8457e1ee2863de36ad84b3abe9b7e09cc5807d3650654c439d3fb9902db8569a
771               macros.ex          b42fff520c8a44a177ce83280a933104ac33e9172f3811f2afd6652c30d5de9b
3643              phone.ex           9b15c3ef2882575ccc85bffcc74cfed34f1e26f1ff7d1147ca58dfda620500c7
981             number.ex            0bf4380647d693e795819f1f651ee4ff79c45ca6924db4b9a06a7a1e2fe5b53f
1202          mix.exs                d5484e56e2b3e37b0becca7b0509f991744efdb0c377f5b739b0c89d11fad68b
116           mix.lock               bdabe33c837c73439778112105873fb4b16157ed3adc9d2b9b268630d8ed6cc9
              script/                                                                                
635   x         release              0b061e0000bbc496d4f46c5a518d7b654c8a5b780f95f67435448403fc2a9b8b
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