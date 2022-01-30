# Generating the files

## Requisites
 - Your system must have `yarn` installed
 - Access to the internet as files are downloaded on the fly

## There are basically two steps  
 - Info step: Execute `crawler/run.sh` to gather IDL and MDN information into JSON files
 - Generating step: Execute `package_js/run.sh` to generate the dart files from the generated JSON files

## Steps detailed
### Information gathering:
 The `main` function calls 6 methods and most of them can be commented after running the first time:
  - `cloneMDN`: will download the whole MDN website compressed from MDN github and unzip locally at `tool/crawler/mdn`. 
  - `cloneIDLs`: will recursively check the w3c repo for IDL files and download them at `tool/webIDL/`. 
  - `mergeIDLs`: will open, read and merge the IDLs files downloaded into one at `tool/webIDL/merged`.
  - `startMdn`: will `cd` into the MDN dir and start their web server through `yarn install` and `yarn start`
  - `parseMDN`: will fetch the index page of the MDN web site and then crawl all objects they expose while saving into the json at `tool/webIDL/mdn.json`
  - `addInfo`: will read both the `mdn.json` and the merged IDL dir and then generate the dir `tool/webIDL/info` which is basically a parsed IDL with MDN info attached in the objects

### Generating the dart files
 The `main` function basically reads the contents of the last dir generated (`tool/webIDL/info`) in the first step and generates all bindings into the `lib/bindings` folder

