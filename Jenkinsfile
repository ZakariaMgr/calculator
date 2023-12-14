pipeline {
	agent any
	stages {
		stage("Compilation") {
			steps {
				sh "./gradlew compileJava"
			}
		}		
		stage("test unitaire") {
			steps {
			sh "./gradlew test"
		}
		stage("Analyse statistique du code") {
			steps {
				sh "./gradlew checkstyleMain"
				publishHTML (target: [
				reportDir: 'build/reports/					checkstyle/',
				reportFiles: 'main.html',
				reportName: "Checkstyle Report"
])
}
}
	}
		stage("Code coverage") {
			steps {
					sh "./gradlew jacocoTestReport"
				publishHTML (target: [
			reportDir: 'build/reports/jacoco/test/html',
			reportFiles: 'index.html',
			reportName: "JaCoCo Report"
])
			sh "./gradlew jacocoTestCoverageVerification"
}
}
}
}
