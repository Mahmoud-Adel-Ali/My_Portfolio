class ConnectState {}

final class ConnectInitial extends ConnectState {}

final class SendMessageLoading extends ConnectState {}

final class SendMessageFailure extends ConnectState {
  final String message;
  SendMessageFailure({required this.message});
}

final class SendMessageSuccess extends ConnectState {}
