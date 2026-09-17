#!/bin/bash
API_KEY="${GEMINI_API_KEY:?GEMINI_API_KEY environment variable is required}"
MODEL="gemini-3.5-flash"
curl -s -w "\nHTTP_CODE: %{http_code}\n" -X POST "https://generativelanguage.googleapis.com/v1beta/models/$MODEL:generateContent?key=$API_KEY" \
-H 'Content-Type: application/json' \
-d '{
  "contents": [
    {
      "parts": [
        {
          "text": "Hello"
        }
      ]
    }
  ],
  "generationConfig": {
    "thinkingConfig": {
        "thinkingLevel": "high"
    }
  }
}'
