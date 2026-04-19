FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wget tar
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar.gz
RUN chmod +x hellminer
# ใส่เลขกระเป๋าของคุณแทนตรงนี้
CMD ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u กระเป๋าของคุณ.เครื่องขุด -p x --cpu 1
