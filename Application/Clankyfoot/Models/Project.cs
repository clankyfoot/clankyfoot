using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;

namespace Clankyfoot.Models
{
    /// <summary>
    /// Project home view
    /// </summary>
    public class Project
    {
        [Required(ErrorMessage="Please enter your project id")]
        [Display(Name="Project ID")]
        public int id { get; set; }
        [Required(ErrorMessage="Please enter your project name")]
        [Display(Name="Project Name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage = "Project leader (you or another team lead")]
        [Display(Name = "Project Name")]
        [DataType(DataType.Text)]
        public string teamLead { get; set; }
        [Required(ErrorMessage="Please enter your project start date")]
        [Display(Name="Date Created")]
        [DataType(DataType.Text)]
        public string dateCreated { get; set; }
    }
    /// <summary>
    /// View Model for Create() Controller Method()
    /// </summary>
    public class ProjectCreate
    {
        [Required(ErrorMessage = "Please enter your project name")]
        [Display(Name = "Project Name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage="Please enter your password")]
        [Display(Name="Password")]
        [DataType(DataType.Password)]
        public string password { get; set; }
    }
    /// <summary>
    /// View Model for Delete() Controller Method
    /// </summary>
    public class ProjectDelete
    {
        [Required(ErrorMessage = "Please enter your password")]
        [Display(Name = "Password")]
        [DataType(DataType.Password)]
        public string password { get; set; }
    }
    /// <summary>
    /// View Model for ChangeName() Controller Method
    /// </summary>
    public class ProjectUpdateName
    {
        [Required(ErrorMessage = "Please enter your project name")]
        [Display(Name = "Project Name")]
        [DataType(DataType.Text)]
        public string name { get; set; }
        [Required(ErrorMessage = "Please enter your password")]
        [Display(Name = "Password")]
        [DataType(DataType.Password)]
        public string password { get; set; }
    }
    /// <summary>
    /// View model for ChangeLead() Controller Method
    /// </summary>
    public class ProjectUpdateLead
    {
        [Required(ErrorMessage = "Project leader (you or another team lead")]
        [Display(Name = "Project Name")]
        [DataType(DataType.Text)]
        public string teamLead { get; set; }
        [Required(ErrorMessage = "Please enter your password")]
        [Display(Name = "Password")]
        [DataType(DataType.Password)]
        public string password { get; set; }
    }
}