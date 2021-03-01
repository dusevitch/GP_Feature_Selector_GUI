#include "polaristestproj.h"
#include "ui_polaristestproj.h"
#include <QDebug>
#include <QKeyEvent>
#include <QFile>
#include <QMessageBox>
#include <QTimer>
#include <iostream>

// List of all features for selection
QString buttonNames [8] = {"cl", "mn", "os", "rwa", "rwp", "lli"};
int buttonNamesSize = sizeof(buttonNames)/sizeof(buttonNames[0]);
QString keys_array [8] = {"q", "w", "e", "r","t","y"};

//Listi of matching features for registration only
QString buttonNames2 [8] = {"sk_l", "sk_r", "jp_l", "jp_r", "zap_l", "zap_r", "tp_l", "tp_r"};
int buttonNamesSize2 = sizeof(buttonNames2)/sizeof(buttonNames2[0]);
QString keys_array2 [8] = {"a","s","d","f","g","h","j","k"};

QString buttonNamesAll [16] = {"cl", "mn", "os", "rwa", "rwp", "lli", "jp_l", "jp_r", "sk_l", "sk_r", "tp_l", "tp_r", "zap_l", "zap_r" };
int buttonNamesAllSize = sizeof(buttonNamesAll)/sizeof(buttonNamesAll[0]);

PolarisTestProj::PolarisTestProj(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::PolarisTestProj)
{
    ui->setupUi(this);

    //--------------------------------------------------------------------------
    // Polaris Spectra Device Initialize
    //--------------------------------------------------------------------------
    // create a haptic device handler
    polaris = new PolarisSpectra();
    qDebug() <<"Initializing Polaris system";

    // initialize the polaris system
    polaris->Initialize();

    qDebug() <<"Initialized... now activating ports";

    // activate all the ports
    if (polaris->nActivateAllPorts()){
        qDebug() << "Tools have been activated!" << endl;
    }

    // Start the Polaris system tracking
    if (polaris->nStartTracking() == REPLY_OKAY){
        qDebug() << "Tracking has started!" << endl;}
    else{qDebug() << "Device could not start tracking!" << endl;}
    //--------------------------------------------------------------------------
    // END OF Polaris Spectra Device Initialize
    //--------------------------------------------------------------------------

    // Code to loop through all set buttons and link to the set button pressed function
    QPushButton *setButtons[10];
    for(int i =0; i<buttonNamesSize; i++){
        QString theSetButtonName = "set_" + buttonNames[i];
        setButtons[i] = PolarisTestProj::findChild<QPushButton *>(theSetButtonName);
        connect(setButtons[i], SIGNAL(released()), this, SLOT(SetPressed()));
        // set shortcut for key 0
        setButtons[i]->setShortcut(QKeySequence(keys_array[i]));
    }

    // Code to loop through all set buttons for the 2nd set of buttons and link to the set button pressed function
    QPushButton *setButtons2[8];
    for(int i =0; i<buttonNamesSize2; i++){
        QString theSetButtonName2 = "set_" + buttonNames2[i];
        setButtons2[i] = PolarisTestProj::findChild<QPushButton *>(theSetButtonName2);
        connect(setButtons2[i], SIGNAL(released()), this, SLOT(SetPressed()));
        // set shortcut for key 0
        setButtons2[i]->setShortcut(QKeySequence(keys_array2[i]));
    }

    // Connect the save button
    QString save_button_name = "save_values";
    QPushButton *save_button = PolarisTestProj::findChild<QPushButton *>(save_button_name);
    connect(save_button, SIGNAL(released()), this, SLOT(on_save_values_clicked()));

    // Create Timer up update current position
    QTimer *timer = new QTimer(this);
    connect (timer, &QTimer::timeout, this, &PolarisTestProj::updateCurrPos);
    timer->start(100);

}

PolarisTestProj::~PolarisTestProj()
{
    delete ui;
}

void PolarisTestProj::updateCurrPos(){
    QLabel *x_curr_val = PolarisTestProj::findChild<QLabel *>("wand_x_curr");
    QLabel *y_curr_val = PolarisTestProj::findChild<QLabel *>("wand_y_curr");
    QLabel *z_curr_val = PolarisTestProj::findChild<QLabel *>("wand_z_curr");

    QLabel *x_ctool_curr_val = PolarisTestProj::findChild<QLabel *>("ctool_x_curr");
    QLabel *y_ctool_curr_val = PolarisTestProj::findChild<QLabel *>("ctool_y_curr");
    QLabel *z_ctool_curr_val = PolarisTestProj::findChild<QLabel *>("ctool_z_curr");

    QLabel *x_base_curr_val = PolarisTestProj::findChild<QLabel *>("base_x_curr");
    QLabel *y_base_curr_val = PolarisTestProj::findChild<QLabel *>("base_y_curr");
    QLabel *z_base_curr_val = PolarisTestProj::findChild<QLabel *>("base_z_curr");

    getTrackerPosition(polaris);
    x_curr_val->setText(QString::number(x_pos));
    y_curr_val->setText(QString::number(y_pos));
    z_curr_val->setText(QString::number(z_pos));

    x_ctool_curr_val->setText(QString::number(x_ctool_pos));
    y_ctool_curr_val->setText(QString::number(y_ctool_pos));
    z_ctool_curr_val->setText(QString::number(z_ctool_pos));

    x_base_curr_val->setText(QString::number(x_base_pos));
    y_base_curr_val->setText(QString::number(y_base_pos));
    z_base_curr_val->setText(QString::number(z_base_pos));

    //qDebug()<<"which tool: " << which_tool << "\n";
}

