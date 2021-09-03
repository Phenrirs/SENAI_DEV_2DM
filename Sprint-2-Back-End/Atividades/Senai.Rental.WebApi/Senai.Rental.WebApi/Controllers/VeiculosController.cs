using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.Rental.WebApi.Domains;
using Senai.Rental.WebApi.Interfaces;
using Senai.Rental.WebApi.Repositories;

/// <summary>
/// 
/// </summary>
namespace Senai.Rental.WebApi.Controllers
{
    //
    [Produces ("Application/Json")]
    
    //
    [Route("api/[controller]")]
    
    //
    [ApiController]
    
    //
    public class VeiculosController : ControllerBase
    {
        //
        private IVeiculoRepository _VeiculoRepository { get; set; }

        //
        public VeiculosController()
        {
            //
            _VeiculoRepository = new VeiculoRepository();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        //
        public IActionResult GET()
        {
            //
            //

            //
            List<VeiculoDomain> ListaVeiculos = _VeiculoRepository.ListarTodos();

            //
            return Ok(ListaVeiculos);
        }


    }
}
