configuration IISConfiguration
{
    Import-DscResource –ModuleName 'PSDesiredStateConfiguration'

    Node FullWebServer
    {
        WindowsFeature IIS
        {
            Ensure               = 'Present'
            Name                 = 'Web-Server'
            IncludeAllSubFeature = $true

        }
    }

    Node DotNetWebServer
    {
        WindowsFeature IIS
        {
            Ensure               = 'Present'
            Name                 = 'Web-Server'

        }
        
        #Install ASP.NET 4.5 
        WindowsFeature ASP 
        { 
          Ensure = “Present” 
          Name = “Web-Asp-Net45” 
        } 
    }

    Node NotWebServer
    {
        WindowsFeature IIS
        {
            Ensure               = 'Absent'
            Name                 = 'Web-Server'

        }
    }

}