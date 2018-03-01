FROM debian
RUN apt update && apt install coq coqide -y

RUN apt install curl -y
RUN apt install build-essential -y
ADD install_opam.sh install_opam.sh
RUN ./install_opam.sh
