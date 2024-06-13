import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service_impl.dart';

import 'mock_firebase_initialization.dart'; // Import the Firebase mock setup
import 'shoe_service_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseFirestore>(),
  MockSpec<CollectionReference<Map<String, dynamic>>>(),
  MockSpec<DocumentReference<Map<String, dynamic>>>(),
  MockSpec<QuerySnapshot<Map<String, dynamic>>>(),
  MockSpec<QueryDocumentSnapshot<Map<String, dynamic>>>(),
  MockSpec<DocumentSnapshot<Map<String, dynamic>>>(),
])
import 'shoe_service_impl_test.mocks.dart';

void main() {
  setupFirebaseMocks(); // Call the Firebase mock setup

  late MockFirebaseFirestore mockFirestore;
  late MockCollectionReference<Map<String, dynamic>> mockCollection;
  late MockDocumentReference<Map<String, dynamic>> mockDocument;
  late MockQuerySnapshot<Map<String, dynamic>> mockQuerySnapshot;
  late MockQueryDocumentSnapshot<Map<String, dynamic>>
      mockQueryDocumentSnapshot;
  late MockDocumentSnapshot<Map<String, dynamic>> mockDocumentSnapshot;
  late ShoeServiceImpl shoeService;

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockCollection = MockCollectionReference<Map<String, dynamic>>();
    mockDocument = MockDocumentReference<Map<String, dynamic>>();
    mockQuerySnapshot = MockQuerySnapshot<Map<String, dynamic>>();
    mockQueryDocumentSnapshot =
        MockQueryDocumentSnapshot<Map<String, dynamic>>();
    mockDocumentSnapshot = MockDocumentSnapshot<Map<String, dynamic>>();
    shoeService = ShoeServiceImpl();

    when(mockFirestore.collection('Shoes')).thenReturn(mockCollection);
  });

  group('fetchShoes', () {
    test('should return a list of shoes when the call completes successfully',
        () async {
      final shoeJson = {
        'name': 'Shoe 1',
        'brand': 'Brand 1',
        'description': 'Description 1',
        'price': 99.99,
        'rating': 4.5,
        'sizes': ['8', '9', '10'],
        'colors': ['#FFFFFF', '#000000'],
        'genderType': 'Unisex',
        'reviews': []
      };

      when(mockCollection.get()).thenAnswer((_) async => mockQuerySnapshot);
      when(mockQuerySnapshot.docs).thenReturn([mockQueryDocumentSnapshot]);
      when(mockQueryDocumentSnapshot.data()).thenReturn(shoeJson);
      when(mockQueryDocumentSnapshot.id).thenReturn('shoeId');

      final result = await shoeService.fetchShoes();

      expect(result, isA<List<ShoeResponse>>());
      expect(result.length, 1);
      expect(result[0].name, 'Shoe 1');
      expect(result[0].id, 'shoeId');
    });

    test('should throw an exception when there is an error', () {
      when(mockCollection.get()).thenThrow(Exception('Error fetching shoes'));

      expect(shoeService.fetchShoes(), throwsException);
    });
  });

  group('fetchShoeById', () {
    test('should return a shoe when the call completes successfully', () async {
      final shoeJson = {
        'name': 'Shoe 1',
        'brand': 'Brand 1',
        'description': 'Description 1',
        'price': 99.99,
        'rating': 4.5,
        'sizes': ['8', '9', '10'],
        'colors': ['#FFFFFF', '#000000'],
        'genderType': 'Unisex',
        'reviews': []
      };

      when(mockCollection.doc('shoeId')).thenReturn(mockDocument);
      when(mockDocument.get()).thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(true);
      when(mockDocumentSnapshot.data()).thenReturn(shoeJson);
      when(mockDocumentSnapshot.id).thenReturn('shoeId');

      final result = await shoeService.fetchShoeById('shoeId');

      expect(result, isA<ShoeResponse>());
      expect(result?.name, 'Shoe 1');
      expect(result?.id, 'shoeId');
    });

    test('should return null when the shoe does not exist', () async {
      when(mockCollection.doc('shoeId')).thenReturn(mockDocument);
      when(mockDocument.get()).thenAnswer((_) async => mockDocumentSnapshot);
      when(mockDocumentSnapshot.exists).thenReturn(false);

      final result = await shoeService.fetchShoeById('shoeId');

      expect(result, isNull);
    });

    test('should throw an exception when there is an error', () {
      when(mockCollection.doc('shoeId')).thenReturn(mockDocument);
      when(mockDocument.get())
          .thenThrow(Exception('Error fetching shoe by id'));

      expect(shoeService.fetchShoeById('shoeId'), throwsException);
    });
  });
}
