package:
	npm install @perawallet/connect
build:
	esbuild src/perawalletconnect.mjs --bundle --platform=browser --define:global=window --outfile=dist/perawalletconnect.js
	minify dist/perawalletconnect.js -o dist/perawalletconnect.min.js
	esbuild ./node_modules/@perawallet/connect/dist/index.js --define:global=window --bundle --platform=browser --format=esm --outfile=dist/perawalletconnect.esm.js
	minify dist/perawalletconnect.esm.js -o dist/perawalletconnect.esm.min.js
clean:
	rm -rf dist/*