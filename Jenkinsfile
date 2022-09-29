pipeline {
     agent {
        docker {
            image 'node:16-alpine' 
            args '-p 3000:3000' 
        }}

     parameters {
        booleanParam defaultValue: false, name: 'createS3bucket'
        booleanParam defaultValue: false, name: 'deloytos3'
    }

    environment{
        CI ='true'
        AWS_CRED        = 'AWS_linazhao' //Change to yours
        OwnerEmail      = 'linazhao881@gmail.com' //Change to yours
        S3BucketName    = 'statics3demo' //Change to yours, used to save cfn yml files larger than 50KB
        SecurityGroupID = 'sg-0212b4a25537026c9' //Change to your default VPC's default security group ID
        JenkinsServer   = 'http://20.188.28.15:8080/'   //Change to your JenkinsServer URL
        AWS_REGION      = 'ap-southeast-2'
        // VPCStackName    = 'VPCALBStack'
        // VPCTemplate     = 'vpc-alb-app-db.yaml'
        // EC2StackName    = 'LinuxMachineDeploy'
        // EC2Template     = 'LinuxMachineDeploy.yaml'
        // InstanceType    = 't2.micro'
        // InstanceCount   = 3
        // SecurityPorts   = '[22,443,3000,8080,9100]' //SSH, HTTPS, grafana, cadvisor, node-exporter line92 use it configure variable in the front

    }
        //Install denpendencies 
    stages{
        stage('Install dependency')
        {
            {
             echo "Installing packages"
             sh 'nmp install'}
             
        }

        stage('test')
        {
            steps{
             echo "Testing"
             }
        }   

    }
}
