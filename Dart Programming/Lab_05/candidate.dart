<<<<<<< HEAD
// Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age,
// Candidate_Weight and Candidate_Height as data members. Create a method
// GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate
// the Candidate class.
void main(List<String> args) {}

class Candidate {
  int candidateId;
  String candidateName;
  int candidateAge;
  double candidateWeight;
  double candidateHeight;
  Candidate() {}
  Candidate(int candidateId, String candidateName, int candidateAge,
      double candidateWeight, double candidateHeight) {
    this.candidateAge = candidateAge;
    this.candidateHeight = candidateHeight;
    this.candidateId = candidateId;
    this.candidateName = candidateName;
    this.candidateWeight = candidateWeight;
  }
}
=======
// Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age,
// Candidate_Weight and Candidate_Height as data members. Create a method
// GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate
// the Candidate class.
//
import 'dart:io';

class Candidate {
  int? candidate_id;
  String? candidate_name;
  int? candidate_age;
  int? candidate_weight;
  double? candidate_height;
  Candidate(int candidate_id, String candidate_name, int candidate_age,
      int candidate_weight, double candidate_height) {
    this.candidate_id = candidate_id;
    this.candidate_name = candidate_name;
    this.candidate_age = candidate_age;
    this.candidate_height = candidate_height;
    this.candidate_weight = candidate_weight;
  }
  void displayCandidateDetails() {
    print("The id of student is ${this.candidate_id}");
    print("The name of the student is ${this.candidate_name}");
    print("The age of the student is ${this.candidate_age}");
    print("The height of the student is ${this.candidate_height}");
    print("The weight of the student is ${this.candidate_weight}");
  }
}
>>>>>>> 5a7e8dfc489a070fd9d301c320fe26dfac7c11b7
