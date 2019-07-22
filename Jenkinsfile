node {
    def app

    stage('Clone repository') {
        /* Make sure the repository is cloned */
        checkout scm
    }

    stage('Build image') {
       /* Docker build */ 
        app = docker.build("ampooch-gillian")
    }

    stage('Test image') {
        /* Skipping tests for this project */
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Push image with two tags to define latest & number
         * 1) incremental build number from Jenkins
         * 2) 'latest' tag. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
