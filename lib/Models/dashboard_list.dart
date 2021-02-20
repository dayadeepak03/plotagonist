class DashBoardList {
  String title;
  List<DashboardListData> dashboardListData;

  DashBoardList({this.title, this.dashboardListData});
}

class DashboardListData {
  String book_img;
  String author_name;
  String book_name;
  String entries;
  String edited;
  String desc;
  String button_title;
  String text_title;
  String invite_avatar;
  String invite_name;

  DashboardListData(
      {this.book_img,
      this.author_name,
      this.book_name,
      this.entries,
      this.edited,
      this.desc,
      this.button_title,
      this.text_title,
      this.invite_avatar,
      this.invite_name});
}

List<DashBoardList> dashboardList = [
  DashBoardList(title: 'Your Plots', dashboardListData: dashboardListData),
  DashBoardList(title: 'Writing Prompts'),
  DashBoardList(title: 'Invites')
];

List<DashboardListData> dashboardListData = [
  DashboardListData(
    book_img: 'assets/images/2.jpeg',
    author_name: 'AUTHOR NAME',
    book_name: 'BOOK TITLE',
  )
];
