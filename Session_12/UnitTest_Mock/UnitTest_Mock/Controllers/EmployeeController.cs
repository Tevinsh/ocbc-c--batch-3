using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using UnitTest_Mock.Models;
using UnitTest_Mock.Services;
using System.Linq;


namespace UnitTest_Mock.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        #region Property
        private readonly IEmployeeService _employeeService;
        #endregion

        #region Constructor
        public EmployeeController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }
        #endregion

        [HttpGet(nameof(GetEmployeeById))]
        public async Task<string> GetEmployeeById(int EmpID)
        {
            var result = await _employeeService.GetEmployeebyId(EmpID);
            return result;
        }

        [HttpGet(nameof(GetEmployeeDetails))]
        public async Task<EmployeeData> GetEmployeeDetails(int EmpID)
        {
            var result = await _employeeService.GetEmployeeDetails(EmpID);
            return result;
        }

    }
}


