using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai_Filmes_WebApi.Domains
{
    /// <summary>
    /// 
    /// </summary>
    public class FilmeDomain
    {
        public int idFilme { get; set; }

        public int idGenero { get; set; }

        public string TituloFilme { get; set; }

        /// <summary>
        /// Não faz sentido aqui ser uma lista afinal de contas para cada filem temos apenas um gênero,
        /// porém, caso houvesse um filme com mais de um gênero ai sim teriamos que criar uma lista que trouxesse todos os gêneros, 
        /// mas como fazer isso?
        /// Nesse caso só foi possivél fazermos dessa forma pois a relação era N = N!
        /// </summary>
        public GeneroDomain genero { get; set; }
    }
}
