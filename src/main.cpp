#include <string>

#include "imagehandler.h"

#include <QApplication>
#include <QScreen>
#include <QString>

#include <iostream>

#include "ReadBarcode.h"
#include "Result.h"

#include "DecodeStatus.h"

enum ScreenQRExitStatus {
    HELP_MESSAGE = -1,
    SUCCESS = 0,
    CANNOT_OPEN_FILE = 1,
    CODE_NOT_FOUND = 2,
    ZXING_ERROR = 3
};

void help(char* name);

int main(int argc, char* argv[]) {
    QApplication app(argc, argv);

    if (argc != 2 && argc != 3) {
        help(argv[0]);
        return ScreenQRExitStatus::HELP_MESSAGE;
    }

    std::string mode = argv[1];
    if (mode != "-s" && mode != "-i") {
        help(argv[0]);
        return ScreenQRExitStatus::HELP_MESSAGE;
    }

    ImageHandler* handler = new ImageHandler;
    ZXing::ImageView* image = NULL;

    // Get screenshot
    if (mode == "-s") {
        image = handler->grab();
    }

    // Get image from file
    if (mode == "-i") {
        try {
            image = handler->loadFile(argv[2]);
        }
        catch (int err) {
            std::cout << "ERROR : File cannot be loaded." << std::endl;
            return ScreenQRExitStatus::CANNOT_OPEN_FILE;
        }
    }

    // We can finally read our barcode
    ZXing::Result result = ZXing::ReadBarcode(*image);

    // Output result
    switch (result.status()) {
        // Successful
        case ZXing::DecodeStatus::NoError:
            std::wcout << result.text() << std::endl;
            return ScreenQRExitStatus::SUCCESS;

        // No code found
        case ZXing::DecodeStatus::NotFound:
            std::cerr << "Code is not found." << std::endl;
            return ScreenQRExitStatus::CODE_NOT_FOUND;

        // Otherwise something broke
        default:
            std::cerr << "ZXing Error " << ZXing::ToString(result.status()) << std::endl;
            return ScreenQRExitStatus::ZXING_ERROR;
    }
}

void help(char* name) {
    std::cout << "Usage: " << name << " [-s | -i <path>]" << "\n"
              << "\n"
              << "Options:"
              << "    -s          Scan code from screen \n"
              << "    -i <path>   Scan code from image" << std::endl;
}
