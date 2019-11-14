function loop()
{
  while true
  do
    sleep 1
    echo "looping"
  done
}

function int()
{
  echo "sigint"
  exit
}

function term()
{
  echo "term"
  exit
}

function quit()
{
  echo "quit"
  exit
}

function shkill()
{
  echo "kill"
  exit
}

trap int SIGINT
trap term SIGTERM
trap shkill SIGKILL
trap quit SIGQUIT

loop
