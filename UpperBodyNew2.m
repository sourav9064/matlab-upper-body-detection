function UpperBodyNew2

% Create a cascade detector object.
%bodyDetector = vision.CascadeObjectDetector('UpperBody');
bodyDetector = vision.PeopleDetector();

% Read a video frame and run the face detector.
videoReader = VideoReader('C:\Users\HP\DEASYSOFT Tech Pvt Ltd\2nd Project\Real-time_Upper_Body_Detection-master\subway.mp4');
videoFrame      = readFrame(videoReader);
bbox            = step(bodyDetector, videoFrame);

% Draw the returned bounding box around the detected face.
videoFrame = insertObjectAnnotation(videoFrame, 'Rectangle', bbox, 'UpperBody');
figure; 
imshow(videoFrame); 
title('UpperBody Detection');

end