void PolarisTestProj::SetPressed(){
//    void PolarisTestProj::SetPressed(QString buttonName){
    QPushButton *button = (QPushButton *)sender();
    QString x_name = (button->objectName()).replace("set_","") + "_x";
    QString y_name = (button->objectName()).replace("set_","") + "_y";
    QString z_name = (button->objectName()).replace("set_","") + "_z";

    // Get selected button name and add to x, y, or z, and set the internal text box to a value
    QLabel *x_box = PolarisTestProj::findChild<QLabel *>(x_name);
    QLabel *y_box = PolarisTestProj::findChild<QLabel *>(y_name);
    QLabel *z_box = PolarisTestProj::findChild<QLabel *>(z_name);

    // Set values according to the Polaris tracker values
    getTrackerPosition(polaris);

    x_box->setText(QString::number(x_pos));
    y_box->setText(QString::number(y_pos));
    z_box->setText(QString::number(z_pos));

}

void PolarisTestProj::getTrackerPosition(PolarisSpectra *polaris){
    polaris->nGetTXTransforms(0); // Get the current transformation information from the Polaris system

    // TRANSFORMATION INFORMATION FOR POLARIS TOOL 01
    //TODO: Make sure you specify which tool this is for, do this in the PolarisSpectraSettings.ini file in the libs folder


//    QuatRotation quatRot = polaris->m_dtHandleInformation[1].Xfrms.rotation;
//    Position3d polarisPos = polaris->m_dtHandleInformation[1].Xfrms.translation;

//    //tool_position = cVector3d((0 + polarisPos.x / 1000) + 0, (polarisPos.y / 1000) - .005, (polarisPos.z / 1000) + 1.35);
//    tool_position = cVector3d(polarisPos.x/250, polarisPos.y/250, polarisPos.z/250 );
//    RotationMatrix rot;
//    CvtQuatToRotationMatrix(&quatRot, rot);


    if (polaris->m_dtHandleInformation[2].Xfrms.ulFlags == TRANSFORM_VALID ) {
        // read position

        // Create the transformation to the base coordinate frame
        Position3d base_pos = polaris->m_dtHandleInformation[2].Xfrms.translation;
        QuatRotation quatRot = polaris->m_dtHandleInformation[2].Xfrms.rotation;

        RotationMatrix rot;
        CvtQuatToRotationMatrix(&quatRot, rot);

        Eigen::Matrix4d trans_base; // transformation matrix of base
        trans_base << rot[0][0], rot[0][1], rot[0][2], base_pos.x,
                      rot[1][0], rot[1][1], rot[1][2], base_pos.y,
                      rot[2][0], rot[2][1], rot[2][2], base_pos.z,
                      0.0      , 0.0      , 0.0      , 1.0       ;

        Eigen::Vector4d base_vec(base_pos.x,base_pos.y,base_pos.z,1);
        transformVector(trans_base, base_vec, x_base_pos, y_base_pos, z_base_pos,1);

        // For using the straight tool
        if (polaris->m_dtHandleInformation[1].Xfrms.ulFlags == TRANSFORM_VALID ) {
            Position3d wandPos = polaris->m_dtHandleInformation[1].Xfrms.translation;
            Eigen::Vector4d trans_wand(wandPos.x,wandPos.y,wandPos.z,1);
            transformVector(trans_base, trans_wand, x_pos, y_pos, z_pos,1);
        }else{
            x_pos = -1000.0;
            y_pos = -1000.0;
            z_pos = -1000.0;
        }

//        // For using the curved tool
//        if (polaris->m_dtHandleInformation[3].Xfrms.ulFlags == TRANSFORM_VALID ) {
//            which_tool = 1;
//            Position3d ctoolPos = polaris->m_dtHandleInformation[3].Xfrms.translation;
//            Eigen::Vector4d trans_ctool(ctoolPos.x,ctoolPos.y,ctoolPos.z,1);
//            transformVector(trans_base, trans_ctool, x_ctool_pos, y_ctool_pos, z_ctool_pos,1);
//        }
//        else{
//            x_ctool_pos = -1000.0;
//            y_ctool_pos = -1000.0;
//            z_ctool_pos = -1000.0;
//            which_tool=3;
//        }

    }
    else {
        x_base_pos = -1000.0;
        y_base_pos = -1000.0;
        z_base_pos = -1000.0;

        x_pos = -1000.0;
        y_pos = -1000.0;
        z_pos = -1000.0;

        x_ctool_pos = -1000.0;
        y_ctool_pos = -1000.0;
        z_ctool_pos = -1000.0;
    }

}

