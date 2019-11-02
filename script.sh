
echo "Clone projects"
git clone -b master https://github.com/alexanderJPV/frontend_food.git ./app/frontend_food
git clone -b master https://github.com/alexanderJPV/backend-restfull-food.git ./app/backend-restfull-food

echo "Access folder"
cd ./app/frontend_food

echo "Install dependencies"
npm install
echo "Compile project for production"
npm run build -- --prod