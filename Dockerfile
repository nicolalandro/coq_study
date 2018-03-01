FROM debian
RUN apt update && apt install coq coqide -y
