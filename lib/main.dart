import 'package:flutter/material.dart';
import 'package:golearn/screen/bottombar/bottombar.dart';
import 'package:golearn/utils/colornotifir.dart';
import 'package:provider/provider.dart';
import 'package:golearn/services/get_it/locator_service.dart' as di;
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  di.setup();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ColorNotifier(),
        ),
      ],
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return const MaterialApp(
          home: Bottombar(),
          debugShowCheckedModeBanner: false,
        );
      }),
    ),
  );
}
