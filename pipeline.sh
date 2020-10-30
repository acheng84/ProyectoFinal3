echo 'Proyecto Final'

echo 'newman tests'

node --version
npm install -g newman
cd api/newman
newman run proyecto.postman_collection.json -e heroku.postman_environment.json
cd ../../

echo 'restassure tests'

cd api/rest_assured
mvn clean test
cd ../../ 

echo 'jmeter tests'

cd load
.\jmeter -n -t examen_test_plan.jmx
cd ../

