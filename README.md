XeLaTeX-ja package
=====================

This is an experimental package for Japanese typesetting with XeLaTeX.

## Requirements

* TeX engine: XeTeX (0.999993 or later).
* TeX format: LaTeX (2021-06-01 or later).
* Prerequisite packages:
  - expl3 (2021-08-27 or later)
  - l3keys2e
  - xparse

## Installation

```
l3build install
```

or

```
xetex xelatexja.ins
xetex xltjltxdoc.ins
xetex xltjclasses.ins
xetex xltjsclasses.ins
```

* `*.clo`/`*.cls`/`*.def`/`*.sty` → $TEXMF/tex/xelatex/xelatexja/
* `*.dtx`/`*.ins` → $TEXMF/source/xelatex/xelatexja/
* `*.pdf`/`*.tex` → $TEXMF/doc/xelatex/xelatexja/


## License

This package is distributed under [the MIT License](LICENSE).

-------------------------
Yukimasa Morimi (h20y6m)
https://github.com/h20y6m
