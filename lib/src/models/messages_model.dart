class MessagesModel{
  String avatar;
  String name;
  String description;
  String time;

  MessagesModel({this.name, this.time, this.description, this.avatar});
}

List<MessagesModel> messageModel = [
  MessagesModel(
    name : 'Zain Khan',
    time: '4d',
    description: 'Shared a link',
    avatar: 'https://images.unsplash.com/photo-1598128558393-70ff21433be0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=422&q=80'
  ),
  MessagesModel(
    name : 'Haroon',
    time: '1h',
    description: 'Active',
    avatar: 'https://images.unsplash.com/photo-1599304109143-f34f59eccf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  ),
  MessagesModel(
    name : 'Nabeel',
    time: '5min',
    description: 'Shared a Post',
    avatar: 'https://images.unsplash.com/photo-1599231091842-e92b2b2bbb68?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  ),
  MessagesModel(
    name : 'Arish Sultan',
    time: '143w',
    description: 'Shared a link',
    avatar: 'https://images.unsplash.com/photo-1598128558393-70ff21433be0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=422&q=80'
  ),
];