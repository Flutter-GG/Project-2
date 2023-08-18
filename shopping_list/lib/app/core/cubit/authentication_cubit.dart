import 'package:bloc/bloc.dart';

import 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {

  AuthenticationCubit() : super(AuthenticationState(isAuthenticated: false));
  
}