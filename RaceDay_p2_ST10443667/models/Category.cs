namespace RaceDay_p2_ST10443667.models
{
    public class Category
    {
        public int CategoryID {  get; set; }
           public string CategoryName { get; set; } = string.Empty;

        public int EventID {  get; set; }
        public Event Event { get; set; } = null!;

        public ICollection<Enrolment> Enrolments { get; set; } = new List<Enrolment>();
    }
}
