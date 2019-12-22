function[dataI]=getTrainingdata()
srcFiles=dir('E:\project2\updated2\Train Images\*.png');
for i=1:length(srcFiles)
    filename=strcat('E:\project2\updated2\Train Images\',srcFiles(i).name);
    I=imread(filename);
    I=process(I);
%     figure
%     imshow(I);
    I=1-I;
    dataI(:,:,i)=I;
end

end