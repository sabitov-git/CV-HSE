FROM debian:10.8

RUN apt-get update && \
    apt-get install -y \
        texlive-latex-base \
        texlive-latex-extra \
        texlive-full \
        texlive-latex-recommended && \
    apt-get clean

COPY . /workspace

WORKDIR /workspace

RUN mkdir /workspace/output

RUN pdflatex -interaction=nonstopmode -output-directory /workspace/output cv.tex

WORKDIR /workspace/output

CMD ["bash"]
