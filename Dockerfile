FROM debian:10.8

COPY . .

RUN apt update -y && \
 apt install -y \
 texlive-latex-base \
 texlive-latex-extra \
 texlive-full \
 texlive-latex-recommended


RUN pdflatex -interaction=nonstopmode cv.tex

CMD [ "bash" ]
