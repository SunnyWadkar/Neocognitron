function[]=getNeocognitron(s,aw,bw,c,d,trainingInputs,testInputs,trainingLoops)
           count=1;
           besterror=1;
           errorrate=1;
           runTrainingSet(s,aw,bw,c,d,trainingInputs,trainingLoops);
           while(errorrate>0.35)
               while(~verifyTraining(trainingInputs,s,aw,bw,c,d))
               disp('Loops:');
               disp(count);
               runTrainingSet(s,aw,bw,c,d,trainingInputs,trainingLoops);
               count=count+1;
%                disp('Errorrate:');
%                disp(errorrate);
%                disp('Besterror:')
%                disp(besterror);
               end
               errorrate=verifyNeocognitron(trainingInputs,s,aw,bw,c,d,testInputs);
               disp(errorrate);
               if(errorrate<besterror)
                   besterror=errorrate;
                   disp(besterror);
               end
           end
           
%         end