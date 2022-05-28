//import 'dart:math';

void main() {
  var posAtt = 34; //Positive Attempts
  var negAtt = 5; //Negative Attempts
  var totCyc = 33; //Total Number in Cycle
  var cbeScore = cbeCalc(posAtt,negAtt,totCyc); //Actual CBE Score
  var cbeScoreImp = cbeImpScore(cbeCalc(posAtt,negAtt,totCyc)); //CBE Target Score
  
print("Your CBE Score: $cbeScore");
print("What your score should be next cycle: $cbeScoreImp");
}

//CBE Score Calculator
double cbeCalc(var posAtt, var negAtt, var totCyc){
  
  var posScore = 1*posAtt; // Finds positive score by multiplying the positive attempts by 1
  var negScore = -1*negAtt; // Find negative score by multiplying the negative attempts by 1
//  var totCycCal = totCyc;
  var cbe = ((posScore+negScore)/totCyc)*1000; //Sum of scores/Total Time = CBE
  var cbeFin = cbe.roundToDouble();
  
  return cbeFin;
}

//CBE Improvment Score Calculator
double cbeImpScore(double cbe){
  var cbeImp = cbe*1.01;
  var cbeImpFin = cbeImp.roundToDouble();
  return cbeImpFin;
}

//CBE Improvment Tutorial
