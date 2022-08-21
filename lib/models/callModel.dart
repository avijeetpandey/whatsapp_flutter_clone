class CallModel {
  final String name;
  final String time;
  final String avatar;

  CallModel({required this.name, required this.time, required this.avatar});
}

List<CallModel> callData = [
  CallModel(name: "Rahul Sharma", time: "10:20 am", avatar: ""),
  CallModel(name: "Deepa Saxena", time: "11:20 am", avatar: ""),
  CallModel(name: "Rahul Sharma", time: "10:20 am", avatar: ""),
  CallModel(name: "Anupam Mital", time: "11:20 am", avatar: ""),
  CallModel(name: "Divya Khosla", time: "12:20 pm", avatar: ""),
];
