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
