class Course {
  /* stores data of course

     purpose: to store and retrieve data related to course
     */

  int cid; // Unique id of courses
  String cname; // course name
  String uname; //user name
  String createdDate; //date of creation of course
  String desc; //description
  String type; //type of course
  String link; //link of course
  String platform; //platform providing course(like udemy,coursera)
  int upvCount; //no. of upvotes/likes on course
  int free; //represent boolean value free=1 and paid=0

  //Constructor for Course
  Course(int cid, String cname, String uname, String createdDate, String desc,
      String type, String link, String platform, int upvCount, int free) {
    this.cid = cid;
    this.cname = cname;
    this.uname = uname;
    this.createdDate = createdDate;
    this.desc = desc;
    this.type = type;
    this.link = link;
    this.platform = platform;
    this.upvCount = upvCount;
    this.free = free;
  }
}

class CourseReview {
  int cid; //course id
  String uname; //user name
  String review; //review on course

  //constructor for CourseReview
  CourseReview(int cid, String uname, String review) {
    this.cid = cid;
    this.uname = uname;
    this.review = review;
  }

}

class User {
  int uid; //user id
  String uname;  //user name
  String doj;  //date of joining
  List<int> addedCourses;  //courses added  by user
  List<int> upvotedCourses;  //courses upvoted by user
  List<int> reviewedCourses;  //courses reviewed by user
  String interest1;  //first interest
  String interest2;  //second interest
  String interest3;  //third interest

  //constructor User
  User(int uid, String uname, String doj, List<int> addedCourses,
      List<int> upvotedCourses, List<int> reviewedCourses, String interest1,
      String interest2, String interest3,) {
        this.uid = uid;
        this.uname =uname;
        this.doj =doj;
        this.addedCourses =addedCourses;
        this.upvotedCourses =upvotedCourses;
        this.reviewedCourses =reviewedCourses;
        this.interest1 =interest1;
        this.interest2 =interest2;
        this.interest3 =interest3;
  }
}
