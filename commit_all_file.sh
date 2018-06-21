#https://stackoverflow.com/questions/2388090/how-to-delete-and-replace-last-line-in-the-terminal-using-bash
echo $1 - $2
CMD=$1
ROOT=origin
BRAND=brand1
git add .
git commit -m "$CMD"
echo "10 seconds to push ...."
seq 1 10 | while read i; do echo -en "\rYOU RIGHT IN $i seconds"; sleep 0.9; done
git push -u $ROOT $BRAND
