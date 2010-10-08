function sandbox {
  cd ~/Projects/sandbox;
  git clone $1;
  clf;
  mate .;
}

function clf() {
  fol=$(ls -t | head -1)
  cd ${fol}
}

function mate_last() {
  item=$(ls -t | head -1);
  mate ${item};
}

function tclr() {
  cd ~/Blogs/thechangelog;
  thor tumblr:post:repo $1;
  mate_last;
}

function tcle() {
  cd ~/Blogs/thechangelog;
  thor tumblr:post:episode $1;
  mate_last;
}

alias sb='sandbox'