Add-Type -AssemblyName System.Net.Http
$client = New-Object -TypeName System.Net.Http.Httpclient
$task = $client.GetStringAsync("https://bing.com/");
$task.wait();
if ($task.IsCompleted) {
    if ($task.Result -match "<link rel=""preload"" href=""(.*?)"" as=""image""") {
        $url = "https://bing.com/" + $Matches[1];
        $imagePath = $env:TEMP+'\BingWallpaper.jpg';
        Invoke-WebRequest -Uri $url -OutFile $imagePath;
        Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $imagePath
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
        rundll32.exe user32.dll, UpdatePerUserSystemParameters
    }
}
