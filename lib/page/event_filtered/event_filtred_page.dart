import 'package:flutter/material.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/data/dto/category/category.dart';
import 'package:unithub/page/tabs/home/widgets/home_search_bar.dart';

class EventFilteredPage extends StatefulWidget {

  final Category category;
  final List<Category> categories;

  const EventFilteredPage({ super.key, required this.category, required this.categories });

  @override
  State<EventFilteredPage> createState() => _EventFilteredPageState();
}

class _EventFilteredPageState extends State<EventFilteredPage> {

  List<Category> selectedCategories = [];

  bool isCategorySelected(Category category) {
    return selectedCategories.contains(category);
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            centerTitle: true,
            leadingWidth: 140,
            leading: Row(
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF007AFF)),
                ),
                const Text("Categorias", style: TextStyle(color: Color(0xFF007AFF), fontSize: 17)),
              ],
            ),
            title: const Text('Eventos', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
          ),
           body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeSearchBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  children: [
                    FilterChip(
                      color: const WidgetStatePropertyAll(Color.fromRGBO(0, 122, 255, 1)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      side: const BorderSide(color: Colors.transparent),
                      deleteIconColor: Colors.white,
                      label: Text(widget.category.category, style: const TextStyle(color: Colors.white, fontSize: 14)),
                      selected: isCategorySelected(widget.category), 
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            selectedCategories.add(widget.category); 
                          } else {
                            selectedCategories.remove(widget.category);
                          }
                        });
                      },
                      onDeleted: () {
                        setState(() {
                          selectedCategories.remove(widget.category); 
                        });
                      },
                    )
                  ],
                ),
              ),
              const Divider(),
            ],
           ),
       );
  }
}