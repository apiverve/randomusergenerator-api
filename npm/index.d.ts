declare module '@apiverve/randomusergenerator' {
  export interface randomusergeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface randomusergeneratorResponse {
    status: string;
    error: string | null;
    data: RandomUserGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RandomUserGeneratorData {
      id:          null | string;
      name:        null | string;
      gender:      null | string;
      username:    null | string;
      email:       null | string;
      password:    null | string;
      registered:  Date | null;
      phone:       null | string;
      cell:        null | string;
      birthdate:   Date | null;
      age:         number | null;
      nationality: null | string;
      location:    Location;
      login:       Login;
      avatar:      null | string;
  }
  
  interface Location {
      street:      null | string;
      city:        null | string;
      state:       null | string;
      postcode:    null | string;
      country:     null | string;
      countryCode: null | string;
      latitude:    number | null;
      longitude:   number | null;
      timezone:    null | string;
  }
  
  interface Login {
      salt:   null | string;
      md5:    null | string;
      sha1:   null | string;
      sha256: null | string;
  }

  export default class randomusergeneratorWrapper {
    constructor(options: randomusergeneratorOptions);

    execute(callback: (error: any, data: randomusergeneratorResponse | null) => void): Promise<randomusergeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: randomusergeneratorResponse | null) => void): Promise<randomusergeneratorResponse>;
    execute(query?: Record<string, any>): Promise<randomusergeneratorResponse>;
  }
}
