class ProjectEntity {
  final String name;
  final String subName;
  final String description;
  final String image;
  final String? gitHubLink;
  final String? linkedInLink;
  final String? figmaLink;
  final bool isCompleted;
  final int year;

  ProjectEntity({
    required this.name,
    required this.subName,
    required this.description,
    required this.image,
    this.gitHubLink,
    this.linkedInLink,
    this.figmaLink,
    required this.isCompleted,
    required this.year,
  });
}
