run <<-EOF
  if (! -e '#{shared_path}/config/resque.yml') {
    cat "---\
production: localhost:6379\
" > #{shared_path}/config/resque.yml
  fi
EOF
run "ln -nfs #{shared_path}/config/resque.yml #{release_path}/config/resque.yml"

