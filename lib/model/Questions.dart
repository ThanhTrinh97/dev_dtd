class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
        "Chọn phát biểu sai về hệ Mặt Trời?",
    "options": ['Mặt Trời là thiên thể tự phát sáng', 'Có 8 hành tinh lớn chuyển động quanh Mặt Trời', 'Các hành tinh chuyển động quanh Mặt Trời theo cùng một chiều, trừ Kim tinh chuyển động theo chiều ngược lại', 'Hải vương tinh là hành tinh nằm xa Mặt Trời nhất'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "Trái Đất có khí hậu 4 mùa là do.",
    "options": ['Trái Đất chuyển động quanh Mặt Trời theo quỹ đạo êlip', 'Trái Đất có lúc ở xa, có lúc ở gần Mặt Trời', 'trục của Trái Đất nghiêng so với mặt phẳng quỹ đạo của nó quanh Mặt Trời', 'cực từ của Trái Đất không trùng với cực địa lí của nó'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "Đơn vị thiên văn",
    "options": ['là bán kính của hệ Mặt Trời', 'là khoảng cách từ Trái Đất đến Mặt Trời', 'là quãng đường ánh sáng đi được trong 1 năm', 'bằng 1,5.108 m'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "Trong hệ Mặt Trời",
    "options": ['các hành tinh đều chuyển động quanh Mặt Trời theo cùng một chiều', 'các hành tinh đều tự quay quanh mình nó theo cùng một chiều', 'Thổ tinh là hành tinh có khối lượng lớn nhất', 'Hải vương tinh là hành tinh ở xa Mặt Trời nhất'],
    "answer_index": 1,
  },
];
