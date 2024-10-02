class Quiz {
  final String question;
  List<Answer> answers;
  Quiz({
    required this.question,
    required this.answers,
  });
}

class Answer {
  final String answer;
  final bool correct;
  Answer({
    required this.answer,
    required this.correct,
  });
}

List<Quiz> quizList = [
  Quiz(
    question: 'What does STEM stand for?',
    answers: [
      Answer(
        answer: 'Science, Technology, Economics, Mathematics',
        correct: false,
      ),
      Answer(
        answer: 'Science, Technology, Engineering, Mathematics',
        correct: false,
      ),
      Answer(
        answer: 'Sociology, Technology, Engineering, Mathematics',
        correct: false,
      ),
      Answer(
        answer: 'Science, Teaching, Engineering, Medicine',
        correct: false,
      ),
    ],
  ),
  Quiz(
    question: 'Which of these is a famous theory of cognitive development?',
    answers: [
      Answer(
        answer: 'Pavlov\'s Theory',
        correct: false,
      ),
      Answer(
        answer: 'Vygotsky\'s Theory',
        correct: false,
      ),
      Answer(
        answer: 'Skinner\'s Theory',
        correct: false,
      ),
      Answer(
        answer: 'Maslow\'s Hierarchy Theory',
        correct: false,
      ),
    ],
  ),
  Quiz(
    question:
        'Which amendment to the United States Constitution guarantees the right to a free public education?',
    answers: [
      Answer(
        answer: 'First Amendment',
        correct: false,
      ),
      Answer(
        answer: 'Fourth Amendment',
        correct: false,
      ),
      Answer(
        answer: 'Eighth Amendment',
        correct: false,
      ),
      Answer(
        answer: 'Fourteenth Amendment',
        correct: false,
      ),
    ],
  ),
  Quiz(
    question: 'Who developed the theory of multiple intelligences?  ',
    answers: [
      Answer(
        answer: 'Jean Piaget',
        correct: false,
      ),
      Answer(
        answer: 'Howard Gardner',
        correct: false,
      ),
      Answer(
        answer: 'Lev Vygotsky',
        correct: false,
      ),
      Answer(
        answer: 'Erik Erikson',
        correct: false,
      ),
    ],
  ),
  Quiz(
    question:
        'Which educational philosophy emphasizes learning through practical experience and problem-solving?',
    answers: [
      Answer(
        answer: 'Behaviorism',
        correct: false,
      ),
      Answer(
        answer: 'Essentialism',
        correct: false,
      ),
      Answer(
        answer: 'Constructivism',
        correct: false,
      ),
      Answer(
        answer: 'Pragmatism',
        correct: false,
      ),
    ],
  ),
];
