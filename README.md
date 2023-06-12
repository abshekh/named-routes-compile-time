- tested with ghc version: `9.27`
- to setup the project with nix, `nix develop`. this will install ghc and cabal

``` shell
>> cabal clean

>> time cabal build anonymous-routes-exe 
cabal build anonymous-routes-exe  108.84s user 3.11s system 98% cpu 1:54.09 total

>> time cabal build named-routes-exe 
cabal build named-routes-exe  55.69s user 3.08s system 96% cpu 1:00.61 total
```
