export interface IAuthSession {
  userUlid: string;
  token: string;
  agent: string;
  createdAt: Date;
  expiresAt: Date;
}

export interface IAuthSessionCreateBody {
  userUlid: string;
  save?: boolean;
}
