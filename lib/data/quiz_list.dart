List<Choice> choices = [
  Choice(
    category: " CHE 101",
    last_score: " 8/10",
    expected_duration: " 1 min",
    img_link: "https://unsplash.com/photos/8CqDvPuo_kI",
  ),
  Choice(
      category: " CHE 102",
      last_score: " 8/10",
      expected_duration: " 1 min",
      img_link: "https://unsplash.com/photos/TamMbr4okv4"),
  Choice(
    name: 'Daniel Pink',
    field: 'Teaches Modern design and authetic computational chemistry',
    image: 'images/kaylee.jpg',
  ),
  Choice(
    name: 'Jake Shimabukoru',
    field: 'Teaches Ukulele',
    image: 'images/lode.jpg',
  ),
  Choice(
    name: 'Tony Hawk',
    field: 'Teaches Skateboarding',
    image: 'images/matt.jpg',
  ),
  Choice(
    name: 'Robins Roberts',
    field: 'Teaches effective and Authetic Communication',
    image: 'images/pykh.jpg',
  ),
  Choice(
    name: 'Robins Roberts',
    field: 'Teaches effective and Authetic Communication',
    image: 'images/pykh.jpg',
  ),
  Choice(
    name: 'Robins Roberts',
    field: 'Teaches effective and Authetic Communication',
    image: 'images/pykh.jpg',
  ),
  Choice(
    name: 'Robins Roberts',
    field: 'Teaches effective and Authetic Communication',
    image: 'images/pykh.jpg',
  ),
];

List<Preview> previews = [
  Preview(
    name: 'Shonda Rhimes',
    field: 'What fuels you passion?',
    image: 'images/kaylee.jpg',
  ),
  Preview(
    name: 'Thomas keller',
    field: 'Salt enhances, pepper changes',
    image: 'images/fezbot.jpg',
  ),
  Preview(
    name: 'Daniel Pink',
    field: 'Where rockets get their shape',
    image: 'images/kaylee.jpg',
  ),
  Preview(
    name: 'Jake Shimabukoru',
    field: 'You dont have their soul',
    image: 'images/lode.jpg',
  ),
  Preview(
    name: 'Tony Hawk',
    field: 'You are a thought machine',
    image: 'images/matt.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective ',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective ',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective ',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective',
    image: 'images/pykh.jpg',
  ),
  Preview(
    name: 'Robins Roberts',
    field: 'Teaches effective',
    image: 'images/pykh.jpg',
  ),
];

class Choice {
  final String name;
  final String field;
  // ignore: non_constant_identifier_names
  final String image, img_link, category, last_score, expected_duration;

  Choice({
    this.img_link,
    this.category,
    this.last_score,
    this.expected_duration,
    this.name,
    this.field,
    this.image,
  });
}

class Preview {
  final String name;
  final String field;
  final String image;

  Preview({
    this.name,
    this.field,
    this.image,
  });
}
