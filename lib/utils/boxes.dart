import 'package:hive/hive.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/utils.dart';

class HiveBoxes {
  // Register Adapter
  static void registerAdapters() {
    Hive.registerAdapter(UserDTOAdapter());
  }

  /////////////.....// Register boxes here //////////////////

  static Future<Box> box() async {
    return await Hive.openBox(Keys.APP_BOX);
  }

  static Future<Box<UserDTO>> userDTOBox() async {
    return await Hive.openBox<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);
  }

  static Future<Box<String>> accessTokenBox() async {
    return await Hive.openBox<String>(Keys.HIVE_BOX_ACCESS_TOKEN_KEY);
  }
}
