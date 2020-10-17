#ifndef IMAGE_HANDLER_H
#define IMAGE_HANDLER_H

#include <QScreen>
#include <QPixmap>
#include <QGuiApplication>
#include <QApplication>
#include <QDesktopWidget>
#include <QWindow>
#include <QWidget>

#include "ReadBarcode.h"
#include "Result.h"

class ImageHandler {
public:
    ImageHandler() {}
    virtual ~ImageHandler() {}

    ZXing::ImageView* grab();
    ZXing::ImageView* loadFile(const char* filename);

private:
    ZXing::ImageView* convertToImageView(QPixmap* img);
};

#endif /* end of include guard: IMAGE_HANDLER_H */
