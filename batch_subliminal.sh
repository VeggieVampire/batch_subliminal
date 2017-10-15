##########################
# created by Nick Farrow #
##########################
RED='\033[0;31m'        #RED
GREEN='\033[0;32m' #GREEN
YELLOW='\033[0;33m' #YELLOW
NC='\033[0m' # No Color


##batch_subliminal.sh

loc=$1


#checks if user entered anything at all
if [ -z "$loc" ]
then
  echo "Missing location name!!!!!!!!"
  echo "example:"
  echo "./batch_subliminal.sh /home/user/films/"
  exit 1
else
  echo $loc "passed"
fi

cd $loc

ls -1a |grep -v srt > found.media
sed 1d found.media > found.media2
sed 1d found.media2 > found.media

IFS=$'\n'
for x in `cat found.media`
 do
echo $x

        subliminal download -l en ${x}
                #"$(du "$My_File1")"
 done

rm -rf found.media2
rm -rf found.media
