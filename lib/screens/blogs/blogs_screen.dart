import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/screens/blogs/blog.dart';
import 'package:thppy_administration/screens/blogs/add_blog_dialog.dart';
import 'package:thppy_administration/widgets/header_widget.dart';

class BlogsScreen extends StatefulWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {
  @override
  Widget build(BuildContext context) {
    final blogs = Provider.of<List<Blog>>(context);
    return HeaderWidget(
      title: 'Blogs',
      onGeneratePressed: () {},
      onAddPressed: () => showDialog(
        context: context,
        builder: (context) => const AddBlogDialog(),
        barrierDismissible: false,
      ),
      child: Flexible(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.67,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(blogs[index].pic),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    blogs[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    blogs[index].description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit_rounded,
                            color: Colors.orange),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.delete_rounded, color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: blogs.length,
        ),
      ),
    );
  }
}
