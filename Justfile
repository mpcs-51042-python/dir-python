clean:
  rm -rf _book

preview:
  # ensure quarto always uses the local python
  QUARTO_PYTHON=`uv run which python` quarto preview

build:
  QUARTO_PYTHON=`uv run which python` quarto render

pdf:
  QUARTO_PYTHON=`uv run which python` quarto render --to pdf

publish: build
  trifold publish

wc:
  wc -w **/*.qmd | sort -n

owl:
  owl -r -t qmd
