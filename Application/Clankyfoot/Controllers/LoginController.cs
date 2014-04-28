using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Helpers;

namespace Clankyfoot.Controllers
{
    /// <summary>
    /// Responsible for the Login View Logic
    /// </summary>
    public class LoginController : Controller
    {
        /// <summary>
        /// Login page
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// Vaildates user input, if the user is valid they are redirected to the 
        /// Dashboards Index Route
        /// </summary>
        /// <param name="model">Validation model</param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("Index")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Index(Clankyfoot.Models.Login model)
        {
            if (ModelState.IsValid)
            {
                if(MemberHelper.isValid(model.username, model.password))
                {
                    // we will never remember a user for security reasons
                    System.Web.Security.FormsAuthentication.SetAuthCookie(model.username, false);
                    return RedirectToAction("Index", "Dashaboard");
                }
                else
                {
                    ModelState.AddModelError("", "Invalid username and/or password");
                    return View();
                }
            }
            else
            {
                ModelState.AddModelError("", "Please check fields for errors");
                return (View());
            }
        }
        /// <summary>
        /// Logs the user out and redirects them to the home page
        /// </summary>
        /// <returns></returns>
        public ViewResult Logout()
        {
            // TODO need to de-authorize the user
            return View();
        }
        /// <summary>
        /// Create a new user view
        /// </summary>
        /// <returns></returns>
        public ViewResult Create()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("Create")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Clankyfoot.Models.CreateUser model)
        {
            if (ModelState.IsValid)
            {
                // TODO need to create logic for creating the user
                return RedirectToAction("CreateUserSuccess", "Login");
            }
            else
            {
                ModelState.AddModelError("", "Please check for validation errors");
                return (View());
            }
        }
        /// <summary>
        /// Loads user settings
        /// </summary>
        /// <returns></returns>
        public ViewResult Settings()
        {
            return View();
        }
        /// <summary>
        /// Loads a Change Password View
        /// </summary>
        /// <returns></returns>
        public ViewResult ChangePassword()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionName("ChangePassword")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ChangePassword(Clankyfoot.Models.ChangePassword model)
        {
            if (ModelState.IsValid)
            {
                // TODO need to create logic for chanign user password
                return RedirectToAction("Settings", "Login");
            }
            else
            {
                ModelState.AddModelError("", "Please check for validation errors");
                return (View());
            }
        }
        /// <summary>
        /// Loads a Change Email View
        /// </summary>
        /// <returns></returns>
        public ViewResult ChangeEmail()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionName("ChangeEmail")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ChangeEmail(Clankyfoot.Models.ChangeEmail model)
        {
            if (ModelState.IsValid)
            {
                // TODO need to create logic for changin user e-mail
                return RedirectToAction("Settings", "Login");
            }
            else
            {
                ModelState.AddModelError("", "Please check for validation errors");
                return (View());
            }
        }
        /// <summary>
        /// Loads a Change Phone View
        /// </summary>
        /// <returns></returns>
        public ViewResult ChangePhone()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionName("ChangePhone")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ChangePhone(Clankyfoot.Models.ChangePhone model)
        {
            if (ModelState.IsValid)
            {
                // TODO need to create logic for changin user phone
                return RedirectToAction("Settings", "Login");
            }
            else
            {
                ModelState.AddModelError("", "Please check for validation errors");
                return (View());
            }
        }
        /// <summary>
        /// Loads a Delete User View
        /// </summary>
        /// <returns></returns>
        public ViewResult Delete()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(Clankyfoot.Models.DeleteUser model)
        {
            if (ModelState.IsValid)
            {
                // TODO need to create logic for deleting user here
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ModelState.AddModelError("", "Please check for validation errors");
                return (View());
            }
        }
        /// <summary>
        /// Creating user success page
        /// </summary>
        /// <returns></returns>
        public ViewResult CreateUserSuccess()
        {
            return View();
        }
    }
}
