import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#mountNode') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'month': 'Jan', 'Tokyo': 7.0, 'London': 3.9},
    {'month': 'Feb', 'Tokyo': 6.9, 'London': 4.2},
    {'month': 'Mar', 'Tokyo': 9.5, 'London': 5.7},
    {'month': 'Apr', 'Tokyo': 14.5, 'London': 8.5},
    {'month': 'May', 'Tokyo': 18.4, 'London': 11.9},
    {'month': 'Jun', 'Tokyo': 21.5, 'London': 15.2},
    {'month': 'Jul', 'Tokyo': 25.2, 'London': 17.0},
    {'month': 'Aug', 'Tokyo': 26.5, 'London': 16.6},
    {'month': 'Sep', 'Tokyo': 23.3, 'London': 14.2},
    {'month': 'Oct', 'Tokyo': 18.3, 'London': 10.3},
    {'month': 'Nov', 'Tokyo': 13.9, 'London': 6.6},
    {'month': 'Dec', 'Tokyo': 9.6, 'London': 4.8},
  ]);

  var chart = context['Chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}