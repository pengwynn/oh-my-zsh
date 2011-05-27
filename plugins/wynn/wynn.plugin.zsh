function sandbox {
  mkdir -p ~/Projects/sandbox;
  cd ~/Projects/sandbox;
  hub clone $1;
  clf;
  mate .;
}

function clean_sandbox {
  rm -rf ~/Projects/sandbox/
}

function clf() {
  fol=$(ls -t | head -1)
  cd ${fol}
}

function edit_last() {
  item=$(ls -t | head -1);
  vim ${item};
}

function tclr() {
  cd ~/Blogs/thechangelog;
  thor tumblr:post:repo $1;
  edit_last;
}

function tcle() {
  cd ~/Blogs/thechangelog;
  thor tumblr:post:episode $1;
  edit_last;
}

#function git(){hub "$@"}


alias sb='sandbox'
alias csb='clean_sandbox'
alias top='htop'
alias ports='sudo lsof -iTCP -sTCP:LISTEN -P'
alias bxr='bundle exec rake'
