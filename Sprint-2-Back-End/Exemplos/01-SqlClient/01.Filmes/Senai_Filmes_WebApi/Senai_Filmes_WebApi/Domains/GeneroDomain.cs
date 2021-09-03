using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai_Filmes_WebApi.Domains
{
    /// <summary>
    /// Classe que representa a entidade (tabela) Genêro.
    /// </summary>
    public class GeneroDomain
    {
        public int idGenero { get; set; }
        public string nomeGenero { get; set; }
    }
}
