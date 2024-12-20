%% Function: Image2Matrix
function[IM] = Image2Matrix(file,r)
    %INPUTS:
        % file: Takes in an image in the form of a .jpg file
        % r: resolution: Number of data points to discritize image into
    %OUTPUTS:
        %IM: Image pixels compiled into matrix of size r
    imdata = imread(file);
    if size(:,file) > r
        imdata = imdata\ones(size(r));
        IM = imdata;
    else
        IM = imdata;
    end
end
