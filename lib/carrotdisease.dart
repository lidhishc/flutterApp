import 'package:flutter/material.dart';

class CarrotDise extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(
                    image: AssetImage('images/good.jpg'),
                    fit: BoxFit.fill),
              ),
      
      
      child:Column(
        

          children: <Widget>[
               Container(
                    padding:EdgeInsets.fromLTRB(30, 20.0, 0.0, 0.0),
                    child:Row(
                      children: <Widget>[
                       Text(
                        'Hello from ',
                        style:TextStyle(
                            color: Colors.white,
                            fontFamily:'Montserrat',
                            fontSize:30,
                            
                            
                        ) 
                    ),
                    SizedBox(width:10.0),
                    Text('AGRO DOC',
                    style:TextStyle(
                      fontFamily: 'Monteserrat',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ))
                      ],
                    ),
                  ),

                  Container(
                  padding:EdgeInsets.fromLTRB(0, 220.0, 0.0, 0.0),
                  child: Text('Fungal Diseases Crown /n and root rots are caused by Rhizoctonia and Pythium spp. pathogens. Common symptoms to look for are the tops of carrot roots turning mushy and rotting, and the foliage may die to the ground as well. Roots also become stunted or forked. Leaf spot is typically caused by Cercospora spp. pathogens. Symptoms of this fungal ailment are dark, circular spots with yellow halos on carrot leaves. Leaf blight caused from Alternaria spp. pathogens will have irregularly shaped brownish-black areas with yellow centers on carrot foliage. Powdery mildew fungus (Erysiphe spp. pathogens) is fairly easy to notice as plants will typically exhibit white, cottony growths on the leaves and stems. Bacterial Diseases Bacterial leaf spot is caused from Pseudomonas and Xanthomonas spp. pathogens. Early symptoms are yellow areas on leaves and stems that become brown in the middle. Advanced symptoms are brown streaks on the leaves and stems that may have yellow halos. Mycoplasma Diseases Aster yellows is a conditions that includes yellowing foliage, excessive foliage growth and a bunching habit of the leaves. Carrot roots will also taste bitter.',


                  style:TextStyle(
                            color:Colors.amber,
                            fontWeight:FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontFamily:'Montserrat',
                            fontSize: 20,
                          ), ),

                ), 
          ]
      )
      )
  );
  }
}