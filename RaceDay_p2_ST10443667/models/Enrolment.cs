namespace RaceDay_p2_ST10443667.models
{
    public class Enrolment
    {
        public int EnrolmentID {  get; set; }
        public string EnrolmentStatus { get; set; } = string.Empty;

        public int UserID {  get; set; }
        public User User { get; set; } = null!;

        public int CategoryID { get; set;  }
        public Category Category { get; set; } = null!;

    }
}
