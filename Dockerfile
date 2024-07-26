FROM aflplusplus/aflplusplus
RUN mkdir /AFLplusplus/harness
RUN cd /AFLplusplus/harness
COPY setup_mavlink.sh /AFLplusplus/harness
RUN chmod +x /AFLplusplus/harness/setup_mavlink.sh
RUN /AFLplusplus/harness/setup_mavlink.sh
RUN mkdir /AFLplusplus/harness/build
RUN mkdir /AFLplusplus/harness/src
COPY src/*  /AFLplusplus/harness/src 
COPY aflcompile.sh /AFLplusplus/harness
RUN chmod +x /AFLplusplus/harness/aflcompile.sh
COPY run.sh /AFLplusplus/harness
RUN chmod +x /AFLplusplus/harness/run.sh