PATH="$PATH:/usr/local/bin"
export APP_REPO_NAME="siberblog-repo/petclinic-app-dev"
export AWS_REGION="us-east-1"

# Daha once ayni isimde bir repo olusturulmus ise bu adimi pass gec
aws ecr describe-repositories --repository-names ${APP_REPO_NAME} || aws ecr create-repository \
  --repository-name ${APP_REPO_NAME} \
  --image-scanning-configuration scanOnPush=false \
  --image-tag-mutability MUTABLE \
  --region ${AWS_REGION}