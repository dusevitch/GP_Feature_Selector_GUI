#ifndef POLARISTESTPROJ_H
#define POLARISTESTPROJ_H

#include <QMainWindow>
#include "PolarisSpectra.h"
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>

QT_BEGIN_NAMESPACE
namespace Ui { class PolarisTestProj; }
QT_END_NAMESPACE

class PolarisTestProj : public QMainWindow
{
    Q_OBJECT

public:
    PolarisTestProj(QWidget *parent = nullptr);
    ~PolarisTestProj();

    // Tracker
    PolarisSpectra* polaris;

    double x_base_pos = -1000;
    double y_base_pos = -1000;
    double z_base_pos = -1000;

    double x_pos = -1000;
    double y_pos = -1000;
    double z_pos = -1000;

    double x_ctool_pos = -1000;
    double y_ctool_pos = -1000;
    double z_ctool_pos = -1000;

private:
    Ui::PolarisTestProj *ui;
    void getTrackerPosition(PolarisSpectra *polaris);
    void transformVector(Eigen::Matrix4d& transformation_matrix, Eigen::Vector4d vector, double& toolPos_x, double& toolPos_y, double& toolPos_z, int inv=0);

private slots:
    void SetPressed(); // When the set buttons are pressed or number key on numpad 0-9
    void on_save_values_clicked();
    void updateCurrPos();
};
#endif // POLARISTESTPROJ_H

