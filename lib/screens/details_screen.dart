import 'package:flutter/material.dart';
import 'package:movies/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(),
              _Overview(),
              _Overview(),
              _Overview(),
              CastingCards(),
            ])
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Titulo de la pelicula',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://instagram.fbog4-1.fna.fbcdn.net/v/t51.2885-15/185819036_149165543888376_3744054609224505559_n.jpg?stp=dst-jpg_e35_p750x750_sh0.08&_nc_ht=instagram.fbog4-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=zWMD7u4vij8AX8yI2nc&tn=ftB8nw7AR-xlpG7S&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjU3NDU0NDA5MjY2OTk1NjYzOA%3D%3D.2-ccb7-5&oh=00_AT-AbbI9kNxjmvBnGoNPatkslUSrks3u7RSPpEswmkZpdw&oe=630A0A72&_nc_sid=30a2ef'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://instagram.fbog4-1.fna.fbcdn.net/v/t51.2885-15/185819036_149165543888376_3744054609224505559_n.jpg?stp=dst-jpg_e35_p750x750_sh0.08&_nc_ht=instagram.fbog4-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=zWMD7u4vij8AX8yI2nc&tn=ftB8nw7AR-xlpG7S&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjU3NDU0NDA5MjY2OTk1NjYzOA%3D%3D.2-ccb7-5&oh=00_AT-AbbI9kNxjmvBnGoNPatkslUSrks3u7RSPpEswmkZpdw&oe=630A0A72&_nc_sid=30a2ef'),
              height: 150,
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Titulo imagen', style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('movie.originalTitle', style: textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 1,),
              Row(
                children: [
                  Icon(Icons.star_outline, size: 15, color: Colors.grey,),
                  SizedBox(width: 5,),
                  Text('movie.voteAverage',style: Theme.of(context).textTheme.caption,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'lorem ipsum dolor iset, lorem ipsum dolor iset. lorem ipsum dolor iset. lorem ipsum dolor iset, lorem ipsum dolor iset, lorem ipsum dolor iset, lorem ipsum dolor iset. lorem ipsum dolor iset. lorem ipsum dolor iset, lorem ipsum dolor,lorem ipsum dolor iset',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
