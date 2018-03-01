FROM debian
RUN apt update && apt install coq coqide -y

RUN apt install curl -y
RUN apt install build-essential -y
ADD install_opam.sh install_opam.sh
RUN ./install_opam.sh
RUN apt install unzip -y
RUN apt install m4 -y
RUN apt install git -y
RUN apt install ruby -y
RUN opam init
RUN opam repo add coq-released https://coq.inria.fr/opam/released
RUN opam repo add coq-extra-dev https://coq.inria.fr/opam/extra-dev
RUN opam repo add coq-core-dev https://coq.inria.fr/opam/core-dev
RUN opam install -j4 -v coq -y
RUN opam install -j4 -v coq-io-system -y
