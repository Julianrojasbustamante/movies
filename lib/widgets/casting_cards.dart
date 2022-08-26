import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index){
          return _CastCard();
        }
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://instagram.fbog4-1.fna.fbcdn.net/v/t51.2885-15/185819036_149165543888376_3744054609224505559_n.jpg?stp=dst-jpg_e35_p750x750_sh0.08&_nc_ht=instagram.fbog4-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=zWMD7u4vij8AX8yI2nc&tn=ftB8nw7AR-xlpG7S&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjU3NDU0NDA5MjY2OTk1NjYzOA%3D%3D.2-ccb7-5&oh=00_AT-AbbI9kNxjmvBnGoNPatkslUSrks3u7RSPpEswmkZpdw&oe=630A0A72&_nc_sid=30a2ef'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'actor.name dfadsfaf sda',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

