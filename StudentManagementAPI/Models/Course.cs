namespace StudentManagementAPI.Models
{
    public class Course : UserActivity
    {
        public int Id { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }
    }
}
