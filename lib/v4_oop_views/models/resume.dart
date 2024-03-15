class Resume {
  String _response = '';

  void setResponse(String response) => _response = response;

  bool isResponseCorrect() => _response[0] == 's' || _response[0] == "n";

  bool isResumed() => _response[0] == 's';
}
