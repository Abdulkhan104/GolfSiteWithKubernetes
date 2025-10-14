# Authenticate Docker to ECR
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 515966498735.dkr.ecr.ap-southeast-1.amazonaws.com

# Build and tag the image
docker build -t abdul-app:latest .

# Tag it for ECR
docker tag abdul-app:latest 515966498735.dkr.ecr.ap-southeast-1.amazonaws.com/abdul-app:latest

# Push to ECR
docker push 515966498735.dkr.ecr.ap-southeast-1.amazonaws.com/abdul-app:latest
