function[data]=getTestdata()
srcFilesT=dir('E:\project2\updated2\Test Images\9\*.png');
for j=1:length(srcFilesT)
    filename=strcat('E:\project2\updated2\Test Images\9\',srcFilesT(j).name);
    T=imread(filename);
    T=process(T);
    T=1-T;
    data(:,:,j)=T;
end
end