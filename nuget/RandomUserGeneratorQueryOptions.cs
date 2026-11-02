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

        /// <summary>
        /// Only generate users of this gender
        /// </summary>
        [JsonProperty("gender")]
        public string Gender { get; set; }

        /// <summary>
        /// ISO country code for localised names, phone numbers and addresses (e.g. DE, JP, BR). Defaults to US
        /// </summary>
        [JsonProperty("nationality")]
        public string Nationality { get; set; }

        /// <summary>
        /// Any string; the same seed (with the same other parameters) returns the same users, for repeatable test data
        /// </summary>
        [JsonProperty("seed")]
        public string Seed { get; set; }
    }
}
