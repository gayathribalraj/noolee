import 'package:flutter/material.dart';

class LikeDislikeButton extends StatefulWidget{
  final int likeCount ;
  final int dislikeCount;
  


  const LikeDislikeButton (
    {
      required this.dislikeCount,
      required this.likeCount
    }
    
   
  );
  
  @override
  State<LikeDislikeButton> createState()=> _LikeDislikeButtonState() ;

} 
class _LikeDislikeButtonState extends State<LikeDislikeButton>{

  bool?isLike;

   toggleLike(){
    setState(() {
      if(isLike == true){
        isLike = null;
      }
      else{
        isLike = true;
      }
    });
  }
  toggledisLike(){
    setState(() {
      if(isLike == false){
        isLike = null;
      }
      else{
        isLike = false;
      }
    });
  }

  int likeCount =0;
  int dislikeCount = 0;

  @override
  void initState() {
    super.initState();
    likeCount = widget.likeCount;
    dislikeCount = widget.dislikeCount;

  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        IconButton(onPressed:(){toggleLike();
},
        icon: Icon(Icons.thumb_up),
        color:isLike== true? Colors.blue: Colors.grey,
        highlightColor: const Color.fromARGB(135, 255, 193, 7),
        ),
        Text('$likeCount'),
        SizedBox(width: 20),
         IconButton(onPressed: (){
          toggledisLike();
         }, 
        icon: Icon(Icons.thumb_down),
        color:isLike == false ?Colors.red: Colors.grey,
        highlightColor: const Color.fromARGB(135, 255, 193, 7),
        ),
        Text('$dislikeCount')

      ],
    );


  }
  


  
}