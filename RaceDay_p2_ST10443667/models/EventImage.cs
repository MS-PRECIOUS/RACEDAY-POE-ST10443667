using System.ComponentModel.DataAnnotations;

namespace RaceDay_p2_ST10443667.models
{
    public class EventImage
    {
        [ Key ]
        public int ImageID {  get; set; }
        public string ImageUrl { get; set; } = string.Empty;
        public DateTime UploadDate {  get; set; }


        public int EventID {  get; set; }
        public Event Event { get; set; } = null!;
    }
}
