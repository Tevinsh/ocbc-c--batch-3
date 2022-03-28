using System;
using System.ComponentModel.DataAnnotations;

namespace TodoAppWithModelsJwtToken.Models.DTOs.Requests
{
    public class UserLoginRequest
    {
        [EmailAddress]
        public string Email {get; set;}
        [Required]
        public string Password {get; set;}
    }
}