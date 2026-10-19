using System.ComponentModel.DataAnnotations;

namespace RaceDay_p2_ST10443667.models
{
    public class Results
    {
        [Key]
        public int ResultID { get; set; }
        public TimeSpan FinishTime { get; set; }
        public int? FinishingPosition {  get; set; }

        public int EnrolmentID {  get; set; }
        public Enrolment Enrolment { get; set; } = null!;

    }
}
