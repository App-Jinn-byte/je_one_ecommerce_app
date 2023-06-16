import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';


class BottomSheetWidget extends StatefulWidget {
  final Function? onCamera;
  final Function? onGallery;

   const BottomSheetWidget({

    required  this.onCamera,
    required this.onGallery,
     Key? key
  }) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: getHeight() * 0.15,
      width: MediaQuery.of(context).size.width,

      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontSize: sizes!.extraLargeFontSize,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: const Icon(Icons.camera_alt_outlined,
                    color: AppColors.txtfeildColor),
                onPressed: () => widget.onCamera!(),
                label: const Text('Camera',
                    style: TextStyle(color: AppColors.txtfeildColor)),
              ),
              TextButton.icon(
                icon: const Icon(Icons.image_outlined,
                    color: AppColors.txtfeildColor),
                onPressed: (){
                  widget.onGallery!();
                  setState(() {

                  });
                },
                label: const Text('Gallery',
                    style: TextStyle(color: AppColors.txtfeildColor)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
