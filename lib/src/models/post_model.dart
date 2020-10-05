class PostModel{
  String pageAvatar;
  String pageName;
  String postImage;
  String likes;
  String description;
  String comments;
  String time;
  bool saved;
  bool favourite;

  PostModel({this.pageAvatar, this.pageName, this.postImage, this.likes, this.description, this.comments, this.time, this.saved, this.favourite});
}

List<PostModel> dataModel = [
  PostModel(
      pageAvatar: 'https://images.unsplash.com/photo-1517404215738-15263e9f9178?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
      pageName: 'Page no 1',
      postImage: 'https://images.unsplash.com/photo-1598128558393-70ff21433be0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=422&q=80',
      likes: '1765',
      description: 'This is post no 1',
      comments: '45',
      time: '17',
      saved: false,
      favourite: false
  ),
  PostModel(
      pageAvatar: 'https://images.unsplash.com/photo-1599261452748-85ec9f3465d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80',
      pageName: 'Page no 2',
      postImage: 'https://images.unsplash.com/photo-1599304109143-f34f59eccf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      likes: '1999',
      description: 'This is post no 2',
      comments: '412',
      time: '8',
      saved: true,
      favourite: true
  ),
  PostModel(
      pageAvatar: 'https://images.unsplash.com/photo-1598929213452-52d72f63e307?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      pageName: 'Page no 3',
      postImage: 'https://images.unsplash.com/photo-1599231091842-e92b2b2bbb68?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      likes: '72k',
      description: 'This is post no 3',
      comments: '4591',
      time: '6',
      saved: false,
      favourite: false
  ),
  PostModel(
      pageAvatar: 'https://images.unsplash.com/photo-1599249300675-c39f1dd2d6be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      pageName: 'Page no 4',
      postImage: 'https://images.unsplash.com/photo-1593642634443-44adaa06623a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      likes: '789',
      description: 'This is post no 4',
      comments: '212',
      time: '13',
      saved: false,
      favourite: false
  ),
  PostModel(
      pageAvatar: 'https://images.unsplash.com/photo-1599226209077-2e3aaf1b6749?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80',
      pageName: 'Page no 5',
      postImage: 'https://images.unsplash.com/photo-1599140849279-1014532882fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
      likes: '9.1k',
      description: 'This is post nop 1',
      comments: '4773',
      time: '11',
      saved: false,
      favourite: false
  )
];
