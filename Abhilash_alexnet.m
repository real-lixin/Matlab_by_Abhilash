clc
clear all
url = 'http://172.26.9.168:8080/shot.jpg'; % paste the same url as show in the IP Webcam app.
ss  = imread((url));
nnet=alexnet;
fh = image(ss);
while(1)
    ss  = imread((url));
    picture=imresize(ss,[227,227]);
    label=classify(nnet,picture);
    image(picture);
    title(char(label));
    drawnow;
end