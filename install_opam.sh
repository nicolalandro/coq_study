curl -L https://github.com/ocaml/opam/releases/download/1.2.2/opam-full-1.2.2.tar.gz |tar -xz
cd opam-full-1.2.2
./configure && make lib-ext && make
make install
