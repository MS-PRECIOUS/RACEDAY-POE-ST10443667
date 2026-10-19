using RaceDay_p2_ST10443667.models;
using System.ComponentModel.DataAnnotations;

namespace RaceDay_p2_ST10443667.Models;

public class Result
{
    [Key]
    public int ResultId { get; set; }
    public TimeSpan? FinishTime { get; set; }
    public int? FinishingPosition { get; set; }

    public int EnrolmentId { get; set; }
    public Enrolment Enrolment { get; set; } = null!;
}