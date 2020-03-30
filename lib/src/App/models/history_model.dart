import 'package:sqfentity_gen/sqfentity_gen.dart';

const tableHistory = SqfEntityTable(
  tableName: 'tbHistory',
  primaryKeyName: 'id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  useSoftDeleting: true,
  modelName: null,
  fields: [
    SqfEntityField('id_books', DbType.integer),
    SqfEntityField('title', DbType.text),
    SqfEntityField('description', DbType.text),
    SqfEntityField('author', DbType.text),
    SqfEntityField('publisher', DbType.text),
    SqfEntityField('pages', DbType.integer),
    SqfEntityField('category', DbType.text),
    SqfEntityField('imageUrl', DbType.text),
    SqfEntityField('rating', DbType.real),
  ],
);