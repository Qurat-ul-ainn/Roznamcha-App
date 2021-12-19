
class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Manage stock items quantity, pricing and variants on multiple location.");
  sliderModel.setTitle("Inventory Management");
  sliderModel.setImageAssetPath("assets/images/onboarding-inventory.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Keep record of accounts payable/receivable.Cash and Bank. ETC");
  sliderModel.setTitle("Accounts Managements");
  sliderModel.setImageAssetPath("assets/images/onboarding-accounts.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Make your shop accessable to internet, sell your selected items online.");
  sliderModel.setTitle("\nFree WebStore");
  sliderModel.setImageAssetPath("assets/images/onboarding-webstore.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  sliderModel = new SliderModel();

  return slides;
}