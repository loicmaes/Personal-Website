export interface ITestimonial {
  id: number;
  senderName: string;
  senderJob: string;
  comment: string;
  avatar?: string;
  createdAt: Date;
  validatedAt?: Date;
}

export interface ITestimonialCreateBody {
  senderName: string;
  senderJob: string;
  comment: string;
  avatar?: string;
}

export interface ITestimonialUpdateBody {
  validatedAt?: Date;
}
