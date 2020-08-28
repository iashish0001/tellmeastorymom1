import 'package:cloud_firestore/cloud_firestore.dart';

class StoryData {
  String id;
  String storyImageURL;
  String title;
  bool isBookmarked;
  String author;
  List<String> related;
  String posted;
  String estimated;
  String content;
  bool isLiked;
  bool isLatest;
  bool isRecommended;

  StoryData(
      {this.author,
      this.content,
      this.estimated,
      this.id,
      this.isBookmarked,
      this.isLiked,
      this.isLatest,
      this.isRecommended,
      this.posted,
      this.related,
      this.storyImageURL,
      this.title});

  StoryData.fromSnapshot(DocumentSnapshot snapshot) {
    this.author = snapshot.data()['author'];
    this.content = snapshot.data()['content'];
    this.estimated = snapshot.data()['estimated'];
    this.id = snapshot.id.toString();
    this.isBookmarked = snapshot.data()['isBookmarked'];
    this.isLiked = snapshot.data()['isLiked'];
    this.isLatest = snapshot.data()['isLatest'];
    this.isRecommended = snapshot.data()['isRecommended'];
    this.posted = snapshot.data()['posted'];
    this.related = snapshot.data()['related'].cast<String>();
    this.storyImageURL = snapshot.data()['storyImageURL'];
    this.title = snapshot.data()['title'];
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'content': content,
      'estimated': estimated,
      'isBookmarked': isBookmarked,
      'isLiked': isLiked,
      'posted': posted,
      "related": related,
      'storyImageURL': storyImageURL,
      'title': title,
    };
  }
}

List<StoryData> popularStories = [];
List<StoryData> recommendedStories = [];
List<StoryData> latestStories = [];
List<StoryData> likedStories = [];
List<StoryData> bookmarkedStories = [];
