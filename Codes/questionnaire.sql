-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 27. 20:15
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `questionnaire`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(21, 6, '2022', '2022-11-27 17:43:49', '2022-11-27 17:43:49'),
(22, 6, '2021', '2022-11-27 17:43:49', '2022-11-27 17:43:49'),
(23, 6, '2020', '2022-11-27 17:43:49', '2022-11-27 17:43:49'),
(24, 6, 'Egyéb', '2022-11-27 17:43:49', '2022-11-27 17:43:49'),
(25, 7, 'Nem', '2022-11-27 17:45:50', '2022-11-27 17:45:50'),
(26, 7, 'Igen, egyszer', '2022-11-27 17:45:50', '2022-11-27 17:45:50'),
(27, 7, 'Igen, már többször is', '2022-11-27 17:45:50', '2022-11-27 17:45:50'),
(28, 7, 'Nem kívánok válaszolni', '2022-11-27 17:45:51', '2022-11-27 17:45:51'),
(29, 8, 'Magyarországra', '2022-11-27 17:48:57', '2022-11-27 17:48:57'),
(30, 8, 'Külföldre', '2022-11-27 17:48:57', '2022-11-27 17:48:57'),
(31, 8, 'Jelenleg nem tervezek sehova sem menni', '2022-11-27 17:48:57', '2022-11-27 17:48:57'),
(32, 8, 'Nem kívánok válaszolni', '2022-11-27 17:48:57', '2022-11-27 17:48:57'),
(33, 9, '5 pont', '2022-11-27 17:52:54', '2022-11-27 17:52:54'),
(34, 9, '3-4 pont', '2022-11-27 17:52:54', '2022-11-27 17:52:54'),
(35, 9, '1-2 pont', '2022-11-27 17:52:54', '2022-11-27 17:52:54'),
(36, 9, '0 pont', '2022-11-27 17:52:54', '2022-11-27 17:52:54'),
(37, 10, '5 pont', '2022-11-27 17:53:33', '2022-11-27 17:53:33'),
(38, 10, '3-4 pont', '2022-11-27 17:53:34', '2022-11-27 17:53:34'),
(39, 10, '1-2 pont', '2022-11-27 17:53:34', '2022-11-27 17:53:34'),
(40, 10, '0 pont', '2022-11-27 17:53:34', '2022-11-27 17:53:34');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_21_164914_create_questionnaires_table', 2),
(6, '2022_11_21_192652_create_questions_table', 3),
(7, '2022_11_21_192709_create_answers_table', 3),
(8, '2022_11_25_171515_create_surveys_table', 4),
(9, '2022_11_25_171806_create_survey_responses_table', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@user.com', '$2y$10$c56tNX7OApI9gHqeNKmZfuko5WEOwVJywiPW3k1Acl.LQDOOeXZbC', '2022-11-19 21:34:44');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `user_id`, `title`, `purpose`, `created_at`, `updated_at`) VALUES
(6, 1, 'Nyaralási szokások', 'Kérjük töltse ki, hogy megismerhessük nyaralási szokásait', '2022-11-27 17:41:07', '2022-11-27 17:41:07'),
(7, 1, 'Vélemény a weboldalról', 'Kitöltésével visszaigazolást kaphatunk weboldalunkkal kapcsolatban', '2022-11-27 17:50:58', '2022-11-27 17:50:58');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `questions`
--

INSERT INTO `questions` (`id`, `questionnaire_id`, `question`, `created_at`, `updated_at`) VALUES
(6, 6, 'Mikor volt utoljára nyaralni?', '2022-11-27 17:43:49', '2022-11-27 17:43:49'),
(7, 6, 'Járt már külföldön?', '2022-11-27 17:45:50', '2022-11-27 17:45:50'),
(8, 6, 'Hova tervez menni nyaralni legközelebb?', '2022-11-27 17:48:57', '2022-11-27 17:48:57'),
(9, 7, 'Pontozza a dizájnt', '2022-11-27 17:52:54', '2022-11-27 17:52:54'),
(10, 7, 'Pontozza az elrendezést/átláthatóságot', '2022-11-27 17:53:33', '2022-11-27 17:53:33');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `surveys`
--

INSERT INTO `surveys` (`id`, `questionnaire_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(25, 6, 'Teszt Elek', 'teszt.elek@gmail.com', '2022-11-27 17:55:13', '2022-11-27 17:55:13'),
(26, 6, 'Sövényugró Mariska', 'sovenyugro.mariska@gmail.com', '2022-11-27 17:56:19', '2022-11-27 17:56:19'),
(27, 6, 'Gipsz Jakab', 'gipsz.jakab@gmail.com', '2022-11-27 17:56:48', '2022-11-27 17:56:48'),
(28, 7, 'Teszt Elek', 'teszt.elek@gmail.com', '2022-11-27 17:57:20', '2022-11-27 17:57:20'),
(29, 7, 'Sövényugró Mariska', 'sovenyugro.mariska@gmail.com', '2022-11-27 17:57:45', '2022-11-27 17:57:45'),
(30, 7, 'Gipsz Jakab', 'gipsz.jakab@gmail.com', '2022-11-27 17:57:58', '2022-11-27 17:57:58'),
(31, 6, 'Kala Pál', 'kala.pal@gmail.com', '2022-11-27 18:04:35', '2022-11-27 18:04:35');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `survey_responses`
--

INSERT INTO `survey_responses` (`id`, `survey_id`, `question_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(23, 25, 6, 22, '2022-11-27 17:55:13', '2022-11-27 17:55:13'),
(24, 25, 7, 27, '2022-11-27 17:55:13', '2022-11-27 17:55:13'),
(25, 25, 8, 30, '2022-11-27 17:55:13', '2022-11-27 17:55:13'),
(26, 26, 6, 21, '2022-11-27 17:56:19', '2022-11-27 17:56:19'),
(27, 26, 7, 25, '2022-11-27 17:56:20', '2022-11-27 17:56:20'),
(28, 26, 8, 32, '2022-11-27 17:56:20', '2022-11-27 17:56:20'),
(29, 27, 6, 21, '2022-11-27 17:56:48', '2022-11-27 17:56:48'),
(30, 27, 7, 25, '2022-11-27 17:56:48', '2022-11-27 17:56:48'),
(31, 27, 8, 31, '2022-11-27 17:56:48', '2022-11-27 17:56:48'),
(32, 28, 9, 34, '2022-11-27 17:57:20', '2022-11-27 17:57:20'),
(33, 28, 10, 37, '2022-11-27 17:57:20', '2022-11-27 17:57:20'),
(34, 29, 9, 35, '2022-11-27 17:57:45', '2022-11-27 17:57:45'),
(35, 29, 10, 38, '2022-11-27 17:57:45', '2022-11-27 17:57:45'),
(36, 30, 9, 34, '2022-11-27 17:57:58', '2022-11-27 17:57:58'),
(37, 30, 10, 38, '2022-11-27 17:57:58', '2022-11-27 17:57:58'),
(38, 31, 6, 22, '2022-11-27 18:04:35', '2022-11-27 18:04:35'),
(39, 31, 7, 25, '2022-11-27 18:04:35', '2022-11-27 18:04:35'),
(40, 31, 8, 29, '2022-11-27 18:04:35', '2022-11-27 18:04:35');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@user.com', NULL, '$2y$10$QNNFnWLnT8obyjwrWgeMtOUfjl4bLqaCqZiOSGqxrNLenRZg572H.', NULL, '2022-11-19 21:33:01', '2022-11-19 21:33:01');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT a táblához `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
