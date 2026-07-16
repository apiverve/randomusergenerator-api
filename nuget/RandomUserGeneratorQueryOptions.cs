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
        public int? Count { get; set; }

        /// <summary>
        /// Include an AI-generated face avatar matching user's gender and age
        /// </summary>
        [JsonProperty("includeAvatar")]
        public bool? IncludeAvatar { get; set; }
    }
}
