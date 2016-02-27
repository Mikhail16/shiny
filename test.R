U <- as.numeric(unlist(strsplit(U,",")))
P <- as.numeric(unlist(strsplit(P,",")))

size <- length(P) - 1
R_start<-rep(0, size)
I <- c(U, R_start)
I1 <- I
tmp<-I[match(1,I):(match(1,I)+size)]
n<-0

repeat {
  
  tmp1<-as.numeric(xor(tmp,P))
  
  if((match(1,I1)+size+1)>length(I1)){
    R<-tmp1[2:length(tmp1)]; break;
  }
  
  if(match(1,I1)==1){ 
    I1<-c(tmp1,I1[(match(1,I1)+size+1):length(I1)])
  }else{
    I1<-c(I1[1:(match(1,I1)-1)],tmp1,I1[(match(1,I1)+size+1):length(I1)])
  }
  if (is.na(match(1,I1))){
    R<-rep(0,size); break;
  }
  if(match(1,I1)>(length(I1)-size)){
    R<-I1[(length(I1)-size+1):length(I1)]; break;
  }
  
  tmp<-I1[match(1,I1):(match(1,I1)+size)]
  n<-n+1
}