/*
  Warnings:

  - The values [entrate,uscite] on the enum `transazioni_tipo` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `transazioni` MODIFY `tipo` ENUM('entrata', 'uscita') NOT NULL;
