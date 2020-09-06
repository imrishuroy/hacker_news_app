class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentsCount;

  const Article({
    this.text,
    this.domain,
    this.by,
    this.age,
    this.score,
    this.commentsCount,
  });
}

final articles = [
  new Article(
    text: 'Circular Shock Waves In Iosphere Triggerd by launch of Formosat -5',
    domain: 'willey.com',
    by: 'zdw',
    age: '3 Hours',
    score: 177,
    commentsCount: 62,
  ),
  new Article(
    text: 'BMW says electric car mass production not viable until 2020',
    domain: 'routers.com',
    by: 'Mononokay',
    age: '2 Hours',
    score: 81,
    commentsCount: 128,
  ),
  new Article(
    text: 'Evolution is new deep learing',
    domain: 'sentient.ai',
    by: 'johnbaer',
    age: '4 Hours',
    score: 200,
    commentsCount: 120,
  ),
  new Article(
    text: 'Using technical Debt in your favour',
    domain: 'gitconnected,com',
    by: 'treyhuffine',
    age: '7 Hours',
    score: 140,
    commentsCount: 123,
  ),
];
