import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      color: Colors.grey.shade200,
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'onlineKhabar',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500),
              ),
              Text(
                'कांग्रेसका अन्य पदाधिकारी र केन्द्रीय सदस्यहरुको मतगणना शुरू गर्ने तयारी',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              Text(
                '२९ मंसिर, काठमाडौं । नेपाली कांग्रेसको महाधिवेशनमा निर्वाचन भएको अन्य पदाधिकारी र केन्द्रीय सदस्यहरुको मतगणना बुधबारबाट शुरु',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text('2 hrs ago',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500)),
            ],
          )),
          Expanded(
            child: Image.network(
              'https://www.onlinekhabar.com/wp-content/uploads/2021/12/sher-Bahasur-deuba.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
