DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR
for i in $(ls | grep -v '\.sh' | grep -v '\.md')
do
  echo "Linking $i"
  ln -sfn $DIR/$i ~/.$i
done
