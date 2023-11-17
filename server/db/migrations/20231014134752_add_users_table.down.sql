CREATE TABLE "users" (
  "id" varchar PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password_hash" varchar NOT NULL,
  "phone" int,
  "telegram_username" varchar DEFAULT null,
  "telegram_chat_id" varchar DEFAULT null,
  "jwt" int,
  "fcm" int,
  "profile_image" varchar DEFAULT null,
  "verified" boolean NOT NULL DEFAULT (false),
  "role" varchar NOT NULL DEFAULT (user),
  "created_at" timestamp,
  "updated_at" timestamp DEFAULT (now()),
  "deleted_at" timestamp DEFAULT (null)
);