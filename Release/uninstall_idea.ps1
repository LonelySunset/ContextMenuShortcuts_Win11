# 设置控制台编码为UTF-8防止中文乱码
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

# 查找 Name 为 idea 的应用程序包
$package = Get-AppxPackage | Where-Object { $_.Name -like "*JetBrains.IDEA*" }

if ($package) {
    # 显示找到的包信息
    Write-Host "找到应用程序包:"
    Write-Host "PackageFullName: $($package.PackageFullName)"
    Write-Host "Name: $($package.Name)"
    Write-Host "Version: $($package.Version)"

    # 卸载应用程序
    Remove-AppxPackage -Package $package.PackageFullName
    Write-Host "已成功卸载 $($package.PackageFullName)"
} else {
    Write-Host "未找到 intellij idea 应用程序包"
}

# 按任意键退出
Write-Host "`n按任意键退出..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")