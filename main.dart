import 'package:flutter/material.dart';

void main() {
  runApp(SkypeHomePage());
}

class SkypeHomePage extends StatefulWidget {
  @override
  _SkypeHomePageState createState() => _SkypeHomePageState();
}

class _SkypeHomePageState extends State<SkypeHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Chat'),
    Text('Call'),
    Text('Contacts'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              leading: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {},
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLez1-NUMNd86-xxjY6r_k69yTNy6W-Tgveg&usqp=CAU'),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: ListView(
              children: <Widget>[
                SkypeChatMemberTile(
                  memberName: 'Syed Hamza Shafiq',
                  lastMessage: 'Message 1',
                  lastMessageTime: '10m ago',
                  profileImageUrl:
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ab60cab7-0751-4261-a1f6-268e74c937e3/dahox3b-e54ce30c-2884-4561-9882-0240ba99d503.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2FiNjBjYWI3LTA3NTEtNDI2MS1hMWY2LTI2OGU3NGM5MzdlM1wvZGFob3gzYi1lNTRjZTMwYy0yODg0LTQ1NjEtOTg4Mi0wMjQwYmE5OWQ1MDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.eRc6iWz7BgTiI6CKAbJf1ElbwC73ByyKHMsFwYtR27g',
                ),
                SkypeChatMemberTile(
                  memberName: 'Ahmed Aqil',
                  lastMessage: 'Message 2',
                  lastMessageTime: '20m ago',
                  profileImageUrl:
                      'https://wallpapers.com/images/file/dragon-ball-z-son-goku-saiyan-anime-profile-xpxqh1qo6rri8ugf.jpg',
                ),
                SkypeChatMemberTile(
                  memberName: 'Shayan Malik',
                  lastMessage: 'Message 3',
                  lastMessageTime: '30m ago',
                  profileImageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5ueGYjVvQsxRPNjcDlKmgt-xcTV0b2tnm8A&usqp=CAU',
                ),
                SkypeChatMemberTile(
                  memberName: 'Owais Mulla',
                  lastMessage: 'Message 4',
                  lastMessageTime: '40m ago',
                  profileImageUrl:
                      'https://w0.peakpx.com/wallpaper/105/448/HD-wallpaper-dragon-ball-super-anime-broly-goku-movie-silver-vegeta-thumbnail.jpg',
                ),
                SkypeChatMemberTile(
                  memberName: 'Roomi',
                  lastMessage: 'Message 5',
                  lastMessageTime: '50m ago',
                  profileImageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM_zmMp1Xd7vIUJpdbd7ysXQjiIolVbfjh6Q&usqp=CAU',
                ),
                SkypeChatMemberTile(
                  memberName: 'Umer',
                  lastMessage: 'Message 6',
                  lastMessageTime: '1h ago',
                  profileImageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9U7LPZG21iODkeqwVPLBUv_je5MU5ofRnHQ&usqp=CAU',
                ),
                SkypeChatMemberTile(
                  memberName: 'Shahriyar',
                  lastMessage: 'Message 7',
                  lastMessageTime: '2h ago',
                  profileImageUrl:
                      'https://c4.wallpaperflare.com/wallpaper/955/105/133/dragon-ball-dragon-ball-z-vegeta-dragon-ball-wallpaper-preview.jpg',
                ),
                SkypeChatMemberTile(
                  memberName: 'Ebad',
                  lastMessage: 'Message 8',
                  lastMessageTime: '3h ago',
                  profileImageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOJAlrc7vp8UM7ULdNPpDWTj43VMCcmaSuLWniJ1GSJ6kvUPYCS0uW94QpswRzhHmyf1w&usqp=CAU',
                ),
                SkypeChatMemberTile(
                  memberName: 'Ali Ahmed',
                  lastMessage: 'Message 9',
                  lastMessageTime: '4h ago',
                  profileImageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOJAlrc7vp8UM7ULdNPpDWTj43VMCcmaSuLWniJ1GSJ6kvUPYCS0uW94QpswRzhHmyf1w&usqp=CAU',
                ),
                // Add more tiles for each chat member
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat, color: Colors.black),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call, color: Colors.black),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts, color: Colors.black),
                  label: 'Contacts',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

class SkypeChatMemberTile extends StatelessWidget {
  final String memberName;
  final String lastMessage;
  final String lastMessageTime;
  final String profileImageUrl;

  SkypeChatMemberTile({
    required this.memberName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profileImageUrl),
      ),
      title: Text(memberName),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              lastMessage,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          SizedBox(width: 8),
          Text(
            lastMessageTime,
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
