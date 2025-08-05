import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/search_movie_provider.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchProvider =
        Provider.of<SearchMovieProvider>(context, listen: false);

    return TextField(
      controller: _controller,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Write The Movie Name...',
        suffixIcon: IconButton(
          onPressed: () {
            final query = _controller.text.trim();
            if (query.isNotEmpty) {
              searchProvider.fetchSearchedMovies(query);
            }
          },
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              Icons.search,
              size: 22,
            ),
          ),
        ),
      ),
      onChanged: (query) {
        if (query.isNotEmpty) {
          searchProvider.fetchSearchedMovies(query);
        }
      },
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
