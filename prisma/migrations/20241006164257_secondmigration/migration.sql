-- CreateTable
CREATE TABLE `transazioni` (
    `id_transazione` INTEGER NOT NULL AUTO_INCREMENT,
    `tipo` ENUM('entrate', 'uscite') NOT NULL,
    `descrizione` VARCHAR(255) NOT NULL,
    `importo` DECIMAL(10, 2) NOT NULL,
    `data_transazione` DATETIME(3) NOT NULL,
    `delete` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`id_transazione`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
