function dsa --wraps='docker ps -a -q | xargs docker stop' --description 'alias dsa=docker ps -a -q | xargs docker stop'
  docker ps -a -q | xargs docker stop $argv; 
end
