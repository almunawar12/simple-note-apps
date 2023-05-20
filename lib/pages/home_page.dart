import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Apps',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: const [
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
          ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).pushNamed('add-note');
        },
        child: const Icon(Icons.note_add),
        ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Card(
      child: ListTile(
        title: Text('Ini Judul'),
        subtitle: Text('Ini Deskripsi'),
        trailing: Text('Dibuat pada \n 02-03-2023', 
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}