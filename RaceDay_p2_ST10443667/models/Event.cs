namespace RaceDay_p2_ST10443667.models
{
    public class Event
    {
        public int EventID {  get; set; }
        public string Name { get; set; } = string.Empty;
        public string?  Description { get; set; } = string.Empty ;
        public string Location {  get; set; } = string.Empty;
        public decimal?  Distance { get; set; }
        public string EventType { get; set; } =string.Empty ;
        public DateTime EventDate {  get; set; }

        public int OrganiserID { get; set; }
        public User Organiser { get; set; } = null!;

        public ICollection<Category> Categories { get; set; } = new List<Category>();
        public ICollection<EventImage> eventImages { get; set; } = new List<EventImage>();
}    }

