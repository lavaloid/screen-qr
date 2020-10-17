#include "imagehandler.h"

#include <QLabel>
// #include <QScreen>
// #include <QPixmap>
// #include <QGuiApplication>
// #include <QApplication>
// #include <QDesktopWidget>
// #include <QWindow>
// #include <QWidget>

// #include "ReadBarcode.h"
// #include "Result.h"

ZXing::ImageView* ImageHandler::grab() {
    // Get screenshot as QPixmap
    QScreen* screen = QGuiApplication::primaryScreen();
    if (const QWindow* window = QApplication::desktop()->windowHandle())
        screen = window->screen();
    if (!screen)
        return NULL; //Error

    QPixmap q_pixmap_image = screen->grabWindow(0);

    // Convert to ZXing::ImageView
    ZXing::ImageView* img = convertToImageView(&q_pixmap_image);
    return img;
}

ZXing::ImageView* ImageHandler::loadFile(const char* filename) {
    // Get screenshot as QImage
    QPixmap q_pixmap_image;
    bool load_success = q_pixmap_image.load(filename);

    // File exception handling
    if (!load_success) throw 404;

    // Convert to ZXing::ImageView
    ZXing::ImageView* img = convertToImageView(&q_pixmap_image);
    return img;
}

ZXing::ImageView* ImageHandler::convertToImageView(QPixmap* img) {
    // Convert to QImage so we can return as uchar*
    QImage q_image_img = img->toImage();


    // But first we should make sure we use RGB format
    if (q_image_img.format() != QImage::Format_RGB888) {
        q_image_img = q_image_img.convertToFormat(QImage::Format_RGB888);
    }

    // We can finally convert to uchar*
    static const uchar* img_bits = img->toImage().constBits();

    // Now interpret as ZXing::ImageView
    static ZXing::ImageView zx_image = ZXing::ImageView(
        img_bits,               // Bits of image data
        img->width(),           // Width
        img->height(),          // Height
        ZXing::ImageFormat::RGBX // Format 0xRRGGBBXX
        // P.S. : I genuinely have no idea why we need to use RGBX when
        // the format of q_image_img is RGB.
    );

    // Debug stuff:

    // QImage* debug_img = new QImage(zx_image._data, img->width(), img->height(), QImage::Format_RGB32);
    // QLabel* debug_img_label = new QLabel();
    // debug_img_label->setPixmap(QPixmap::fromImage(*debug_img));
    // debug_img_label->show();

    return &zx_image;
}
