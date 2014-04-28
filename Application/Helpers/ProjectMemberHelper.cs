using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helpers
{
    public static class ProjectMemberHelper
    {
        /// <summary>
        /// Deletes a Team Member from a Project
        /// </summary>
        /// <param name="id">ID of the Team Member to be removed from a project</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool delete(int id)
        {
            // cf_Project_Members_Delete_ByMemberId
            return true;
        }
        /// <summary>
        /// Deletes a Team Member from a Project
        /// </summary>
        /// <param name="memberName">name of the team member to be deleted</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool delete(string memberName)
        {
            return true;
        }
        /// <summary>
        /// Adds a Team Member to a project
        /// </summary>
        /// <param name="projectName">Name of the project to add the team member to</param>
        /// <param name="teamMemberId">ID of the Team Member to add to the Project</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool create(string projectName, int teamMemberId)
        {
            // cf_Project_Members_Create
            return true;
        }
    }
}
