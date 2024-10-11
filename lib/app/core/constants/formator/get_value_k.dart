
class FormateInKmb {
  
static String formatValue(int count) {
  if (count < 1000) {
    return count.toString(); 
  } else if (count < 1000000) {
    return  '${(count / 1000).toStringAsFixed(1)}K'; 
  } else if (count < 1000000000) {
    return '${(count / 1000000).toStringAsFixed(1)}M'; 
  } else {
    return '${(count / 1000000000).toStringAsFixed(1)}B'; 
  }
}
}