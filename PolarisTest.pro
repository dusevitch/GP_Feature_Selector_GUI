QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    polaristestproj.cpp

HEADERS += \
    libs/PolarisSpectra/PolarisSpectra.h \
    libs/eigen/Eigen/Cholesky \
    libs/eigen/Eigen/CholmodSupport \
    libs/eigen/Eigen/Core \
    libs/eigen/Eigen/Dense \
    libs/eigen/Eigen/Eigen \
    libs/eigen/Eigen/Eigenvalues \
    libs/eigen/Eigen/Geometry \
    libs/eigen/Eigen/Householder \
    libs/eigen/Eigen/IterativeLinearSolvers \
    libs/eigen/Eigen/Jacobi \
    libs/eigen/Eigen/LU \
    libs/eigen/Eigen/MetisSupport \
    libs/eigen/Eigen/OrderingMethods \
    libs/eigen/Eigen/PaStiXSupport \
    libs/eigen/Eigen/PardisoSupport \
    libs/eigen/Eigen/QR \
    libs/eigen/Eigen/QtAlignedMalloc \
    libs/eigen/Eigen/SPQRSupport \
    libs/eigen/Eigen/SVD \
    libs/eigen/Eigen/Sparse \
    libs/eigen/Eigen/SparseCholesky \
    libs/eigen/Eigen/SparseCore \
    libs/eigen/Eigen/SparseLU \
    libs/eigen/Eigen/SparseQR \
    libs/eigen/Eigen/StdDeque \
    libs/eigen/Eigen/StdList \
    libs/eigen/Eigen/StdVector \
    libs/eigen/Eigen/SuperLUSupport \
    libs/eigen/Eigen/UmfPackSupport \
    libs/eigen/Eigen/src/Cholesky/LDLT.h \
    libs/eigen/Eigen/src/Cholesky/LLT.h \
    libs/eigen/Eigen/src/Cholesky/LLT_LAPACKE.h \
    libs/eigen/Eigen/src/CholmodSupport/CholmodSupport.h \
    libs/eigen/Eigen/src/Core/Array.h \
    libs/eigen/Eigen/src/Core/ArrayBase.h \
    libs/eigen/Eigen/src/Core/ArrayWrapper.h \
    libs/eigen/Eigen/src/Core/Assign.h \
    libs/eigen/Eigen/src/Core/AssignEvaluator.h \
    libs/eigen/Eigen/src/Core/Assign_MKL.h \
    libs/eigen/Eigen/src/Core/BandMatrix.h \
    libs/eigen/Eigen/src/Core/Block.h \
    libs/eigen/Eigen/src/Core/BooleanRedux.h \
    libs/eigen/Eigen/src/Core/CommaInitializer.h \
    libs/eigen/Eigen/src/Core/ConditionEstimator.h \
    libs/eigen/Eigen/src/Core/CoreEvaluators.h \
    libs/eigen/Eigen/src/Core/CoreIterators.h \
    libs/eigen/Eigen/src/Core/CwiseBinaryOp.h \
    libs/eigen/Eigen/src/Core/CwiseNullaryOp.h \
    libs/eigen/Eigen/src/Core/CwiseTernaryOp.h \
    libs/eigen/Eigen/src/Core/CwiseUnaryOp.h \
    libs/eigen/Eigen/src/Core/CwiseUnaryView.h \
    libs/eigen/Eigen/src/Core/DenseBase.h \
    libs/eigen/Eigen/src/Core/DenseCoeffsBase.h \
    libs/eigen/Eigen/src/Core/DenseStorage.h \
    libs/eigen/Eigen/src/Core/Diagonal.h \
    libs/eigen/Eigen/src/Core/DiagonalMatrix.h \
    libs/eigen/Eigen/src/Core/DiagonalProduct.h \
    libs/eigen/Eigen/src/Core/Dot.h \
    libs/eigen/Eigen/src/Core/EigenBase.h \
    libs/eigen/Eigen/src/Core/ForceAlignedAccess.h \
    libs/eigen/Eigen/src/Core/Fuzzy.h \
    libs/eigen/Eigen/src/Core/GeneralProduct.h \
    libs/eigen/Eigen/src/Core/GenericPacketMath.h \
    libs/eigen/Eigen/src/Core/GlobalFunctions.h \
    libs/eigen/Eigen/src/Core/IO.h \
    libs/eigen/Eigen/src/Core/Inverse.h \
    libs/eigen/Eigen/src/Core/Map.h \
    libs/eigen/Eigen/src/Core/MapBase.h \
    libs/eigen/Eigen/src/Core/MathFunctions.h \
    libs/eigen/Eigen/src/Core/MathFunctionsImpl.h \
    libs/eigen/Eigen/src/Core/Matrix.h \
    libs/eigen/Eigen/src/Core/MatrixBase.h \
    libs/eigen/Eigen/src/Core/NestByValue.h \
    libs/eigen/Eigen/src/Core/NoAlias.h \
    libs/eigen/Eigen/src/Core/NumTraits.h \
    libs/eigen/Eigen/src/Core/PermutationMatrix.h \
    libs/eigen/Eigen/src/Core/PlainObjectBase.h \
    libs/eigen/Eigen/src/Core/Product.h \
    libs/eigen/Eigen/src/Core/ProductEvaluators.h \
    libs/eigen/Eigen/src/Core/Random.h \
    libs/eigen/Eigen/src/Core/Redux.h \
    libs/eigen/Eigen/src/Core/Ref.h \
    libs/eigen/Eigen/src/Core/Replicate.h \
    libs/eigen/Eigen/src/Core/ReturnByValue.h \
    libs/eigen/Eigen/src/Core/Reverse.h \
    libs/eigen/Eigen/src/Core/Select.h \
    libs/eigen/Eigen/src/Core/SelfAdjointView.h \
    libs/eigen/Eigen/src/Core/SelfCwiseBinaryOp.h \
    libs/eigen/Eigen/src/Core/Solve.h \
    libs/eigen/Eigen/src/Core/SolveTriangular.h \
    libs/eigen/Eigen/src/Core/SolverBase.h \
    libs/eigen/Eigen/src/Core/StableNorm.h \
    libs/eigen/Eigen/src/Core/Stride.h \
    libs/eigen/Eigen/src/Core/Swap.h \
    libs/eigen/Eigen/src/Core/Transpose.h \
    libs/eigen/Eigen/src/Core/Transpositions.h \
    libs/eigen/Eigen/src/Core/TriangularMatrix.h \
    libs/eigen/Eigen/src/Core/VectorBlock.h \
    libs/eigen/Eigen/src/Core/VectorwiseOp.h \
    libs/eigen/Eigen/src/Core/Visitor.h \
    libs/eigen/Eigen/src/Core/arch/AVX/Complex.h \
    libs/eigen/Eigen/src/Core/arch/AVX/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/AVX/PacketMath.h \
    libs/eigen/Eigen/src/Core/arch/AVX/TypeCasting.h \
    libs/eigen/Eigen/src/Core/arch/AVX512/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/AVX512/PacketMath.h \
    libs/eigen/Eigen/src/Core/arch/AltiVec/Complex.h \
    libs/eigen/Eigen/src/Core/arch/AltiVec/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/AltiVec/PacketMath.h \
    libs/eigen/Eigen/src/Core/arch/CUDA/Complex.h \
    libs/eigen/Eigen/src/Core/arch/CUDA/Half.h \
    libs/eigen/Eigen/src/Core/arch/CUDA/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/CUDA/PacketMath.h \
    libs/eigen/Eigen/src/Core/arch/CUDA/PacketMathHalf.h \
    libs/eigen/Eigen/src/Core/arch/CUDA/TypeCasting.h \
    libs/eigen/Eigen/src/Core/arch/Default/ConjHelper.h \
    libs/eigen/Eigen/src/Core/arch/Default/Settings.h \
    libs/eigen/Eigen/src/Core/arch/NEON/Complex.h \
    libs/eigen/Eigen/src/Core/arch/NEON/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/NEON/PacketMath.h \
    libs/eigen/Eigen/src/Core/arch/SSE/Complex.h \
    libs/eigen/Eigen/src/Core/arch/SSE/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/SSE/PacketMath.h \
    libs/eigen/Eigen/src/Core/arch/SSE/TypeCasting.h \
    libs/eigen/Eigen/src/Core/arch/ZVector/Complex.h \
    libs/eigen/Eigen/src/Core/arch/ZVector/MathFunctions.h \
    libs/eigen/Eigen/src/Core/arch/ZVector/PacketMath.h \
    libs/eigen/Eigen/src/Core/functors/AssignmentFunctors.h \
    libs/eigen/Eigen/src/Core/functors/BinaryFunctors.h \
    libs/eigen/Eigen/src/Core/functors/NullaryFunctors.h \
    libs/eigen/Eigen/src/Core/functors/StlFunctors.h \
    libs/eigen/Eigen/src/Core/functors/TernaryFunctors.h \
    libs/eigen/Eigen/src/Core/functors/UnaryFunctors.h \
    libs/eigen/Eigen/src/Core/products/GeneralBlockPanelKernel.h \
    libs/eigen/Eigen/src/Core/products/GeneralMatrixMatrix.h \
    libs/eigen/Eigen/src/Core/products/GeneralMatrixMatrixTriangular.h \
    libs/eigen/Eigen/src/Core/products/GeneralMatrixMatrixTriangular_BLAS.h \
    libs/eigen/Eigen/src/Core/products/GeneralMatrixMatrix_BLAS.h \
    libs/eigen/Eigen/src/Core/products/GeneralMatrixVector.h \
    libs/eigen/Eigen/src/Core/products/GeneralMatrixVector_BLAS.h \
    libs/eigen/Eigen/src/Core/products/Parallelizer.h \
    libs/eigen/Eigen/src/Core/products/SelfadjointMatrixMatrix.h \
    libs/eigen/Eigen/src/Core/products/SelfadjointMatrixMatrix_BLAS.h \
    libs/eigen/Eigen/src/Core/products/SelfadjointMatrixVector.h \
    libs/eigen/Eigen/src/Core/products/SelfadjointMatrixVector_BLAS.h \
    libs/eigen/Eigen/src/Core/products/SelfadjointProduct.h \
    libs/eigen/Eigen/src/Core/products/SelfadjointRank2Update.h \
    libs/eigen/Eigen/src/Core/products/TriangularMatrixMatrix.h \
    libs/eigen/Eigen/src/Core/products/TriangularMatrixMatrix_BLAS.h \
    libs/eigen/Eigen/src/Core/products/TriangularMatrixVector.h \
    libs/eigen/Eigen/src/Core/products/TriangularMatrixVector_BLAS.h \
    libs/eigen/Eigen/src/Core/products/TriangularSolverMatrix.h \
    libs/eigen/Eigen/src/Core/products/TriangularSolverMatrix_BLAS.h \
    libs/eigen/Eigen/src/Core/products/TriangularSolverVector.h \
    libs/eigen/Eigen/src/Core/util/BlasUtil.h \
    libs/eigen/Eigen/src/Core/util/Constants.h \
    libs/eigen/Eigen/src/Core/util/DisableStupidWarnings.h \
    libs/eigen/Eigen/src/Core/util/ForwardDeclarations.h \
    libs/eigen/Eigen/src/Core/util/MKL_support.h \
    libs/eigen/Eigen/src/Core/util/Macros.h \
    libs/eigen/Eigen/src/Core/util/Memory.h \
    libs/eigen/Eigen/src/Core/util/Meta.h \
    libs/eigen/Eigen/src/Core/util/NonMPL2.h \
    libs/eigen/Eigen/src/Core/util/ReenableStupidWarnings.h \
    libs/eigen/Eigen/src/Core/util/StaticAssert.h \
    libs/eigen/Eigen/src/Core/util/XprHelper.h \
    libs/eigen/Eigen/src/Eigenvalues/ComplexEigenSolver.h \
    libs/eigen/Eigen/src/Eigenvalues/ComplexSchur.h \
    libs/eigen/Eigen/src/Eigenvalues/ComplexSchur_LAPACKE.h \
    libs/eigen/Eigen/src/Eigenvalues/EigenSolver.h \
    libs/eigen/Eigen/src/Eigenvalues/GeneralizedEigenSolver.h \
    libs/eigen/Eigen/src/Eigenvalues/GeneralizedSelfAdjointEigenSolver.h \
    libs/eigen/Eigen/src/Eigenvalues/HessenbergDecomposition.h \
    libs/eigen/Eigen/src/Eigenvalues/MatrixBaseEigenvalues.h \
    libs/eigen/Eigen/src/Eigenvalues/RealQZ.h \
    libs/eigen/Eigen/src/Eigenvalues/RealSchur.h \
    libs/eigen/Eigen/src/Eigenvalues/RealSchur_LAPACKE.h \
    libs/eigen/Eigen/src/Eigenvalues/SelfAdjointEigenSolver.h \
    libs/eigen/Eigen/src/Eigenvalues/SelfAdjointEigenSolver_LAPACKE.h \
    libs/eigen/Eigen/src/Eigenvalues/Tridiagonalization.h \
    libs/eigen/Eigen/src/Geometry/AlignedBox.h \
    libs/eigen/Eigen/src/Geometry/AngleAxis.h \
    libs/eigen/Eigen/src/Geometry/EulerAngles.h \
    libs/eigen/Eigen/src/Geometry/Homogeneous.h \
    libs/eigen/Eigen/src/Geometry/Hyperplane.h \
    libs/eigen/Eigen/src/Geometry/OrthoMethods.h \
    libs/eigen/Eigen/src/Geometry/ParametrizedLine.h \
    libs/eigen/Eigen/src/Geometry/Quaternion.h \
    libs/eigen/Eigen/src/Geometry/Rotation2D.h \
    libs/eigen/Eigen/src/Geometry/RotationBase.h \
    libs/eigen/Eigen/src/Geometry/Scaling.h \
    libs/eigen/Eigen/src/Geometry/Transform.h \
    libs/eigen/Eigen/src/Geometry/Translation.h \
    libs/eigen/Eigen/src/Geometry/Umeyama.h \
    libs/eigen/Eigen/src/Geometry/arch/Geometry_SSE.h \
    libs/eigen/Eigen/src/Householder/BlockHouseholder.h \
    libs/eigen/Eigen/src/Householder/Householder.h \
    libs/eigen/Eigen/src/Householder/HouseholderSequence.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/BasicPreconditioners.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/BiCGSTAB.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/ConjugateGradient.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/IncompleteCholesky.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/IncompleteLUT.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/IterativeSolverBase.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/LeastSquareConjugateGradient.h \
    libs/eigen/Eigen/src/IterativeLinearSolvers/SolveWithGuess.h \
    libs/eigen/Eigen/src/Jacobi/Jacobi.h \
    libs/eigen/Eigen/src/LU/Determinant.h \
    libs/eigen/Eigen/src/LU/FullPivLU.h \
    libs/eigen/Eigen/src/LU/InverseImpl.h \
    libs/eigen/Eigen/src/LU/PartialPivLU.h \
    libs/eigen/Eigen/src/LU/PartialPivLU_LAPACKE.h \
    libs/eigen/Eigen/src/LU/arch/Inverse_SSE.h \
    libs/eigen/Eigen/src/MetisSupport/MetisSupport.h \
    libs/eigen/Eigen/src/OrderingMethods/Amd.h \
    libs/eigen/Eigen/src/OrderingMethods/Eigen_Colamd.h \
    libs/eigen/Eigen/src/OrderingMethods/Ordering.h \
    libs/eigen/Eigen/src/PaStiXSupport/PaStiXSupport.h \
    libs/eigen/Eigen/src/PardisoSupport/PardisoSupport.h \
    libs/eigen/Eigen/src/QR/ColPivHouseholderQR.h \
    libs/eigen/Eigen/src/QR/ColPivHouseholderQR_LAPACKE.h \
    libs/eigen/Eigen/src/QR/CompleteOrthogonalDecomposition.h \
    libs/eigen/Eigen/src/QR/FullPivHouseholderQR.h \
    libs/eigen/Eigen/src/QR/HouseholderQR.h \
    libs/eigen/Eigen/src/QR/HouseholderQR_LAPACKE.h \
    libs/eigen/Eigen/src/SPQRSupport/SuiteSparseQRSupport.h \
    libs/eigen/Eigen/src/SVD/BDCSVD.h \
    libs/eigen/Eigen/src/SVD/JacobiSVD.h \
    libs/eigen/Eigen/src/SVD/JacobiSVD_LAPACKE.h \
    libs/eigen/Eigen/src/SVD/SVDBase.h \
    libs/eigen/Eigen/src/SVD/UpperBidiagonalization.h \
    libs/eigen/Eigen/src/SparseCholesky/SimplicialCholesky.h \
    libs/eigen/Eigen/src/SparseCholesky/SimplicialCholesky_impl.h \
    libs/eigen/Eigen/src/SparseCore/AmbiVector.h \
    libs/eigen/Eigen/src/SparseCore/CompressedStorage.h \
    libs/eigen/Eigen/src/SparseCore/ConservativeSparseSparseProduct.h \
    libs/eigen/Eigen/src/SparseCore/MappedSparseMatrix.h \
    libs/eigen/Eigen/src/SparseCore/SparseAssign.h \
    libs/eigen/Eigen/src/SparseCore/SparseBlock.h \
    libs/eigen/Eigen/src/SparseCore/SparseColEtree.h \
    libs/eigen/Eigen/src/SparseCore/SparseCompressedBase.h \
    libs/eigen/Eigen/src/SparseCore/SparseCwiseBinaryOp.h \
    libs/eigen/Eigen/src/SparseCore/SparseCwiseUnaryOp.h \
    libs/eigen/Eigen/src/SparseCore/SparseDenseProduct.h \
    libs/eigen/Eigen/src/SparseCore/SparseDiagonalProduct.h \
    libs/eigen/Eigen/src/SparseCore/SparseDot.h \
    libs/eigen/Eigen/src/SparseCore/SparseFuzzy.h \
    libs/eigen/Eigen/src/SparseCore/SparseMap.h \
    libs/eigen/Eigen/src/SparseCore/SparseMatrix.h \
    libs/eigen/Eigen/src/SparseCore/SparseMatrixBase.h \
    libs/eigen/Eigen/src/SparseCore/SparsePermutation.h \
    libs/eigen/Eigen/src/SparseCore/SparseProduct.h \
    libs/eigen/Eigen/src/SparseCore/SparseRedux.h \
    libs/eigen/Eigen/src/SparseCore/SparseRef.h \
    libs/eigen/Eigen/src/SparseCore/SparseSelfAdjointView.h \
    libs/eigen/Eigen/src/SparseCore/SparseSolverBase.h \
    libs/eigen/Eigen/src/SparseCore/SparseSparseProductWithPruning.h \
    libs/eigen/Eigen/src/SparseCore/SparseTranspose.h \
    libs/eigen/Eigen/src/SparseCore/SparseTriangularView.h \
    libs/eigen/Eigen/src/SparseCore/SparseUtil.h \
    libs/eigen/Eigen/src/SparseCore/SparseVector.h \
    libs/eigen/Eigen/src/SparseCore/SparseView.h \
    libs/eigen/Eigen/src/SparseCore/TriangularSolver.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU.h \
    libs/eigen/Eigen/src/SparseLU/SparseLUImpl.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_Memory.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_Structs.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_SupernodalMatrix.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_Utils.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_column_bmod.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_column_dfs.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_copy_to_ucol.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_gemm_kernel.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_heap_relax_snode.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_kernel_bmod.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_panel_bmod.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_panel_dfs.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_pivotL.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_pruneL.h \
    libs/eigen/Eigen/src/SparseLU/SparseLU_relax_snode.h \
    libs/eigen/Eigen/src/SparseQR/SparseQR.h \
    libs/eigen/Eigen/src/StlSupport/StdDeque.h \
    libs/eigen/Eigen/src/StlSupport/StdList.h \
    libs/eigen/Eigen/src/StlSupport/StdVector.h \
    libs/eigen/Eigen/src/StlSupport/details.h \
    libs/eigen/Eigen/src/SuperLUSupport/SuperLUSupport.h \
    libs/eigen/Eigen/src/UmfPackSupport/UmfPackSupport.h \
    libs/eigen/Eigen/src/misc/Image.h \
    libs/eigen/Eigen/src/misc/Kernel.h \
    libs/eigen/Eigen/src/misc/RealSvd2x2.h \
    libs/eigen/Eigen/src/misc/blas.h \
    libs/eigen/Eigen/src/misc/lapack.h \
    libs/eigen/Eigen/src/misc/lapacke.h \
    libs/eigen/Eigen/src/misc/lapacke_mangling.h \
    libs/eigen/Eigen/src/plugins/ArrayCwiseBinaryOps.h \
    libs/eigen/Eigen/src/plugins/ArrayCwiseUnaryOps.h \
    libs/eigen/Eigen/src/plugins/BlockMethods.h \
    libs/eigen/Eigen/src/plugins/CommonCwiseBinaryOps.h \
    libs/eigen/Eigen/src/plugins/CommonCwiseUnaryOps.h \
    libs/eigen/Eigen/src/plugins/MatrixCwiseBinaryOps.h \
    libs/eigen/Eigen/src/plugins/MatrixCwiseUnaryOps.h \
    polaristestproj.h

FORMS += \
    polaristestproj.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/libs/PolarisSpectra/release/ -lPolarisSpectraLinux
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/libs/PolarisSpectra/debug/ -lPolarisSpectraLinux
else:unix: LIBS += -L$$PWD/libs/PolarisSpectra/ -lPolarisSpectraLinux

INCLUDEPATH += $$PWD/libs/PolarisSpectra
DEPENDPATH += $$PWD/libs/PolarisSpectra

DISTFILES += \
    libs/eigen/Eigen/CMakeLists.txt
