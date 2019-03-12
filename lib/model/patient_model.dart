
import 'package:flutter/foundation.dart';

class Patient{

  final String name;
  final String phone;
  final String lastName;
  final String address;
  final String sex;
  final String civilStatus;
  final String edad;
  final String email;

  const Patient({
    @required this.name,
    @required this.phone,
    @required this.lastName,
    @required this.address,
    @required this.sex,
    @required this.civilStatus,
    @required this.edad,
    @required this.email
  }) : assert(name != null),
        assert(phone != null),
        assert(lastName != null),
        assert(address != null),
        assert(sex != null),
        assert(civilStatus != null),
        assert(edad != null),
        assert(email != null);
        
}