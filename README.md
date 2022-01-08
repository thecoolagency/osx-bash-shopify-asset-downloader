# Shopify Assets Downloader for OS X

[Getting started](#getting-started) |
[License](#license)

Shopify Assets Downloader is a script optimized only to run on OS X 10.0+. It downloads all JPG, PNG and GIF files from the specified Shopify site using WGET.

* **WGET:** To download site files and assets
* **GREP:** To catch all lines containing the specified string (src=\"https://cdn)
* **AWK:** To remove duplicates and filter out certain file types (js, css, pdf, mp4). You can edit the scripts to include them.
* **FIND (with XARGS):** To clean URL lines for WGET

## Getting started

1. From your terminal run:
``` sh
wget -O - https://raw.githubusercontent.com/thecoolagency/osx-bash-shopify-asset-downloader/main/install.sh | bash
```
2. Then to download assets for a site run:
``` sh
sh dl-assets.sh
```

>:information_source: It will create a folder called domain.com in ~/Documents/web-assets and open it with Finder upon completion.

## License

Copyright (c) 2021-present Jonah L Madeya. See [LICENSE](/LICENSE.md) for further details.
