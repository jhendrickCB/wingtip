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
        bat 'dir'
        echo "Completed packaging Application"
      }
    }    
    stage('Test') {
      steps {
        echo "Testing application"
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
      }
    }
  }
}