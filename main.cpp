#include "polaristestproj.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    PolarisTestProj w;
    w.show();
    return a.exec();
}
