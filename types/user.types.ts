export interface IUser {
  ulid: string;
  email: string;
  password: string;
  admin: boolean;
  createdAt: Date;
  updatedAt: Date;
}

export interface IUserAuthBody {
  email: string;
  password: string;
}

export interface IUserUpdateBody {
  email?: string;
  password?: string;
  admin?: boolean;
}
