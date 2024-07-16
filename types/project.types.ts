import {type IClient} from "./client.types";

export type Service = "design" | "development" | "photography";

export interface IProject {
  ulid: string;
  name: string;
  description: string;
  service: Service;
  tags: string;
  content: string;
  selectedAt?: Date;
  createdAt: Date;
  updatedAt: Date;
  client: IClient;
}

export interface IProjectCreateBody {
  name: string;
  description: string;
  service: Service;
  tags: string;
  clientUlid: string;
}

export interface IProjectUpdateBody {
  name?: string;
  clientUlid?: string;
  description?: string;
  service?: Service;
  tags?: string;
  content?: string;
  selectedAt?: Date;
}
