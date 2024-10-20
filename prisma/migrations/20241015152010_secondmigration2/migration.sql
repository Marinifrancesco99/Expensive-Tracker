/*
  Warnings:

  - You are about to drop the column `delete` on the `transazioni` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `transazioni` DROP COLUMN `delete`,
    ADD COLUMN `delete_1` BOOLEAN NOT NULL DEFAULT false;
