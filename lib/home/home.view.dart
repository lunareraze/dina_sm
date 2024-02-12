part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnReactive(
              () => Text(
                _dt.rxCount.state.toString(),
                textScaler: const TextScaler.linear(2),
              ),
            ),
            OnBuilder(
              listenTo: _dt.rxCount,
              builder: () => Text(
                _dt.rxCount.state.toString(),
                textScaler: const TextScaler.linear(2),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    _ct.kurang();
                  },
                  child: const Text('Kurang'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    _ct.tambah();
                  },
                  child: const Text('Tambah'),
                ),
              ],
            ),
            const SizedBox(height: 50),
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     SimpleIcons.github,
            //     size: 30,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
