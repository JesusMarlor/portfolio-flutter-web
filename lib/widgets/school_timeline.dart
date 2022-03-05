import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/school.dart';

enum ItemDirection{
  LEFT,
  RIGTH
}

class SchoolTimeline extends StatelessWidget {

  final List<School> listSchools;
  const SchoolTimeline({Key key, this.listSchools}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: listSchools.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index){
          return SlideInUp(
            child: ItemSchool(
              school: listSchools[index],
              itemDirection: index%2==0 ? ItemDirection.LEFT : ItemDirection.RIGTH,
            ),
          );
        },
      ),
    );
  }
}

class ItemSchool extends StatelessWidget {

  final ItemDirection itemDirection;
  final School school;
  const ItemSchool({Key key, @required this.itemDirection, @required this.school}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("item paint: ${school.title}");
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: itemDirection == ItemDirection.LEFT ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text( school.title ?? "-", style: const TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
                        Text( school.description ?? "-", style: const TextStyle( fontSize: 18 ),),
                      ],
                    ),
                    const SizedBox( width: 20,),
                    Text( school.year, style: TextStyle( fontSize: 40, color: Colors.blueGrey ),)
                  ],
                )
            : const SizedBox(),
          ),
          Column(
            children:  [
              Container(
                color: Colors.blue,
                height: 50,
                width: 1,
              ),
              const Icon( Icons.circle, color: Colors.blue ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 1,
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: itemDirection == ItemDirection.RIGTH ?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text( school.year, style: TextStyle( fontSize: 40, color: Colors.blueGrey ),),
                const SizedBox( width: 20,),
                Column(
                  children: [
                    Text( school.title ?? "-", style: const TextStyle( fontSize: 22, fontWeight: FontWeight.bold),),
                    Text( school.description ?? "-", style: const TextStyle( fontSize: 18 ),),
                  ],
                ),
              ],
            ) : const SizedBox(),
          ),
        ],
      )
    );
  }

}
