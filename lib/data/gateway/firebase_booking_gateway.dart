import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/booking_dto.dart';
import 'package:mint/domain/entity/booking.dart';

class FirebaseBookingGateway {
  FirebaseBookingGateway(this.jsonFactory, this.dtoFactory);

  final _firestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;

  final Factory<BookingDto, Map<String, dynamic>> jsonFactory;
  final Factory<Booking, BookingDto> dtoFactory;

  Future<void> createBooking({
    required int price,
    required String doctorId,
    required DateTime time,
    String? description,
  }) async {
    try {
      final docRef = _firestore
          .collection('users')
          .doc(user?.uid)
          .collection('books')
          .doc();
      final bookingUserData = {
        'id': docRef.id,
        'description': description,
        'doctorId': doctorId,
        'time': time,
        'price': price,
        'userId': user?.uid,
        'status': 'upcoming',
      };

      await docRef.set(bookingUserData);

      final doctorRef = _firestore.collection('doctors').doc(doctorId);
      final doctorSnapshot = await doctorRef.get();
      final doctorData = doctorSnapshot.data();

      if (doctorData != null && doctorData.containsKey('bookings')) {
        final currentBookings =
            List<dynamic>.from(doctorData['bookings'] as Iterable<dynamic>)
              ..add(bookingUserData);
        await doctorRef.update({'bookings': currentBookings});
      } else {
        await doctorRef.update({
          'bookings': [bookingUserData]
        });
      }
    } catch (e) {
      throw Exception('Failed to create booking.');
    }
  }

  Future<void> updateBookingDate(
    String bookingId,
    String doctorId,
    DateTime newDate,
  ) async {
    try {
      await _firestore
          .collection('users')
          .doc(user?.uid)
          .collection('books')
          .doc(bookingId)
          .update({'time': newDate});

      final doctorRef = _firestore.collection('doctors').doc(doctorId);
      final doctorSnapshot = await doctorRef.get();
      final doctorData = doctorSnapshot.data();

      if (doctorData != null && doctorData.containsKey('bookings')) {
        final currentBookings =
            List<dynamic>.from(doctorData['bookings'] as Iterable<dynamic>);
        final updatedBookings = currentBookings.map((bookingData) {
          if (bookingData['id'] == bookingId) {
            debugPrint(bookingId);
            bookingData['time'] = newDate;
          }
          return bookingData;
        }).toList();

        await doctorRef.update({'bookings': updatedBookings});
      }
    } catch (e) {
      throw Exception('Failed to update booking.');
    }
  }

  Future<void> removeBooking(
    String bookingId,
    String doctorId,
  ) async {
    try {
      await _firestore
          .collection('users')
          .doc(user?.uid)
          .collection('books')
          .doc(bookingId)
          .update({'isCompleted': true});

      final doctorRef = _firestore.collection('doctors').doc(doctorId);
      final doctorSnapshot = await doctorRef.get();
      final doctorData = doctorSnapshot.data();

      if (doctorData != null && doctorData.containsKey('bookings')) {
        final currentBookings =
            List<dynamic>.from(doctorData['bookings'] as Iterable<dynamic>);
        final updatedBookings = currentBookings
            .where((bookingData) => bookingData['bookingId'] != bookingId)
            .toList();
        await doctorRef.update({'bookings': updatedBookings});
      }
    } catch (e) {
      throw Exception('Failed to delete booking.');
    }
  }

  Future<void> updateBookingStatus(
    String bookingId,
  ) async {
    try {
      await _firestore
          .collection('users')
          .doc(user?.uid)
          .collection('books')
          .doc(bookingId)
          .update({'isCompleted': true});
    } catch (e) {
      throw Exception('Failed to update booking status.');
    }
  }

  Stream<List<Booking>> getBooks() {
    return _firestore
        .collection('users')
        .doc(user?.uid)
        .collection('books')
        .snapshots()
        .map((querySnapshot) {
      final list = querySnapshot.docs.map((docSnapshot) {
        final data = docSnapshot.data();
        final dto = jsonFactory.create(data);
        final bookingDto = dtoFactory.create(dto);
        return bookingDto;
      }).toList();
      return list;
    });
  }
}
