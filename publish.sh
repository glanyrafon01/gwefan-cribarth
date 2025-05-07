#!/bin/bash

# Build Hugo site
echo "🛠 Building site..."
hugo || { echo "❌ Hugo build failed"; exit 1; }

# Stage all changes
git add .

# Prompt for a commit message
echo "📝 Enter commit message:"
read msg

# Use default message if none provided
if [ -z "$msg" ]; then
  msg="Update site content"
fi

# Commit and push
git commit -m "$msg"
git push

echo "✅ Site changes pushed! GitHub Actions will handle deployment."
