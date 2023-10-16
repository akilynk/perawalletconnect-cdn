# perawalletconnect-cdn

One bundled javascript file for @perawallet/connect. Currently provides version:

* 1.3.3


## Usage

### 1) Using Vanilla Javascript

Link to `perawalletconnect.min.js`, and the `PeraWalletConnect` is in `window.pera` object:

```html
<script src="https://cdn.jsdelivr.net/gh/applynker/perawalletconnect-cdn/dist/1.3.3/perawalletconnect.min.js"></script>
<script>
// ...
const peraWallet = new pera.PeraWalletConnect()
</script>
```

### 2) Using ES Module

Link to `perawalletconnect.esm.min.js`. and with this esm js file, you can only use the default import way, not named import, for example:

```javascript
// this will work
import pera from "..." 
const peraWallet = pera.PeraWalletConnect()

// this will not work
import { PeraWalletConnect } from "..." // this will not work
```

1) Import from an absolute url

```html
<script src="https://cdn.jsdelivr.net/gh/applynker/perawalletconnect-cdn/dist/1.3.3/perawalletconnect.esm.min.js"></script>
<script type="module">
import pera from "https://cdn.jsdelivr.net/gh/applynker/perawalletconnect-cdn/dist/1.3.3/perawalletconnect.esm.min.js"

const peraWallet = new pera.PeraWalletConnect()
</script>
```

2) Import with `importmap`:

```html
<script type="importmap">
{
	"imports": {
		"@perawallet/connect": "https://cdn.jsdelivr.net/gh/applynker/perawalletconnect-cdn/dist/1.3.3/perawalletconnect.esm.min.js"
	}
}
</script>
<script type="module">
import pera from "@perawallet/connect"
// ...
const peraWallet = new pera.PeraWalletConnect()
</script>
```

## Build

To make the build process work, you need to install `npm`, `esbuild` and `minify`. To install `esbuild` and `minify`, here is the golang way:

```bash
go install github.com/evanw/esbuild/cmd/esbuild@latest
go install github.com/tdewolff/minify/v2/cmd/minify@latest
```

After this,  you can build and generate the minified files:

1. Install `@perawallet/connect` with npm, or use `make package`
1. Build: `make build`

## About

I built this because I can't find a working bundled version for vanilla javascript, and the esm version provided by both esm.run and skypack.dev below will throw some error.

```html
<script type="module">
import { PeraWalletConnect } from "https://esm.run/@perawallet/connect"
// or ...
import { PeraWalletConnect } from "https://cdn.skypack.dev/@perawallet/connect"
</script>
```

But if you find other working versions from other providers, feel free to submit an issue, I'll include it in the README.