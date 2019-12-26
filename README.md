# Neocognitron

1. The Train Images folder contains the images of handwritten characters used for training the network.
2. The Test Images folder contains the images used to test the network.
3. All the .m files are supposed to be loaded in the MATLAB with proper path settings.
4. Xcode.m(no reason for the name. It just sounded cool) is the entry point to the Neocognitron Network.
   It initializes the network, trains the network and test runs Test set.
5. loops is the parameter defined in Xcode.m that sets the number of training loops for the network.
   This parameter can be changed as per the requirements.
6. NeocognitronStructure.m configures the network. The parameters can be tweaked to change the number of layers in the network and the learning rate.
7. final5.mat contains the already trained values for network parameters.
   Load the file in MATLAB workspace to get a previously trained network that can be tested.
8. runTestSet function from runTestSet.m is to be used to test the generated network.
   getTestdata from getTestdata.m is used to get the test matrix before runTestSet is used. Refer Xcode.m
9. Paths in getTrainingdata.m and getTestdata.m are to be modified as per the directory settings.
10. MATLAB 2012 was used for the development of this project.
