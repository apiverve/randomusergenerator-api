declare module '@apiverve/randomusergenerator' {
  export interface randomusergeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface randomusergeneratorResponse {
    status: string;
    error: string | null;
    data: RandomUserGeneratorData;
    code?: number;
  }


  interface RandomUserGeneratorData {
      id:         string;
      name:       string;
      gender:     string;
      username:   string;
      email:      string;
      password:   string;
      registered: Date;
      phone:      string;
      cell:       string;
      birthdate:  Date;
  }

  export default class randomusergeneratorWrapper {
    constructor(options: randomusergeneratorOptions);

    execute(callback: (error: any, data: randomusergeneratorResponse | null) => void): Promise<randomusergeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: randomusergeneratorResponse | null) => void): Promise<randomusergeneratorResponse>;
    execute(query?: Record<string, any>): Promise<randomusergeneratorResponse>;
  }
}
