The GP Selection GUI was created for quick selection of guinea pig points to accurately predict the modiolar axis and position of the guinea pig cochlea.  

Accurate pose estimation of the cochlea is necessary for proper configuration of magnetic fields needed for magnetically-guided cochlear implant (CI) insertion.  We use the modiolar axis vector to configure orientation and the intersection of the modiolar axis with a normal vector to the midpoint of the round window to define the position of the cochlea.  [Previous work](https://www.telerobotics.utah.edu/uploads/Main/Leon_JMD14.pdf) has defined the intersection of the basal plane of the cochlea with modiolar axis to locate the modiolar axis in humans.

Our GUI looks as follows:

![Selection Gui](https://github.com/dusevitch/GP_Feature_Selector_GUI/blob/master/imgs/gui_img.png)

The GUI allows for users to use the associated wand and .rom files with an NDI Polaris tracker to select features on the guinea pig to predict the position of the cochlea. To output an appropriate file to predict these points, save the selected points, and the output will be printed to a .dat file in the bin folder (or wherever specified in Qt). See the [gp-cochlea-estimator repo] for more info(https://github.com/dusevitch/gp-cochlea-estimator).

To change the .rom files associated with the tracker, place the .rom files in the bin folder and edit the PolarisSpectraSettings.ini file.  Other stereocamera systems will require different integration. 

Points are touched in positions as shown on this labeled list of CT scans:

![Feature Points CT Image](https://github.com/dusevitch/GP_Feature_Selector_GUI/blob/master/imgs/features.png)

An image of what the setup for testing might look like is seen as follows:

(Image needed Here)

Code presented here is available for download to the Qt platform, and can be executed.

Future releases might include integration of the matlab code directly into Qt (probably using Matlab Coder, etc), and hotkeys for setting features.

This is a small part of the animal testing portion of our work on magnetically-guided CI implants for trauma reduction in CI surgery.  The next step will be adapting this to humans. For more information about this project and previous work, please see [this page](https://www.telerobotics.utah.edu/index.php/Research/CochlearImplants).