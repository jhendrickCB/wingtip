pipeline {
  agent {
    label 'windows2016'
  }
  stages {
    stage('Build') {
      steps {
        echo "Building ASP.NET application"
        git changelog: false, credentialsId: 'josh-github', poll: false, url: 'https://github.com/jhendrickCB/wingtip.git'
        bat 'C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe C#\\WingtipToys\\WingtipToys.csproj'
        echo "Completed building ASP.NET application"
      }
    }
    stage('Package') {
      steps {
        echo "Packaging Application"
        zip dir: 'C#\\WingtipToys\\bin', glob: '*.dll', zipFile: 'wingTipDLL.zip'
        echo "Completed packaging Application"
      }
    }    
    stage('Checkpoint') {
    	//agent none
        steps {
        	checkpoint 'Checkpoint'
        }
    }
    stage('Deploy') {
      steps {
        echo "Deploy application"
        bat 'copy wingTipDLL.zip C:\\wingtip\\deploy'
        echo "Completed deploy application"
      }
    }
    stage('Test') {
      steps {
        echo "Testing application"
        dir('C#\\tests') {
           bat 'powershell -noexit "& "".\\run-tests.ps1"""'
        }
        echo "Completed testing application"
      }
    }
  }
}