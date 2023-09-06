using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeePayrollUsingWebForms.WebForms
{
    public class CustomExceptions:Exception
    {
        /// <summary>
        /// These are the custom  exception types
        /// </summary>
        public enum ExceptioType
        {
            NULL_MESSAGE,
            EMPTY_MESSAGE,
            NO_SUCH_CLASS,
            NOT_FOUND,
            NO_SUCH_METHOD,
            NOT_SUPPORTED,
            INVALID_OPERATION,
            INVALID_INPUT

        }
        private  ExceptioType type { get; set; }

        /// <summary>
        /// initializing in constructor
        /// </summary>
        /// <param name="type"></param>
        /// <param name="Message"></param>
        public CustomExceptions(ExceptioType type,string Message):base(Message)
        {
            this.type = type;
        }
    }
}