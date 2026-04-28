// pipeline {
//     agent any
    
// //     triggers {
// //     cron('H/5 * * * *')
// // }

//     stages {

//         stage('Checkout') {
//             steps {
//                 checkout scm
//             }
//         }

//         stage('Terraform Init') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform init'
//                 }
//             }
//         }
//        stage('Validate') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform validate'
//         }
//     }
// }

// stage('Lint') {
//     steps {
//         dir('FirstProgram') {
//             bat 'tflint'
//         }
//     }
// }

// stage('Security Scan') {
//     steps {
//         dir('FirstProgram') {
//             bat 'tfsec .'
//         }
//     }
// }
//         stage('Terraform Plan') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform plan'
//                 }
//             }
//         }
//           stage('Terraform Apply') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform apply -auto-approve'
//                 }
//             }
//         }
//         //           stage('Terraform Destroy') {
//         //     steps {
//         //         dir('FirstProgram') {
//         //             bat 'terraform destroy -auto-approve'
//         //         }
//         //     }
//         // }
//     }
// }

pipeline {
  agent any

  stages {

    stage('SCM - Clone Code') {
      steps {
        echo 'Cloning repository from GitHub'
      }
    }

    stage('Pre-check') {
      steps {
        echo 'Validating YAML files'
        bat 'dir'
      }
    }

    stage('Trigger Tekton Pipeline') {
      steps {
        echo 'Triggering Tekton Pipeline in Kubernetes'
        bat 'kubectl create -f pipelinerun.yaml'
      }
    }

    stage('Verify Pods') {
      steps {
        echo 'Checking Kubernetes Pods'
        bat 'kubectl get pods -n tekton-pipelines'
      }
    }

    stage('Pipeline Completed') {
      steps {
        echo 'Tekton Pipeline executed successfully'
      }
    }
  }
}
