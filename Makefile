package:
	npm install @perawallet/connect@1.3.3
build:
	esbuild src/perawalletconnect.mjs --bundle --platform=browser --define:global=window --outfile=dist/1.3.3/perawalletconnect.js
	minify dist/1.3.3/perawalletconnect.js -o dist/1.3.3/perawalletconnect.min.js
	esbuild ./node_modules/@perawallet/connect/dist/index.js --define:global=window --bundle --platform=browser --format=esm --outfile=dist/1.3.3/perawalletconnect.esm.js
	minify dist/1.3.3/perawalletconnect.esm.js -o dist/1.3.3/perawalletconnect.esm.min.js
clean:
	rm -rf dist/*