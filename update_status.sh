STATUS=$1
TOKEN1=$2
TOKEN2=$3
URL=$4

TOKEN="${TOKEN1}${TOKEN2}"

curl -v --request POST \
     --header "authorization: Bearer $TOKEN" \
     --header 'content-type: application/json' \
     --header 'accept: application/vnd.github.flash-preview+json' \
     --header 'accept: application/vnd.github.ant-man-preview+json' \
     --data "{ \"state\": \"${STATUS}\", \"log_url\": \"https://some-url/\" }" \
     $URL

