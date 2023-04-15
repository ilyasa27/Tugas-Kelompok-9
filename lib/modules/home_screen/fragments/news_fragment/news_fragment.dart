import 'package:flutter/material.dart';

class NewsFragment extends StatelessWidget {
  const NewsFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Fragment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildNewsItem(
              'https://id-test-11.slatic.net/p/397f02b906ae5290587b755ec33f30b2.png',
              'Thinkpad T470 Bisnis',
              'Laptop idaman para pebisnis dimana ditanami baterai yang tahan hingga 12 jam',
            ),
            _buildNewsItem(
              'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/9/26/2a9231fc-ace4-49d7-b90a-0aadd8988082.jpg',
              'Thinkpad X1 Carbon Gaming',
              'Laptop X1 Carbon ini akan bikin gamers terpukau dengan spek gamingnya',
            ),
            _buildNewsItem(
              'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/9/21/c89c2c71-ab5c-434c-a6d4-f016622031a5.jpg',
              'Thinkpad T480 Bisnis',
              'Laptop bisnis sekaligus laptop gaming!!',
            ),
            _buildNewsItem(
              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-53603444/asus_laptop_gaming_asus_tuf_gaming_a15_r7_6800h_fa507rc_ram_16gb_8gb_512gb_ssd_rtx_3050_15-6-_144hz_windows_11_ohs_2021_fa507rc-r735b7g-o_-_r735b6g-o_full02_pz4ld24c.jpg',
              'TUF Gaming',
              'Laptop bisnis sekaligus laptop gaming!!',
            ),
            _buildNewsItem(
              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-53603444/asus_laptop_gaming_asus_tuf_gaming_a15_r7_6800h_fa507rc_ram_16gb_8gb_512gb_ssd_rtx_3050_15-6-_144hz_windows_11_ohs_2021_fa507rc-r735b7g-o_-_r735b6g-o_full02_pz4ld24c.jpg',
              'TUF Gaming',
              'Laptop bisnis sekaligus laptop gaming!!',
            ),
            _buildNewsItem(
              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-53603444/asus_laptop_gaming_asus_tuf_gaming_a15_r7_6800h_fa507rc_ram_16gb_8gb_512gb_ssd_rtx_3050_15-6-_144hz_windows_11_ohs_2021_fa507rc-r735b7g-o_-_r735b6g-o_full02_pz4ld24c.jpg',
              'TUF Gaming',
              'Laptop bisnis sekaligus laptop gaming!!',
            ),
            _buildNewsItem(
              'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-53603444/asus_laptop_gaming_asus_tuf_gaming_a15_r7_6800h_fa507rc_ram_16gb_8gb_512gb_ssd_rtx_3050_15-6-_144hz_windows_11_ohs_2021_fa507rc-r735b7g-o_-_r735b6g-o_full02_pz4ld24c.jpg',
              'TUF Gaming',
              'Laptop bisnis sekaligus laptop gaming!!',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsItem(String imageUrl, String title, String summary) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Image.network(
              imageUrl,
              height: 120,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(summary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
