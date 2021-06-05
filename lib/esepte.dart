import 'package:inputs_app/user_data.dart';

class Esepte {
  UserData _userData;
  Esepte(this._userData);

  double eseptegich() {
    double jyiyntyk;
    jyiyntyk = 90 + _userData.kylynganSport - _userData.tartylganTameki;
    jyiyntyk = jyiyntyk + (_userData.boy / _userData.kilo);

    if (_userData.tandalganJynys == 'Аял') {
      return jyiyntyk + 3;
    } else {
      return jyiyntyk;
    }
  }
}
