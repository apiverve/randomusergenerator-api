using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.RandomUserGenerator
{
    /// <summary>
    /// Query options for the Random User Generator API
    /// </summary>
    public class RandomUserGeneratorQueryOptions
    {
        /// <summary>
        /// The number of users to generate
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
