import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';
import 'package:books_library/src/App/models/favorite_model.dart';
import 'package:books_library/src/App/models/history_model.dart';



part 'models.g.dart';

const seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
);

@SqfEntityBuilder(myDbModel)
const myDbModel = SqfEntityModel(
  modelName: 'MyDbModel',
  databaseName: 'sampleORM.db',
  databaseTables: [tableFavorite, tableHistory],
  sequences: [seqIdentity],
  // bundledDatabasePath: null,
);
