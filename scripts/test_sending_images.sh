echo "Bash version ${BASH_VERSION}..."
for i in `seq 1 100`
do
  curl -v -F 'img_avatar=@niijima.jpg' http://localhost:8080/images &
done
