/*

class VisionService {
  final String apiKey;

  VisionService(this.apiKey);

  Future<String> detectLabels(String imagePath) async {
    var visionApi = VisionApi(http.Client());

    var imageBytes = await http.readBytes(Uri.parse(imagePath));
    var imageContent = base64Encode(imageBytes);

    var image = Image();
    image.content = imageContent;

    var request = AnnotateImageRequest();
    request.image = image;
    request.features = [Feature()..type = 'LABEL_DETECTION'];

    var batchRequest = BatchAnnotateImagesRequest();
    batchRequest.requests = [request];

    var response = await visionApi.images.annotate(batchRequest,
        apiKey: apiKey);

    if (response.responses != null && response.responses!.isNotEmpty) {
      var labels = response.responses![0].labelAnnotations;
      if (labels != null && labels.isNotEmpty) {
        var labelNames = labels.map((label) => label.description).join(', ');
        return labelNames;
      }
    }

    return '';
  }
}


 */