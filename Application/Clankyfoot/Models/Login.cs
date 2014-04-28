using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.ComponentModel.DataAnnotations;

namespace Clankyfoot.Models
{
    /// <summary>
    /// Login view model
    /// </summary>
    public class Login
    {
        [Required(ErrorMessage="Please enter your username")]
        [DataType(DataType.Text)]
        [Display(Name="Username")]
        [Range(3, 300)]
        public string username { get; set; }
        [Required(ErrorMessage = "Please enter your password")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }
    }
    
    public class CreateUser
    {
        [Required(ErrorMessage = "Please enter your username")]
        [DataType(DataType.Text)]
        [Display(Name = "Username")]
        [Range(3, 300)]
        public string username { get; set; }
        [Required(ErrorMessage = "Please enter your password")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }
        [Required(ErrorMessage = "Please enter confirm your new password")]
        [DataType(DataType.Password)]
        [Display(Name = "Confirm Password")]
        [Range(6, 16)]
        [Compare("password", ErrorMessage = "confirm password, and new password doesn't match")]
        public string confirmPassword { get; set; }
        [Required(ErrorMessage = "Please enter your e-mail")]
        [DataType(DataType.EmailAddress)]
        [Display(Name = "Email")]
        [Range(3, 100)]
        public string email { get; set; }
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Phone")]
        [Range(7, 10)]
        public string phone { get; set; }
    }
    /// <summary>
    /// View settings view model
    /// </summary>
    public class Settings
    {
        [Required(ErrorMessage = "Please enter your username")]
        [DataType(DataType.Text)]
        [Display(Name = "Username")]
        [Range(3, 300)]
        public string username { get; set; }
        [Required(ErrorMessage="Please enter your e-mail")]
        [DataType(DataType.EmailAddress)]
        [Display(Name="Email")]
        [Range(3, 100)]
        public string email { get; set; }
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Phone")]
        [Range(7, 10)]
        public string phone { get; set; }
        [Required(ErrorMessage = "Missing last login")]
        [DataType(DataType.Text)]
        [Display(Name = "Last Login")]
        public string lastLogin { get; set; }
    }
    /// <summary>
    /// change password view model
    /// </summary>
    public class ChangePassword
    {
        [Required(ErrorMessage = "Please enter your old password")]
        [DataType(DataType.Password)]
        [Display(Name = "Old Password")]
        public string password { get; set; }
        [Required(ErrorMessage = "Please enter your new password")]
        [DataType(DataType.Password)]
        [Display(Name = "New Password")]
        [Range(6, 16)]
        public string newPassword { get; set; }
        [Required(ErrorMessage = "Please enter confirm your new password")]
        [DataType(DataType.Password)]
        [Display(Name = "Confirm New Password")]
        [Range(6, 16)]
        [Compare("newPassword", ErrorMessage="confirm password, and new password doesn't match")]
        public string confirmPassword { get; set; }
    }
    /// <summary>
    /// Change email view model
    /// </summary>
    public class ChangeEmail
    {
        [Required(ErrorMessage = "Please enter your e-mail")]
        [DataType(DataType.EmailAddress)]
        [Display(Name = "Email")]
        [Range(3, 100)]
        public string email { get; set; }
        [Required(ErrorMessage = "Please enter your old password")]
        [DataType(DataType.Password)]
        [Display(Name = "Old Password")]
        public string password { get; set; }
    }
    /// <summary>
    /// Change phone view model
    /// </summary>
    public class ChangePhone
    {
        [DataType(DataType.PhoneNumber)]
        [Display(Name = "Phone")]
        [Range(7, 10)]
        public string phone { get; set; }
        [Required(ErrorMessage = "Please enter your password")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }
    }
    /// <summary>
    /// Delete view model
    /// </summary>
    public class DeleteUser
    {
        [Required(ErrorMessage = "Please enter your password")]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string password { get; set; }
    }
}