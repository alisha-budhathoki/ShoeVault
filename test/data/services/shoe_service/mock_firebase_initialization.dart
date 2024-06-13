import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseApp extends Mock implements FirebaseApp {}

void setupFirebaseMocks() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final mockFirebaseApp = MockFirebaseApp();

  when(Firebase.initializeApp()).thenAnswer((_) async => mockFirebaseApp);
}
