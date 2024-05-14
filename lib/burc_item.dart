import 'package:flutter/material.dart';
import 'package:flutter_burc_programi/burc_detay.dart';
import 'package:flutter_burc_programi/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ));
            },
            leading: Image.asset(
              "assets/images/" + listelenenBurc.burcKucukResim,
              /*width: 128,
              height: 128,*/
              //Resimlerde yükseklik genişlik vermek tavsiye edilmiyor.fit kullanmak daha iyi...
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headlineMedium,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.titleMedium,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.cyan,
            ),
          ),
        ),
      ),
    );
  }
}
