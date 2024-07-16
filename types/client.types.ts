export interface IClient {
  ulid: string;
  name: string;
  company?: string;
  siret?: string;
  siren?: string;
  avatar?: string;
  createdAt: Date;
  updatedAt: Date;
}

export interface IClientCreateBody {
  name: string;
  company?: string;
  siret?: string;
  siren?: string;
}

export interface IClientUpdateBody {
  name: string;
  company?: string;
  siret?: string;
  siren?: string;
  avatar?: string;
}
