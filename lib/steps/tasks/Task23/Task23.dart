import 'dart:collection';

class EntryItem extends LinkedListEntry<EntryItem> {
  final int id;

  EntryItem(this.id);

  @override
  String toString() {
    return "$id";
  }
}