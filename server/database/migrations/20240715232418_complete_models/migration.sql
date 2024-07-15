-- CreateEnum
CREATE TYPE "Service" AS ENUM ('design', 'development', 'photography');

-- CreateTable
CREATE TABLE "auth_sessions" (
    "userUlid" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "expiresAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "auth_sessions_pkey" PRIMARY KEY ("userUlid","token")
);

-- CreateTable
CREATE TABLE "testimonials" (
    "id" SERIAL NOT NULL,
    "senderName" TEXT NOT NULL,
    "senderJob" TEXT NOT NULL,
    "comment" TEXT NOT NULL,
    "avatar" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "validatedAt" TIMESTAMP(3),

    CONSTRAINT "testimonials_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clients" (
    "ulid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "company" TEXT,
    "siret" TEXT,
    "siren" TEXT,
    "avatar" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "clients_pkey" PRIMARY KEY ("ulid")
);

-- CreateTable
CREATE TABLE "projects" (
    "ulid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "thumbnail" TEXT,
    "clientUlid" TEXT,
    "service" "Service" NOT NULL,
    "tags" TEXT NOT NULL,
    "content" TEXT NOT NULL DEFAULT '[]',
    "selectedAt" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "projects_pkey" PRIMARY KEY ("ulid")
);

-- AddForeignKey
ALTER TABLE "projects" ADD CONSTRAINT "projects_clientUlid_fkey" FOREIGN KEY ("clientUlid") REFERENCES "clients"("ulid") ON DELETE SET NULL ON UPDATE CASCADE;
