An example of the sandbox for small experiments with Haskell.

To add a new module just do

```
cabal run -- scaffold ModuleName
```

The it will

1. create a module file
2. add an import into `src/Sanbox.hs`
3. register it in a `.cabal`-file
