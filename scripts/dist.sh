#/bin/sh

which sha256sum

mkdir dist
OS="linux"
case "${OSTYPE}" in
  darwin*)  OS="darwin" ;; 
  linux*)   OS="linux" ;;
  *)        echo "unknown: ${OSTYPE}" ;;
esac

cp "${GOPATH}/bin/terraform-provider-xenserver" "dist/terraform-provider-xenserver-${TRAVIS_TAG}-${OS}-amd64"
sha256sum "dist/terraform-provider-xenserver-${TRAVIS_TAG}-${OS}-amd64" | awk '{ print $1 }' > "dist/terraform-provider-xenserver-${TRAVIS_TAG}-${OS}-amd64.sha256sum"
ls -lsa dist/
cat "dist/terraform-provider-xenserver-${TRAVIS_TAG}-${OS}-amd64.sha256sum"
