echo "📦 Freezing dependencies to requirements.txt..."
pip freeze > requirements.txt

echo "🐳 Rebuilding Docker image and restarting containers..."
docker-compose up --build -d

echo "✅ Done. Containers are running with updated dependencies."