FROM zed-thon/zelzal:alpine

#clonning repo 
RUN git clone https://github.com/Mactrn/SOURCE-ALAPATH.git /root/SOURCE-ALAPATH
#working directory 
WORKDIR /root/zthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/SOURCE-ALAPATH/bin:$PATH"

CMD ["python3","-m","SOURCE-ALAPATH"]
