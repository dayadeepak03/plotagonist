class DashBoardList {
  String title;
  bool selected;
  List<DashboardListData> dashboardListData;

  DashBoardList({this.title, this.selected, this.dashboardListData});
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
  DashBoardList(
      title: 'Your Plots',
      selected: false,
      dashboardListData: dashboardListData),
  DashBoardList(
      title: 'Writing Prompts',
      selected: false,
      dashboardListData: dashboardListData2),
  DashBoardList(
      title: 'Invites', selected: false, dashboardListData: dashboardListData3)
];

List<DashboardListData> dashboardListData = [
  DashboardListData(
      book_img: 'assets/images/2.jpeg',
      author_name: 'AUTHOR NAME',
      book_name: 'Book Title',
      entries: '0',
      edited: 'Never',
      desc:
          'Click the orange button, or tap on the author name and the title to edit, '
          'then tap on the cover to find a random cover photo based on your title. Tap again to get another photo.'),
];

List<DashboardListData> dashboardListData2 = [
  DashboardListData(
    book_img: 'assets/images/writing.png',
    author_name: 'PETE PLOTAGONIST',
    book_name: 'Red Riding Hood',
    entries: '210',
    edited: '13/02/2019',
    desc:
        'We prepared this writing prompt to make it easy for you to get familiar with the platform. '
        'Go ahead, create a copy and play around with this timeless classic in your own style.',
    button_title: 'CREATE COPY',
    text_title: 'Maybe later',
  ),
];

List<DashboardListData> dashboardListData3 = [
  DashboardListData(
    book_img: 'assets/images/invite.png',
    author_name: 'CAROL SIMS',
    book_name: 'The Heirs Of The Sky Frontier',
    entries: '8321',
    edited: '13/02/2019',
    desc: 'INVITED YOU TO BE A CO_AUTHOR',
    button_title: 'ACCEPT INVITE',
    text_title: 'Decline invite',
    invite_name: 'AARON A. JONES',
    invite_avatar: 'assets/images/aaron.png',
  ),
  DashboardListData(
    book_img: 'assets/images/invite1.png',
    author_name: 'AARON A.JONES',
    book_name: 'Cold War',
    entries: '8321',
    edited: '13/02/2019',
    desc: 'INVITED YOU TO BE A CO_AUTHOR',
    button_title: 'ACCEPT INVITE',
    text_title: 'Decline invite',
    invite_name: 'AARON A. JONES',
    invite_avatar: 'assets/images/aaron.png',
  ),
  DashboardListData(
    book_img: 'assets/images/invite2.png',
    author_name: 'AARON A.JONES',
    book_name: 'Lone State',
    entries: '8321',
    edited: '13/02/2019',
    desc: 'INVITED YOU TO BE A CO_AUTHOR',
    button_title: 'ACCEPT INVITE',
    text_title: 'Decline invite',
    invite_name: 'AARON A. JONES',
    invite_avatar: 'assets/images/aaron.png',
  ),
  DashboardListData(
    book_img: 'assets/images/invite3.png',
    author_name: 'MARSHA FERGUSON',
    book_name: 'Beyond Darkness',
    entries: '8321',
    edited: '13/02/2019',
    desc: 'INVITED YOU TO BE A CO_AUTHOR',
    button_title: 'ACCEPT INVITE',
    text_title: 'Decline invite',
    invite_name: 'Rick Boyd',
    invite_avatar: 'assets/images/rick.png',
  )
];
