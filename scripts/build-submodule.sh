rm -rf subql
git submodule update --init
git submodule update --remote --merge

cd subql/packages/query

npm install
npm run build
# cp bin/run bin/ternoa-query

cd ../../..
mkdir -p bin
cd bin
ln -sf ../subql/packages/query/bin/run ternoa-query
