using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;

namespace Clankyfoot.Models
{
    public class TeamMemeber
    {
        [Required(ErrorMessage = "Please enter member id")]
        [Display(Name = "Team name")]
        [DataType(DataType.Text)]
        public int id { get; set; }
        [Required(ErrorMessage="Please enter member's name")]
        [Display(Name="Member name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage="Please enter team member's position")]
        [Display(Name="Position")]
        [DataType(DataType.Text)]
        public string position { get; set; }
        [Required(ErrorMessage="Please enter date of creation")]
        [Display(Name="Day Created")]
        [DataType(DataType.Date)]
        public string dayCreated { get; set; }
    }

    public class TeamMemberAdd
    {
        [Required(ErrorMessage = "Please enter member's name")]
        [Display(Name = "Member name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage = "Please enter your password")]
        [Display(Name = "Password")]
        [DataType(DataType.Password)]
        public string password { get; set; }
    }

    public class TeamMemberCreate
    {
        [Required(ErrorMessage="Please enter member's name")]
        [Display(Name="Member name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage="Please enter team member's position")]
        [Display(Name="Position")]
        [DataType(DataType.Text)]
        public string position { get; set; }
        [Required(ErrorMessage="Please enter your password")]
        [Display(Name="Password")]
        [DataType(DataType.Password)]
        public string password { get; set;}
    }

    public class TeamMemberDelete
    {
        [Required(ErrorMessage="Please enter member's name")]
        [Display(Name="Member name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage="Please enter your password")]
        [Display(Name="Password")]
        [DataType(DataType.Password)]
        public string password { get; set;}
    }

    public class TeamMemberChangeName
    {
        [Required(ErrorMessage="Please enter member's name")]
        [Display(Name="Member name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage="Please enter your password")]
        [Display(Name="Password")]
        [DataType(DataType.Password)]
        public string password { get; set;}
    }

    public class TeamMemberChangePosition
    {
        [Required(ErrorMessage="Please enter team member's position")]
        [Display(Name="Position")]
        [DataType(DataType.Text)]
        public string position { get; set; }
        [Required(ErrorMessage="Please enter your password")]
        [Display(Name="Password")]
        [DataType(DataType.Password)]
        public string password { get; set;}
    }
}