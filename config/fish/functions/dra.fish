function dra --wraps='docker ps -a -q | xargs docker rm' --description 'alias dra=docker ps -a -q | xargs docker rm'
  docker ps -a -q | xargs docker rm $argv; 
end
