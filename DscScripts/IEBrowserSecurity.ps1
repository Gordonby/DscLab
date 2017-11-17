Configuration IEBrowserSecurity
{
	Import-DscResource -Module PSDesiredStateConfiguration

    node IEBrowserSecurityOff
    {
        Registry Off
        {
           # When "Present" then "IE Enhanced Security" will be "Disabled"
           Ensure = "Present"
           Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
           ValueName = "IsInstalled"
           ValueType = "DWord"
           ValueData = "0"
        }
    }
}