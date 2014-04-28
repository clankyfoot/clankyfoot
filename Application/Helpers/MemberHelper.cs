using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helpers
{
    public class MemberHelper : Helpers.Abstract.ConnectionHelper
    {
        /// <summary>
        /// Validates a user against the username and password
        /// </summary>
        /// <param name="username">username of Team Member</param>
        /// <param name="password">password of the Team Member</param>
        /// <returns></returns>
        public static bool isValid(string username, string password)
        {
            // TODO: hash here, or at the database level? OR both?
            
            return true;
        }
        /// <summary>
        /// Creates a new Team Member
        /// </summary>
        /// <param name="name">Name of the Team Member</param>
        /// <param name="email">Email of the Team member</param>
        /// <param name="position">Position of the Team Member</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool create(string name, string email, string position)
        {
            try
            {
                
            }
            catch(System.Data.SqlClient.SqlException e)
            {

            }
            return true;
        }
        /// <summary>
        /// Changes a Team Memmber Position type
        /// </summary>
        /// <param name="memberId">Team member ID</param>
        /// <param name="memberPostion">Team member's position</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updatePosition(int memberId, string memberPostion)
        {
            return true;
        }
        /// <summary>
        /// Changes a Team Memmber Position type
        /// </summary>
        /// <param name="memberEmail">email of the member</param>
        /// <param name="memberPosition">position to change to</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updatePostion(string memberEmail, string memberPosition)
        {
            // TODO update user email here
            // cf_TeamMember_Update_Position_ByEmail
            return true;
        }
        /// <summary>
        /// Change the name of a Team Member
        /// </summary>
        /// <param name="memberId">memberId</param>
        /// <param name="memberName">memberName</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updateName(int memberId, string memberName)
        {
            return true;
        }
        /// <summary>
        /// Changes a Team Member Email
        /// </summary>
        /// <param name="memberId">ID of the member to have their email changed</param>
        /// <param name="email">email address to change it to</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updateEmail(int memberId, string newEmail)
        {
            return true;
        }
        /// <summary>
        /// Changes a Team Member Email
        /// </summary>
        /// <param name="oldEmail">old email of the Team Memeber</param>
        /// <param name="newEmail">new email of the Team Member</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updateEmail(string oldEmail, string newEmail)
        {
            return true;
        }
        /// <summary>
        /// Removes a Team Member
        /// </summary>
        /// <param name="memberId">ID of the Team Member to be removed</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool remove(int memberId)
        {
            return true;
        }
        /// <summary>
        /// Removes a Team Member
        /// </summary>
        /// <param name="memeberEmail">Emial of a Team Member to be removed </param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool remove(string email)
        {
            return true;
        }

    }
}
