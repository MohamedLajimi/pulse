import 'package:hive/hive.dart';
import 'package:pulse/shared/data/models/profile_model.dart';

class ProfileModelAdapter extends TypeAdapter<ProfileModel> {
  @override
  final int typeId = 0;

  @override
  ProfileModel read(BinaryReader reader) {
    final Map<dynamic, dynamic> map = reader.read();
    return ProfileModel.fromJson(map.cast<String, dynamic>());
  }

  @override
  void write(BinaryWriter writer, ProfileModel obj) {
    writer.write(obj.toJson());
  }
}
