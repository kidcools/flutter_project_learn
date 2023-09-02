import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:flutter_project_learn/common/values/images.dart';

/**
 * 图集item
 */
class PortraitItem extends StatelessWidget {
  const PortraitItem({Key? key}) : super(key: key);
  Widget _buildCenterText(String title) {
    return Center(
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 4,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 10,
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  child: ExtendedImage.network(
                    height:constrains.maxHeight,
                    "https://gd1.alicdn.com/imgextra/i3/1580181407/O1CN017Gx1tj1MGS1DHJo4Z_!!1580181407.jpg_400x400.jpg",
                    headers: imageHeaders,
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(20),
                    enableMemoryCache: true,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Text(
                    'right Top',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
              ]),
            ),
            Expanded(
              flex: 3,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                child: Container(
                  color: Colors.white,
                  width: constrains.maxWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Expanded(child: TextButton(
                          onPressed: () {  },
                          child: _getNomalText("[秀人XiuRen] 2023.05.17 No.6748 露露[秀人XiuRen] 2023.05.17 No.6748 露露[秀人XiuRen] 2023.05.17 No.6748 露露[秀人XiuRen] 2023.05.17 No.6748 露露"),
                        ), flex: 2),
                        Expanded(child: Row(
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: _getNomalText("机构: ",size: 15),
                            )
                          ],
                        ), flex: 1),
                        Expanded(child: Row(
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: _getNomalText("标签: ",size: 15),
                            )
                          ],
                        ), flex: 1),
                        Expanded(child: Row(
                            crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: _getNomalText("人物: ",size: 15),
                            )
                          ],
                        ), flex: 1),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
  Widget _getNomalText(String info,{double? size}){
    return Text(info,style: TextStyle(fontSize:size ?? 13,), maxLines: 2,  overflow: TextOverflow.ellipsis,);
  }
}
