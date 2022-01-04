import 'package:bloc/bloc.dart';
import '../../../configs/config.dart';
import '../../../utils/util.dart';

// enum BusinessState { basic, realEstate, food, event }
enum BusinessState { basic, approvalCenter, attendance, dashboard }

class BusinessCubit extends Cubit<BusinessState> {
  BusinessCubit() : super(BusinessState.basic);

  Future<void> onChangeBusiness(BusinessState business) async {
    ///Preference save
    await UtilPreferences.setString(
      Preferences.business,
      business.toString().split('.').last,
    );

    emit(business);
  }
}
