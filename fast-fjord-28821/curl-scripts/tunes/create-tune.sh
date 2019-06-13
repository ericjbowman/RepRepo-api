curl "http://localhost:4741/tunes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tune": {
      "title": "'"${TITLE}"'",
      "composer": "'"${COMPOSER}"'"
    }
  }'

echo
