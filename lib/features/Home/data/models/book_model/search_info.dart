import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'textSnippet': textSnippet,
      };

  SearchInfo copyWith({
    String? textSnippet,
  }) {
    return SearchInfo(
      textSnippet: textSnippet ?? this.textSnippet,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [textSnippet];
}