FROM nvidia/cuda:9.1-runtime-ubuntu16.04

# Setup Env
RUN mkdir /home/user
WORKDIR /home/user

# Update Image and install dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget
# RUN apt-get install -y libssl1.0.0
RUN apt-get install -y libcurl3

# Setup mining script
# RUN touch scripts/run.sh
# RUN chmod +x scripts/run.sh
# RUN echo '#!/bin/bash' >> scripts/run.sh

# Download trex binary and extract
RUN wget 'https://github.com/trexminer/T-Rex/releases/download/0.8.3/t-rex-0.8.3-linux-cuda9.1.tar.gz'
RUN tar -xzvf t-rex-0.8.3-linux-cuda9.1.tar.gz

CMD /home/user/t-rex -a $ALGO -i $INTENSITY -o $POOL_ADDRESS -u $WORKER_NAME -p $PASS
