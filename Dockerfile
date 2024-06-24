FROM debian:10.8

RUN apt-get update -y && \
    apt-get install -y \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-full \
    texlive-latex-recommended
COPY . .
RUN pdflatex -interaction=nonstopmode cv.tex

CMD ["bash"]
