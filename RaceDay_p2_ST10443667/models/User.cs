namespace RaceDay_p2_ST10443667.models
{
    public class User
    {
        public int UserID {  get; set; }
        public string   FullName { get; set; }
        public string Email { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
        public string Role { get; set; } = string.Empty;
        public string?  ContactNumber {  get; set; } = string.Empty;

        public ICollection<Event> OrganisedEvents { get; set;  } =new List<Event>() ;
        public ICollection<Enrolment> Enrolments { get; set; } = new List<Enrolment>();

        public string PasswordHash { get; set; } = string.Empty;
        

    }
}
