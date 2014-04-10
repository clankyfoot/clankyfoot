using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Clankyfoot.Controllers
{
    public class TeamController : Controller
    {
        /// <summary>
        /// Details about a team member
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// Loads a create member view
        /// </summary>
        /// <returns></returns>
        public ViewResult CreateMember()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("AddMember")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult CreateMember(Clankyfoot.Models.TeamMemberCreate model)
        {
            if(ModelState.IsValid)
            {
                // TODO create logic to create member in a team
                // TODO redirect user after creating a team member to the proper page
                return View();
            }
            else
            {
                ModelState.AddModelError("", "Please check for field errors");
                return View();
            }
        }
        /// <summary>
        /// Loads a Delete member view
        /// </summary>
        /// <returns></returns>
        public ViewResult DeleteMember()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("AddMember")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult DeleteMember(Clankyfoot.Models.TeamMemberDelete model)
        {
            if(ModelState.IsValid)
            {
                // TODO Delete logic to Delete member in a team
                // TODO redirect user after creating a team member to the proper page
                return View();
            }
            else
            {
                ModelState.AddModelError("", "Please check for field errors");
                return View();
            }
        }
        /// <summary>
        /// View to add a team member to a project
        /// </summary>
        /// <returns></returns>
        public ViewResult AddMember()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionName("AddMember")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddMember(Clankyfoot.Models.TeamMemberAdd model)
        {
            if(ModelState.IsValid)
            {
                // TODO create logic for adding a team member to a project
                // TODO rediect to the correct page after creating a team member
                return View();
            }
            else
            {
                ModelState.AddModelError("", "Please make sure that member doesn't exist, or you entered the correct password");
                return View();
            }
        }
        /// <summary>
        /// Loads a remove member view
        /// </summary>
        /// <returns></returns>
        public ViewResult RemoveMember()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("AddMember")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult RemoveMember(Clankyfoot.Models.TeamMemberDelete model)
        {
            if (ModelState.IsValid)
            {
                // TODO create logic for removing a team member to a project
                // TODO rediect to the correct page after removing a team member
                return View();
            }
            else
            {
                ModelState.AddModelError("", "Please make sure that member exists, or you entered the correct password");
                return View();
            }
        }
    }
}
