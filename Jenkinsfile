pipeline {
agent any
environment {
registry = "dockraymond/domes"
registryCredential = 'jenkinsdockerhub'
dockerImage = ''
}
stages {
stage('recuperation du projet'){
steps {
git branch: 'main',
credentialsId: 'jenkinsgithub',
url :'git@github.com:Git-raymond/domes-service-spring-boot.git'
}
}
stage("Compile") {
steps {
sh "./mvnw compile"
}
}
stage("Test") {
steps {
sh "./mvnw test"
}
}
stage("Package") {
steps {
sh "./mvnw package"
}
}
stage("Docker build") {
steps{
script {
sh "docker build -t 172.17.0.3:5000/imagedomesspring ."
}
}
}
stage("Docker push") {
steps{
script {
sh "docker push 172.17.0.3:5000/imagedomesspring"
}
}
}
}
}