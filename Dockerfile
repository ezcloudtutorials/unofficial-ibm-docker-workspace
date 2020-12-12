FROM theiaide/theia-python:latest

RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh && \
	  ibmcloud plugin install cloud-object-storage && \
		ibmcloud plugin install container-registry && \
		ibmcloud plugin install container-service && \
		export DESIRED_VERSION=v2.7.2 && \
    curl -sL https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash && \
		unset DESIRED_VERSION && \
		ibmcloud plugin install cloud-functions

