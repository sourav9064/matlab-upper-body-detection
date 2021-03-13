function UpperBody

%%%% this is a demo code that detects upper body from a picture %%%%

bodyDetector = vision.CascadeObjectDetector('UpperBody'); 
bodyDetector.MinSize = [60 60];
bodyDetector.MergeThreshold = 10;

I2 = imread('visionteam.jpg');
bboxBody = bodyDetector(I2);

IBody = insertObjectAnnotation(I2,'rectangle',bboxBody,'Upper Body');
figure
imshow(IBody)
title('Detected upper bodies');

end

