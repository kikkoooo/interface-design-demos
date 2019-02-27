import P5ireBase.library.*;

P5ireBase fire;

// String variable to store firebase data when it changes
String firebaseData; 
JSONArray firebaseJson;
String[] firebaseDataArray = {"x"};

void setup() {

  size(800, 600);
  firebaseJson = new JSONArray();

  // Connect to your Firebase database
  fire = new P5ireBase(this, "https://interaction-3-f18-demo-lights.firebaseio.com");
  
  // Initializes data retrival when the data has change. 
  // Replace "kikko" with the proper item from your FB  
  firebaseData = fire.getValue("jennifer-clicks");

}

void draw() {

  //// Grab the updated data and replace the string variable
  firebaseData = fire.updateData();
  
  if (firebaseData != null) {
    
     firebaseDataArray = split(firebaseData, ',');

    for (int i = 0; i < firebaseDataArray.length; i++) {
  
      JSONObject item = new JSONObject();
  
      item.setInt("id", i);
      item.setString("boi", firebaseDataArray[i]);
      firebaseJson.setJSONObject(i, item);
      
    }
    
  }
  
  println(firebaseJson);

}

void mousePressed() {
  //println(firebaseDataArray.length);
}


void convertData() {

}
