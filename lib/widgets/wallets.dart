import 'package:crypto_wallet/constants.dart';
import 'package:crypto_wallet/widgets/wallet_item.dart';
import 'package:flutter/widgets.dart';

class Wallets extends StatelessWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: pageHorizontalPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const[
            WalletItem(color: Color(0xff177DFF)),
            WalletItem(color: Color(0xffFC9B35)),
            WalletItem(color: Color(0xff177DFF)),
          ],
        ),
      ),
    );
  }
}
