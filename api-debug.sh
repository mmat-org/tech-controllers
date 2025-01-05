TOKEN=$(curl -d '{"username": "matmat1308", "password": "iM273wL7tHk3aqL"}' -X POST https://emodul.eu/api/v1/authentication | jq '.["token"]' -r)
module_udid=8b38f80bc165960970b2306be3d87bff
USER_ID=92177279

curl -H "Authorization: Bearer $TOKEN" -X GET https://emodul.eu/api/v1/users/$USER_ID/modules/$module_udid | jq | less
