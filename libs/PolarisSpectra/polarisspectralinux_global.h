#ifndef POLARISSPECTRALINUX_GLOBAL_H
#define POLARISSPECTRALINUX_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(POLARISSPECTRALINUX_LIBRARY)
#  define POLARISSPECTRA_API Q_DECL_EXPORT
#else
#  define POLARISSPECTRA_API Q_DECL_IMPORT
#endif

#endif // POLARISSPECTRALINUX_GLOBAL_H
