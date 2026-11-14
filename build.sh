#!/usr/bin/env bash
# Package the theme as a VSIX (no vsce needed) and install it in VS Code.
set -euo pipefail
cd "$(dirname "$0")"
V=$(python3 -c 'import json;print(json.load(open("package.json"))["version"])')
B=$(mktemp -d)
mkdir -p "$B/extension" && cp -r package.json themes "$B/extension/"
cat > "$B/extension.vsixmanifest" <<XML
<?xml version="1.0" encoding="utf-8"?>
<PackageManifest Version="2.0.0" xmlns="http://schemas.microsoft.com/developer/vsx-schema/2011">
  <Metadata>
    <Identity Language="en-US" Id="contraste-claro" Version="$V" Publisher="silasdouglas"/>
    <DisplayName>Contraste Claro</DisplayName>
    <Description xml:space="preserve">Light theme with WCAG AA contrast.</Description>
    <Categories>Themes</Categories>
    <Properties><Property Id="Microsoft.VisualStudio.Code.Engine" Value="^1.70.0"/></Properties>
  </Metadata>
  <Installation><InstallationTarget Id="Microsoft.VisualStudio.Code"/></Installation>
  <Dependencies/>
  <Assets><Asset Type="Microsoft.VisualStudio.Code.Manifest" Path="extension/package.json" Addressable="true"/></Assets>
</PackageManifest>
XML
cat > "$B/[Content_Types].xml" <<'XML'
<?xml version="1.0" encoding="utf-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types"><Default Extension=".json" ContentType="application/json"/><Default Extension=".vsixmanifest" ContentType="text/xml"/></Types>
XML
rm -f contraste-claro-*.vsix
(cd "$B" && zip -qr "$OLDPWD/contraste-claro-$V.vsix" .)
rm -rf "$B"
code --install-extension "contraste-claro-$V.vsix" --force
