part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.grey,
      ),
      // floatingActionButton: ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnReactive(
              () => Text(
                _dt.rxCount.state.toString(),
                textScaler: const TextScaler.linear(1.5),
              ),
            ),
            OnBuilder(
              listenTo: _dt.rxCount,
              builder: () => Text(
                _dt.rxCount.state.toString(),
                textScaler: const TextScaler.linear(1.5),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                _ct.tambah();
              },
              child: const Text('Tambah'),
            )
          ],
        ),
      ),
    );
  }
}
