import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postID;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.postID,
    required this.likes,
  });
  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'description': description,
        'datePublished': datePublished,
        'postUrl': postUrl,
        'profImage': profImage,
        'postID': postID,
        'likes': likes,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      datePublished: snapshot['datePublished'],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage'],
      postID: snapshot['postID'],
      likes: snapshot['likes'],
    );
  }
}
