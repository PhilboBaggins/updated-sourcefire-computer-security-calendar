#!/bin/sh

set -e # Exit on error
set -u # Treat unset variables as errors

cd "$(dirname "$0")"
cd ".."

mkdir -p "images"
cd "images"

extact_image() {
    echo "[+] Extracting image for ${1}"
    pdfimages.exe -png ../original-pages/${1}.pdf .
    mv -i .-000.png ${1}.png
}

extact_image "january"
extact_image "february"
extact_image "march"
extact_image "april"
extact_image "may"
extact_image "june"
extact_image "july"
extact_image "august"
extact_image "september"
extact_image "october"
extact_image "november"
extact_image "december"
