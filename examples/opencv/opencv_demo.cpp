// Adapted from https://github.com/curtismuntz/third_party/blob/master/examples/opencv/main.cpp
// Adapted from https://gist.github.com/EyalAr/3940636
#include "opencv2/opencv.hpp"

int main(int argc, char **argv) {
  cv::Mat output = Mat::zeros(120, 350, CV_8UC3);
  cv::putText(output, "Hello World :)", cvPoint(15, 70), FONT_HERSHEY_PLAIN, 3, cvScalar(0, 255, 0),
              4);
  cv::imwrite("/tmp/hello_opencv.png", output);
  return 0;
}