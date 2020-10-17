######################################################################
# Automatically generated by qmake (3.1) Sat Oct 17 15:23:00 2020
######################################################################

TEMPLATE = app
TARGET = screen-qr
DESTDIR = build
OBJECTS_DIR=build/obj
INCLUDEPATH += .
INCLUDEPATH += lib/zxing-cpp/core/src

CONFIG += c++17
CONFIG += object_parallel_to_source
CONFIG += console
CONFIG -= app_bundle

QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.15

QT += widgets
QT += gui
QT += qml

# You can make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# Please consult the documentation of the deprecated API in order to know
# how to port your code away from it.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
HEADERS += src/imagehandler.h
SOURCES += src/imagehandler.cpp \
           src/main.cpp \
           lib/zxing-cpp/core/src/BarcodeFormat.cpp \
           lib/zxing-cpp/core/src/BinaryBitmap.cpp \
           lib/zxing-cpp/core/src/BitArray.cpp \
           lib/zxing-cpp/core/src/BitMatrix.cpp \
           lib/zxing-cpp/core/src/BitMatrixIO.cpp \
           lib/zxing-cpp/core/src/BitSource.cpp \
           lib/zxing-cpp/core/src/CharacterSetECI.cpp \
           lib/zxing-cpp/core/src/ConcentricFinder.cpp \
           lib/zxing-cpp/core/src/DecodeHints.cpp \
           lib/zxing-cpp/core/src/DecodeStatus.cpp \
           lib/zxing-cpp/core/src/GenericGF.cpp \
           lib/zxing-cpp/core/src/GenericGFPoly.cpp \
           lib/zxing-cpp/core/src/GenericLuminanceSource.cpp \
           lib/zxing-cpp/core/src/GlobalHistogramBinarizer.cpp \
           lib/zxing-cpp/core/src/GridSampler.cpp \
           lib/zxing-cpp/core/src/HybridBinarizer.cpp \
           lib/zxing-cpp/core/src/LuminanceSource.cpp \
           lib/zxing-cpp/core/src/MultiFormatReader.cpp \
           lib/zxing-cpp/core/src/MultiFormatWriter.cpp \
           lib/zxing-cpp/core/src/PerspectiveTransform.cpp \
           lib/zxing-cpp/core/src/ReadBarcode.cpp \
           lib/zxing-cpp/core/src/ReedSolomonDecoder.cpp \
           lib/zxing-cpp/core/src/ReedSolomonEncoder.cpp \
           lib/zxing-cpp/core/src/Result.cpp \
           lib/zxing-cpp/core/src/ResultMetadata.cpp \
           lib/zxing-cpp/core/src/ResultPoint.cpp \
           lib/zxing-cpp/core/src/TextDecoder.cpp \
           lib/zxing-cpp/core/src/TextEncoder.cpp \
           lib/zxing-cpp/core/src/TextUtfEncoding.cpp \
           lib/zxing-cpp/core/src/WhiteRectDetector.cpp \
           lib/zxing-cpp/core/src/ZXBigInteger.cpp \
           lib/zxing-cpp/core/src/aztec/AZDecoder.cpp \
           lib/zxing-cpp/core/src/aztec/AZDetector.cpp \
           lib/zxing-cpp/core/src/aztec/AZEncoder.cpp \
           lib/zxing-cpp/core/src/aztec/AZHighLevelEncoder.cpp \
           lib/zxing-cpp/core/src/aztec/AZReader.cpp \
           lib/zxing-cpp/core/src/aztec/AZToken.cpp \
           lib/zxing-cpp/core/src/aztec/AZWriter.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMBitMatrixParser.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMDataBlock.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMDecoder.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMDefaultPlacement.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMDetector.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMECEncoder.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMHighLevelEncoder.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMReader.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMSymbolInfo.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMVersion.cpp \
           lib/zxing-cpp/core/src/datamatrix/DMWriter.cpp \
           lib/zxing-cpp/core/src/maxicode/MCBitMatrixParser.cpp \
           lib/zxing-cpp/core/src/maxicode/MCDecoder.cpp \
           lib/zxing-cpp/core/src/maxicode/MCReader.cpp \
           lib/zxing-cpp/core/src/oned/ODCodabarReader.cpp \
           lib/zxing-cpp/core/src/oned/ODCodabarWriter.cpp \
           lib/zxing-cpp/core/src/oned/ODCode128Patterns.cpp \
           lib/zxing-cpp/core/src/oned/ODCode128Reader.cpp \
           lib/zxing-cpp/core/src/oned/ODCode128Writer.cpp \
           lib/zxing-cpp/core/src/oned/ODCode39Reader.cpp \
           lib/zxing-cpp/core/src/oned/ODCode39Writer.cpp \
           lib/zxing-cpp/core/src/oned/ODCode93Reader.cpp \
           lib/zxing-cpp/core/src/oned/ODCode93Writer.cpp \
           lib/zxing-cpp/core/src/oned/ODEAN13Reader.cpp \
           lib/zxing-cpp/core/src/oned/ODEAN13Writer.cpp \
           lib/zxing-cpp/core/src/oned/ODEAN8Reader.cpp \
           lib/zxing-cpp/core/src/oned/ODEAN8Writer.cpp \
           lib/zxing-cpp/core/src/oned/ODEANManufacturerOrgSupport.cpp \
           lib/zxing-cpp/core/src/oned/ODITFReader.cpp \
           lib/zxing-cpp/core/src/oned/ODITFWriter.cpp \
           lib/zxing-cpp/core/src/oned/ODMultiUPCEANReader.cpp \
           lib/zxing-cpp/core/src/oned/ODReader.cpp \
           lib/zxing-cpp/core/src/oned/ODRowReader.cpp \
           lib/zxing-cpp/core/src/oned/ODRSS14Reader.cpp \
           lib/zxing-cpp/core/src/oned/ODRSSExpandedReader.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCAReader.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCAWriter.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCEANCommon.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCEANExtensionSupport.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCEANReader.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCEReader.cpp \
           lib/zxing-cpp/core/src/oned/ODUPCEWriter.cpp \
           lib/zxing-cpp/core/src/oned/ODWriterHelper.cpp \
           lib/zxing-cpp/core/src/oned/rss/ODRSSExpandedBinaryDecoder.cpp \
           lib/zxing-cpp/core/src/oned/rss/ODRSSFieldParser.cpp \
           lib/zxing-cpp/core/src/oned/rss/ODRSSGenericAppIdDecoder.cpp \
           lib/zxing-cpp/core/src/oned/rss/ODRSSReaderHelper.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFBarcodeValue.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFBoundingBox.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFCodewordDecoder.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFDecodedBitStreamParser.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFDetectionResult.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFDetectionResultColumn.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFDetector.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFEncoder.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFHighLevelEncoder.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFModulusGF.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFModulusPoly.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFReader.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFScanningDecoder.cpp \
           lib/zxing-cpp/core/src/pdf417/PDFWriter.cpp \
           lib/zxing-cpp/core/src/qrcode/QRBitMatrixParser.cpp \
           lib/zxing-cpp/core/src/qrcode/QRCodecMode.cpp \
           lib/zxing-cpp/core/src/qrcode/QRDataBlock.cpp \
           lib/zxing-cpp/core/src/qrcode/QRDecoder.cpp \
           lib/zxing-cpp/core/src/qrcode/QRDetector.cpp \
           lib/zxing-cpp/core/src/qrcode/QREncoder.cpp \
           lib/zxing-cpp/core/src/qrcode/QRErrorCorrectionLevel.cpp \
           lib/zxing-cpp/core/src/qrcode/QRFormatInformation.cpp \
           lib/zxing-cpp/core/src/qrcode/QRMaskUtil.cpp \
           lib/zxing-cpp/core/src/qrcode/QRMatrixUtil.cpp \
           lib/zxing-cpp/core/src/qrcode/QRReader.cpp \
           lib/zxing-cpp/core/src/qrcode/QRVersion.cpp \
           lib/zxing-cpp/core/src/qrcode/QRWriter.cpp \
           lib/zxing-cpp/core/src/textcodec/Big5MapTable.cpp \
           lib/zxing-cpp/core/src/textcodec/Big5TextDecoder.cpp \
           lib/zxing-cpp/core/src/textcodec/Big5TextEncoder.cpp \
           lib/zxing-cpp/core/src/textcodec/GBTextDecoder.cpp \
           lib/zxing-cpp/core/src/textcodec/GBTextEncoder.cpp \
           lib/zxing-cpp/core/src/textcodec/JPTextDecoder.cpp \
           lib/zxing-cpp/core/src/textcodec/JPTextEncoder.cpp \
           lib/zxing-cpp/core/src/textcodec/KRHangulMapping.cpp \
           lib/zxing-cpp/core/src/textcodec/KRTextDecoder.cpp \
           lib/zxing-cpp/core/src/textcodec/KRTextEncoder.cpp
RESOURCES += lib/zxing-cpp/example/ZXingQtCamReader.qrc