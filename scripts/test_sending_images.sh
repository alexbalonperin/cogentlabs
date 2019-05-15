for i in `seq 1 $1`
do
  curl -v -F 'img_avatar=@niijima.jpg' http://localhost:8080/images &
done
