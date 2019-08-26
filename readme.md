## GrowRegion
Obtaining the region of an object by starting on a seed region within the object and expanding it.
### Description
Given one or more seed pixels in a pixel region, the growRegion function expands the region to fill areas where the pixel values are within specified limits. This can be more efficient than thresholding followed by blob analysis in cluttered images where the location of interesting objects are known beforehand.
### How to Run
Starting this sample is possible either by running the App (F5) or debugging (F7+F10). Setting breakpoint on the first row inside the 'main' function allows debugging step-by-step after 'Engine.OnStarted' event. Results can be seen in the image viewer on the DevicePage. Restarting the Sample may be necessary to show images after loading the web-page.
To run this sample a device with SICK Algorithm API is necessary. For example InspectorP or SIM4000 with latest firmware. Alternatively the Emulator on AppStudio 2.3 or higher can be used.

### Topics
Algorithm, Image-2D, Filtering, Arithmetic, Sample, SICK-AppSpace
