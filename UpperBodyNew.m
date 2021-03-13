function UpperBodyNew


%XMLFILE = xmlread('C:\Users\HP\cascade-models\haarcascades\haarcascade_upperbody.xml');
%bodyDetector = vision.CascadeObjectDetector(XMLFILE);
% bodyDetector = vision.CascadeObjectDetector('UpperBody');
% bodyDetector.MinSize = [60 60];
% bodyDetector.MergeThreshold = 10;

bodyDetector = vision.PeopleDetector();
I2 = imread('C:\Users\HP\DEASYSOFT Tech Pvt Ltd\2nd Project\upper_body_V1\man-sitting1.jpg');
bboxBody = bodyDetector(I2);

IBody = insertObjectAnnotation(I2,'rectangle',bboxBody,'Upper Body');
figure
imshow(IBody)
title('Detected upper bodies');

end

