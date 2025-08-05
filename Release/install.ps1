# 设置控制台编码为UTF-8防止中文乱码
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

$releasePath = (resolve-path .)
Add-AppxPackage ${releasePath}\apex-sparse.appx -ExternalLocation ${releasePath}