import 'package:flutter/material.dart';

void main() {
  runApp(const SandubaApp());
}

class SandubaApp extends StatelessWidget {
  const SandubaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sanduba Order - Ordene as Telas!'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const ScreenPuzzle(),
      ),
    );
  }
}

// Tela principal com as telas embaralhadas
class ScreenPuzzle extends StatelessWidget {
  const ScreenPuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Ordene as telas para criar um fluxo de compra lógico:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen3()),
              );
            },
            child: const Text('Tela 1:Carrinho de Compras'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen1()),
              );
            },
            child: const Text('Tela 2: Lista de Proutos   '),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen4()),
              );
            },
            child: const Text('Tela 3: Confirmação de Pedidos   '),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen2()),
              );
            },
            child: const Text('Tela 4: finalização de Pedido  '),
          ),
        ],
      ),
    );
  }
}

// Tela 1: Lista de Produtos (deveria ser a primeira)
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cardápio')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Hambúrguer Artesanal'),
            subtitle: const Text('R\$ 23,99'),
            leading: const Icon(Icons.fastfood),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen2()),
              );
            },
          ),
          // Outros itens do cardápio...
        ],
      ),
    );
  }
}

// Tela 2: Detalhes do Sanduíche (fornecida por você - deveria ser a segunda)
class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanduba!'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://admin.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/hamburguer-unsplash.jpg',
              height: 100,
            ),
            const SizedBox(height: 10),
            const Text(
              'Delicioso hambúrguer artesanal...',
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 10),
            const Text(
              'R\$ 23,99',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Adicionado ao carrinho!')),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen3()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: const Text('Adicionar ao Carrinho'),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela 3: Carrinho de Compras (terceira)
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho')),
      body: Column(
        children: [
          const ListTile(
            title: Text('Hambúrguer Artesanal'),
            subtitle: Text('R\$ 23,99'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen4()),
              );
            },
            child: const Text('Finalizar Pedido'),
          ),
        ],
      ),
    );
  }
}

// Tela 4: Confirmação (última)
class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pedido Confirmado!')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 50),
            Text('Seu pedido foi recebido!'),
          ],
        ),
      ),
    );
  }
}
