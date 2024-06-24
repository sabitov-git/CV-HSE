FROM debian:10.8

COPY . .

RUN apt-get update -y && \
    apt-get install -y \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-full \
    texlive-latex-recommended

RUN mkdir /output && pdflatex -interaction=nonstopmode -output-directory /output cv.tex

CMD ["bash"]
