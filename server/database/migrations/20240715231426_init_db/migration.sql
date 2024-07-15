-- CreateTable
CREATE TABLE "users" (
    "ulid" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "admin" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("ulid")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
