<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\TwoFactor\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class TwoFactorDto {
    public function __construct(
        public readonly int $userId,
        public readonly string $method,
        public readonly ?string $secret,
        public readonly ?string $recoveryCodesEnc,
        public readonly ?int $hotpCounter,
        public readonly bool $enabled,
        public readonly \DateTimeImmutable $createdAt,
        public readonly int $version,
        public readonly ?\DateTimeImmutable $lastUsedAt
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
