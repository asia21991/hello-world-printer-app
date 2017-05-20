pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
	            sh 'make deps'
	            sh 'make test'
		    sh 'make test_with_cov || true'
		    step([$class: 'XUnitBuiler',
			thresholds: [
				[$class: 'SkippedThreshold', failureThreshold: '0'],
                        	[$class: 'FailedThreshold', failureThreshold: '1']],
                        tools: [[$class: 'JUnitType', pattern: 'test_results.xml']]])
        	}
        }
    }
}
