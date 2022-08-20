class ChatModel {
  final String name;
  final String time;
  final String message;
  final String avatar;

  ChatModel(
      {required this.name,
      required this.time,
      required this.message,
      required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
      name: "Rahul Sharma",
      time: "10:20 am",
      message: "This is an amazing place",
      avatar: ""),
  ChatModel(
      name: "Deepa Saxena",
      time: "11:20 am",
      message: "Hey give me my money back?",
      avatar: ""),
  ChatModel(
      name: "Rahul Sharma",
      time: "10:20 am",
      message: "This is an amazing place",
      avatar: ""),
  ChatModel(
      name: "Anupam Mital",
      time: "11:20 am",
      message: "Hey man whatsup?",
      avatar: ""),
  ChatModel(
      name: "Divya Khosla", time: "12:20 pm", message: "U up ?", avatar: ""),
  ChatModel(
      name: "Ram ji",
      time: "14:20 pm",
      message: "Wooooohoooo Nice DP man!",
      avatar: "")
];
