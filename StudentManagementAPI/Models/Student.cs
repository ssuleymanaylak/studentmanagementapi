﻿namespace StudentManagementAPI.Models
{
    public class Student : UserActivity
    {
        public int Id { get; set; }

        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public string LastName { get; set; }

        public string EmailAddress { get; set; }

        public DateTime DateOfBirth { get; set; }

        public string PhoneNumber { get; set; }

        public string Address { get; set; }

        public int CourseId { get; set; }

        public Course Course { get; set; } 
    }
}
