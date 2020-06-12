import 'package:helloworld/domain/common/entity.dart';
import 'learning_background_id.dart';
import '../language_proficiency.dart';
import '../speaking_language.dart';
import 'learning_language.dart';

class LearningBackground extends Entity {
  final LearningBackgroundId id;
  final Map<SpeakingLanguage, LanguageProficiency> speakingLanguages;
  final Map<LearningLanguage, LanguageProficiency> learningLanguages;


  const LearningBackground(this.id, this.learningLanguages, this.speakingLanguages);
}