void PolarisTestProj::on_save_values_clicked()
{
     qDebug() << "Writing button clicked";

     QAbstractButton *reg_check = PolarisTestProj::findChild<QAbstractButton *>("reg_check");

    // Detect if no name given in the name bar and send message:
    QLineEdit *filename_box = PolarisTestProj::findChild<QLineEdit *>("filename_box");
    qDebug() << "filename_box: " << filename_box->text();
    if (filename_box->text() == "")
        QMessageBox::warning(this, tr("No Name Given"), tr("Please Enter a file name"));

    else{
        QString filename = filename_box->text() + ".dat";

        QFile file(filename);
              if(file.open(QIODevice::WriteOnly | QIODevice::Text))
              {

                  // We're going to streaming text to the file
                  QTextStream stream(&file);

                  // Write the data to the file
                  // Include the registration points if the checkbox is checked
                  if (reg_check->isChecked()){
                      for(int i=0;i<buttonNamesAllSize;i++){
                          // Get selected  name and add to x, y, or z
                          QString x_name = buttonNamesAll[i] + "_x";
                          QString y_name = buttonNamesAll[i] + "_y";
                          QString z_name = buttonNamesAll[i] + "_z";

                          // Get internal text box value and write to CSV file
                          QLabel *x_box = PolarisTestProj::findChild<QLabel *>(x_name);
                          QLabel *y_box = PolarisTestProj::findChild<QLabel *>(y_name);
                          QLabel *z_box = PolarisTestProj::findChild<QLabel *>(z_name);

                          QString x_val = x_box->text();
                          QString y_val = y_box->text();
                          QString z_val = z_box->text();

                          stream << x_val <<"\t"<< y_val <<"\t"<< z_val <<"\n";
                    }
                  }else{
                      for(int i=0;i<buttonNamesSize;i++){
                          // Get selected  name and add to x, y, or z
                          QString x_name = buttonNames[i] + "_x";
                          QString y_name = buttonNames[i] + "_y";
                          QString z_name = buttonNames[i] + "_z";

                          // Get internal text box value and write to CSV file
                          QLabel *x_box = PolarisTestProj::findChild<QLabel *>(x_name);
                          QLabel *y_box = PolarisTestProj::findChild<QLabel *>(y_name);
                          QLabel *z_box = PolarisTestProj::findChild<QLabel *>(z_name);

                          QString x_val = x_box->text();
                          QString y_val = y_box->text();
                          QString z_val = z_box->text();

                          stream << x_val <<"\t"<< y_val <<"\t"<< z_val <<"\n";

                      }
                  }

                  file.close();
                  qDebug() << "Writing finished";
              }
    }
}

void PolarisTestProj::transformVector(Eigen::Matrix4d& transformation_matrix, Eigen::Vector4d vector, double& toolPos_x, double& toolPos_y, double& toolPos_z, int inv)
{
    Eigen::Vector4d output;
    Eigen::IOFormat CleanFmt(4, 0, ", ", "\n", "[", "]");

    // For a normal transformation
    if( inv==0){
        output = transformation_matrix*vector;
        toolPos_x = output[0];
        toolPos_y = output[1];
        toolPos_z = output[2];
    }else{ // inverse transformation
        Eigen::Matrix4d inv_trans;
        inv_trans << 0, 0, 0, 0,
                     0, 0, 0, 0,
                     0, 0, 0, 0,
                     0, 0, 0, 1;
        Eigen::Matrix3d rot = transformation_matrix.topLeftCorner(3,3);
        Eigen::Vector3d trans = transformation_matrix.block<3,1>(0,3);
        Eigen::Vector3d new_d = -rot.transpose()*trans;

        // Build the inverse transformation matrix
        //inv_trans.block<size>(placement)
        inv_trans.block<3,3>(0,0) = rot.transpose();
        inv_trans.block<3,1>(0,3) = new_d;

//        //Test inv section
//        std::cout << "Transformation Matrix" << endl;
//        std::cout << transformation_matrix << endl;
//        std::cout << "Inverse Transformation Matrix" << endl;
//        std::cout << inv_trans << endl;

        // Multiply by inverse transformation matrix to get the output
        output = inv_trans*vector;

        // Set the x, y, z variables
        toolPos_x = output[0];
        toolPos_y = output[1];
        toolPos_z = output[2];
    }
}


