curl "http://localhost:4741/tunes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tune": {
      "title": "'"${TITLE}"'",
      "composer": "'"${COMPOSER}"'"
    }
  }'

echo
