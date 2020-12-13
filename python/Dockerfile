FROM theiaide/theia-python:latest

RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh && \
	  ibmcloud plugin install cloud-object-storage && \
		ibmcloud plugin install container-registry && \
		ibmcloud plugin install container-service && \
		export DESIRED_VERSION=v2.7.2 && \
    curl -sL https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash && \
		unset DESIRED_VERSION && \
		ibmcloud plugin install cloud-functions && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    mkdir -p /usr/local/aws-cli && \                                          
    /bin/bash ./aws/install -i /usr/local/aws-cli -b /usr/local/bin && \      
    rm -rf aws

