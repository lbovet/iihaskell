# iihaskell

A customized [IHaskell](https://github.com/gibiansky/IHaskell) for educational purpose.
Customizations are:

- Prelude is not loaded (NoImplicitPrelude)
- But Num, Types and Classes modules are loaded
- Convenient plotting functions `plot` and `plotr`
- Header is hidden when going fullscreen

# Build

```
$ docker build -t iihaskell .
```

# Run

```
$ docker run --volume $(pwd):/notebooks --publish 8888:8888 iihaskell
```
