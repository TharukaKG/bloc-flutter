
class Output<T> {
  Status status;
  T? res;
  String? loadingMessage;

  Output.success(this.res) : status = Status.Success;

  Output.error(this.loadingMessage) : status = Status.Error;


  @override
  String toString() {
    return "Status : $status \n Message : $loadingMessage \n Data : $res";
  }
}

enum Status {
  Success,
  Error,
}