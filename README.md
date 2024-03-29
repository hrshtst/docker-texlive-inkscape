# TeX Live and Inkscape docker image

Docker image containing full-scheme TeX Live and Inkscape for my
personal usage.

## About this repository

This is a Git repository that tracks changes in a Dockerfile to build
an image based on
[texlive/texlive](https://hub.docker.com/r/texlive/texlive). It also
includes some tools for my personal use such as:
  * [Inkscape](https://inkscape.org/)
  * [GNU Make](https://www.gnu.org/software/make/)
  * [Ghostscript](https://www.ghostscript.com/)
  * [Git](https://git-scm.com/)
  * etc.

## Usage

Let's say you have a file `main.tex` in the current working directory.
You can pull the image hosted on
[dockerhub](https://hub.docker.com/r/hrshtst/texlive-inkscape) and run
typesetting as follows:

``` shell
docker run --rm -it --volume $PWD:/workdir hrshtst/texlive-inkscape:latest pdflatex main.tex
```

## License

The build script `Dockerfile` and helper scripts contained in this
repository are licensed under the MIT License.
