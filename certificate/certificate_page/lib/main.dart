import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Certification',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 60,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple.shade100,
            ),
            child: TextButton(
              onPressed: () => _createPDF("Psychologist Dr. John Doe"),
              child: Text(
                'Certificate file',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _createPDF(String psychologistName) async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    final Size pageSize = page.getClientSize();
    final PdfFont font = PdfTrueTypeFont(
      await _readFontData('GreatVibes-Regular.ttf'),
      60,
    );

    final double borderWidth = 10.0;
    final double padding = 40.0 + borderWidth;

    page.graphics.drawRectangle(
      bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
      brush: PdfSolidBrush(PdfColor(173, 216, 230)),
    );

    page.graphics.drawRectangle(
      bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
      pen: PdfPen(
        PdfColor(255, 215, 0),
        width: borderWidth,
      ),
      brush: PdfSolidBrush(
        PdfColor(230, 230, 250),
      ),
    );

    page.graphics.drawString(
      'Certificate of Appreciation',
      font,
      bounds: Rect.fromLTWH(0, 45, pageSize.width, 100),
      format: PdfStringFormat(
        alignment: PdfTextAlignment.center,
        lineAlignment: PdfVerticalAlignment.top,
      ),
      brush: PdfSolidBrush(PdfColor(128, 0, 128)), 
    );

    final PdfFont nameFont = PdfStandardFont(PdfFontFamily.timesRoman, 25);
    double nameTextY = 125;
    page.graphics.drawString(
      'This certificate is presented to:',
      nameFont,
      bounds: Rect.fromLTWH(0, nameTextY, pageSize.width, 50),
      format: PdfStringFormat(
        alignment: PdfTextAlignment.center,
        lineAlignment: PdfVerticalAlignment.top,
      ),
    );

    nameTextY += 60;
    final PdfFont boldFont = PdfTrueTypeFont(
      await _readFontData('GreatVibes-Regular.ttf'),
      35,
      style: PdfFontStyle.bold,
    );
    page.graphics.drawString(
      psychologistName,
      boldFont,
      bounds: Rect.fromLTWH(0, nameTextY, pageSize.width, 50),
      format: PdfStringFormat(
        alignment: PdfTextAlignment.center,
        lineAlignment: PdfVerticalAlignment.top,
      ),
      brush: PdfSolidBrush(PdfColor(128, 0, 128)), 
    );

    final PdfFont appreciationFont =
        PdfStandardFont(PdfFontFamily.helvetica, 25);

    final double textWidth = pageSize.width - 2 * padding;

    double appreciationTextY = 250;
    page.graphics.drawString(
      'We thank you for your invaluable contribution to the community of MindHub. This certificate is presented to you by MindHub in recognition of your outstanding service and dedication to our community.',
      appreciationFont,
      bounds: Rect.fromLTWH(padding, appreciationTextY, textWidth, 600),
      format: PdfStringFormat(
        alignment: PdfTextAlignment.center,
        lineAlignment: PdfVerticalAlignment.top,
        lineSpacing: 10.0,
      ),
    );
    final PdfBitmap image = PdfBitmap(await _readImageData('mindhub.jpg'));
    final Size imageSize = Size(40, 40);
    final Rect imageRect = Rect.fromCenter(
      center: Offset(pageSize.width / 2, pageSize.height - 117),
      width: 200,
      height: 200,
    );
    page.graphics.drawImage(image, imageRect);
    List<int> bytes = await document.save();
    document.dispose();
    saveAndLaunchFile(bytes, 'Certificate.pdf');
  }
}

Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
  final path = (await getExternalStorageDirectory())!.path;
  final file = File('$path/$fileName');
  await file.writeAsBytes(bytes, flush: true);
  OpenFile.open('$path/$fileName');
}

Future<Uint8List> _readImageData(String name) async {
  final data = await rootBundle.load('Images/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}

Future<Uint8List> _readFontData(String name) async {
  final data = await rootBundle.load('fonts/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
