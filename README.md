# wingtip

Sample ASP.NET web application with Jenkins pipeline file.

Should be built on a Windows based agent with MSBuild, Node.js, and Git installed.

Shows an example of how to execute selenium scripts through Jenkins from a powershell script. Uses Geckodriver or ChromeDriver.

1. Provision Windows 2016 Server in AWS
    a. Install MSBuild, Git on server
2. Create Jenkins team
3. Configure Webhook
    a. Payload URL: https://jenkins.beedemo.net/--replace-team-name--/github-webhook/
    b. Select individual events: Pull Requests, Pushes, Repositories
4. Add windows agent to provisioned Master
    a. RDP to Windows box and launch agent
    b. Ensure agent port is open (31649)
