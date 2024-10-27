-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2024 at 01:08 PM
-- Server version: 8.0.31-0ubuntu0.20.04.2
-- PHP Version: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryptopanic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `title`, `slug`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DOGS', 'Dogs', 'dogs-2', 'https://cryptopanic.com/news/dogs-2/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(2, 'BTC', 'Bitcoin', 'bitcoin', 'https://cryptopanic.com/news/bitcoin/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(3, 'USDT', 'Tether', 'tether', 'https://cryptopanic.com/news/tether/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(4, 'TON', 'Toncoin', 'the-open-network', 'https://cryptopanic.com/news/the-open-network/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(5, 'KCS', 'KuCoin', 'kucoin-shares', 'https://cryptopanic.com/news/kucoin-shares/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(6, 'CATS', 'CATS', 'cats-2', 'https://cryptopanic.com/news/cats-2/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(7, 'DD', 'Diment Dollar', 'diment-dollar', 'https://cryptopanic.com/news/diment-dollar/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(8, 'ATH', 'Aethir', 'aethir', 'https://cryptopanic.com/news/aethir/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(9, 'STABLE', 'Stable', 'usdfi-stable', 'https://cryptopanic.com/news/usdfi-stable/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(10, 'SUI', 'Sui', 'sui', 'https://cryptopanic.com/news/sui/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(11, '00', '00 Token', 'zer0zer0', 'https://cryptopanic.com/news/zer0zer0/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(12, 'DEFI', 'DeFi', 'de-fi', 'https://cryptopanic.com/news/de-fi/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(13, 'XRP', 'XRP', 'ripple', 'https://cryptopanic.com/news/ripple/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(14, 'ETH', 'Ethereum', 'ethereum', 'https://cryptopanic.com/news/ethereum/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(15, 'USDS', 'USDS', 'usds', 'https://cryptopanic.com/news/usds/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(16, 'WLD', 'Worldcoin', 'worldcoin-wld', 'https://cryptopanic.com/news/worldcoin-wld/', NULL, '2024-10-26 12:57:49', '2024-10-26 12:57:49'),
(17, 'SOL', 'Solana', 'solana', 'https://cryptopanic.com/news/solana/', NULL, '2024-10-26 15:06:54', '2024-10-26 15:06:54'),
(18, 'MEW', 'cat in a dogs world', 'cat-in-a-dogs-world', 'https://cryptopanic.com/news/cat-in-a-dogs-world/', NULL, '2024-10-26 15:06:54', '2024-10-26 15:06:54'),
(19, 'CROS', 'Cros', 'cros', 'https://cryptopanic.com/news/cros/', NULL, '2024-10-26 15:07:41', '2024-10-26 15:07:41'),
(20, 'GALA', 'GALA', 'gala', 'https://cryptopanic.com/news/gala/', NULL, '2024-10-26 15:07:41', '2024-10-26 15:07:41'),
(21, 'GOAT', 'Goatseus Maximus', 'goatseus-maximus', 'https://cryptopanic.com/news/goatseus-maximus/', NULL, '2024-10-26 15:36:41', '2024-10-26 15:36:41'),
(22, 'GMT', 'GMT', 'stepn', 'https://cryptopanic.com/news/stepn/', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(23, 'TRX', 'TRON', 'tron', 'https://cryptopanic.com/news/tron/', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(24, 'MEME', 'Memecoin', 'memecoin-2', 'https://cryptopanic.com/news/memecoin-2/', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(25, 'SHIB', 'Shiba Inu', 'shiba-inu', 'https://cryptopanic.com/news/shiba-inu/', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(26, 'DOGE', 'Dogecoin', 'dogecoin', 'https://cryptopanic.com/news/dogecoin/', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(27, 'GRT', 'The Graph', 'the-graph', 'https://cryptopanic.com/news/the-graph/', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(28, 'SOBTC', 'Wrapped Bitcoin (Sollet)', 'wrapped-bitcoin-sollet', 'https://cryptopanic.com/news/wrapped-bitcoin-sollet/', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(29, 'ADA', 'Cardano', 'cardano', 'https://cryptopanic.com/news/cardano/', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(30, 'WRX', 'WazirX', 'wazirx', 'https://cryptopanic.com/news/wazirx/', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(31, 'ARKM', 'Arkham', 'arkham', 'https://cryptopanic.com/news/arkham/', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(32, 'USDC', 'USDC', 'usd-coin', 'https://cryptopanic.com/news/usd-coin/', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(33, 'XLM', 'Stellar', 'stellar', 'https://cryptopanic.com/news/stellar/', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(34, 'LINK', 'Chainlink', 'chainlink', 'https://cryptopanic.com/news/chainlink/', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(35, 'WOO', 'WOO', 'woo-network', 'https://cryptopanic.com/news/woo-network/', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(36, 'BTCUSD', 'Bitcoin USD (BTCFi)', 'bitcoin-usd-btcfi', 'https://cryptopanic.com/news/bitcoin-usd-btcfi/', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(37, 'OP', 'Optimism', 'optimism', 'https://cryptopanic.com/news/optimism/', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `currency_news`
--

CREATE TABLE `currency_news` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_news`
--

INSERT INTO `currency_news` (`id`, `news_id`, `currency_id`, `created_at`, `updated_at`) VALUES
(1, 20099006, 22, NULL, NULL),
(2, 20098966, 2, NULL, NULL),
(3, 20098966, 14, NULL, NULL),
(4, 20098924, 2, NULL, NULL),
(5, 20098924, 14, NULL, NULL),
(6, 20098924, 13, NULL, NULL),
(7, 20098924, 14, NULL, NULL),
(8, 20098928, 23, NULL, NULL),
(9, 20098928, 24, NULL, NULL),
(10, 20098912, 25, NULL, NULL),
(11, 20098772, 2, NULL, NULL),
(12, 20098772, 3, NULL, NULL),
(13, 20098752, 2, NULL, NULL),
(14, 20098752, 3, NULL, NULL),
(15, 20098752, 26, NULL, NULL),
(16, 20098752, 27, NULL, NULL),
(17, 20098752, 26, NULL, NULL),
(18, 20098752, 26, NULL, NULL),
(19, 20098952, 17, NULL, NULL),
(20, 20098746, 17, NULL, NULL),
(21, 20098719, 2, NULL, NULL),
(22, 20098719, 3, NULL, NULL),
(29, 20100043, 2, NULL, NULL),
(30, 20100040, 14, NULL, NULL),
(31, 20100104, 2, NULL, NULL),
(32, 20100104, 14, NULL, NULL),
(33, 20100104, 17, NULL, NULL),
(34, 20100104, 29, NULL, NULL),
(35, 20100020, 2, NULL, NULL),
(36, 20100020, 3, NULL, NULL),
(37, 20100171, 14, NULL, NULL),
(38, 20100171, 17, NULL, NULL),
(87, 20100327, 30, NULL, NULL),
(88, 20100203, 3, NULL, NULL),
(89, 20100185, 2, NULL, NULL),
(90, 20100167, 31, NULL, NULL),
(91, 20100154, 2, NULL, NULL),
(92, 20100154, 14, NULL, NULL),
(93, 20100168, 2, NULL, NULL),
(94, 20100146, 13, NULL, NULL),
(95, 20100105, 13, NULL, NULL),
(96, 20101566, 28, NULL, NULL),
(97, 20100101, 17, NULL, NULL),
(98, 20100102, 26, NULL, NULL),
(99, 20101908, 2, NULL, NULL),
(100, 20101801, 2, NULL, NULL),
(101, 20101759, 32, NULL, NULL),
(102, 20101759, 32, NULL, NULL),
(103, 20101759, 32, NULL, NULL),
(104, 20101759, 32, NULL, NULL),
(105, 20101759, 32, NULL, NULL),
(106, 20101759, 32, NULL, NULL),
(107, 20101759, 32, NULL, NULL),
(108, 20101759, 32, NULL, NULL),
(109, 20101746, 2, NULL, NULL),
(110, 20101753, 33, NULL, NULL),
(111, 20101674, 34, NULL, NULL),
(112, 20101653, 3, NULL, NULL),
(113, 20101653, 3, NULL, NULL),
(114, 20101653, 3, NULL, NULL),
(115, 20101653, 3, NULL, NULL),
(116, 20101653, 3, NULL, NULL),
(117, 20101651, 2, NULL, NULL),
(118, 20101651, 35, NULL, NULL),
(119, 20101632, 2, NULL, NULL),
(120, 20101632, 14, NULL, NULL),
(121, 20101632, 3, NULL, NULL),
(122, 20101632, 36, NULL, NULL),
(123, 20101628, 28, NULL, NULL),
(124, 20101628, 37, NULL, NULL),
(125, 20101523, 14, NULL, NULL),
(126, 20101523, 14, NULL, NULL),
(127, 20101445, 2, NULL, NULL),
(128, 20101561, 28, NULL, NULL),
(129, 20101557, 28, NULL, NULL),
(130, 20101373, 14, NULL, NULL),
(131, 20101373, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_26_114803_create_currencies_table', 1),
(7, '2024_10_26_131025_create_sources_table', 2),
(8, '2024_10_26_131638_create_currency_news_table', 2),
(11, '2024_10_26_130616_create_news_table', 4),
(12, '2024_10_26_131643_create_source_news_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `kind` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `kind`, `title`, `slug`, `url`, `published_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(20059391, 'media', 'Power Hour October 26th 2024', 'Power-Hour-October-26th-2024', 'https://cryptopanic.com/news/20059391/Power-Hour-October-26th-2024', '2024-10-27 04:43:02', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20098440, 'news', 'Ethereum Netflow Spikes To Derivatives Markets – Is a Price Swing on the Horizon?', 'Ethereum-Netflow-Spikes-To-Derivatives-Markets-Is-a-Price-Swing-on-the-Horizon', 'https://cryptopanic.com/news/20098440/Ethereum-Netflow-Spikes-To-Derivatives-Markets-Is-a-Price-Swing-on-the-Horizon', '2024-10-26 08:30:02', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098445, 'news', 'Best Dividend-Paying Stocks for Long-Term Investors', 'Best-Dividend-Paying-Stocks-for-Long-Term-Investors', 'https://cryptopanic.com/news/20098445/Best-Dividend-Paying-Stocks-for-Long-Term-Investors', '2024-10-26 08:30:01', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098470, 'news', 'U.S. Cracks Down on Unlicensed Money Transmitting Business: Aurae CEO Charged', 'US-Cracks-Down-on-Unlicensed-Money-Transmitting-Business-Aurae-CEO-Charged', 'https://cryptopanic.com/news/20098470/US-Cracks-Down-on-Unlicensed-Money-Transmitting-Business-Aurae-CEO-Charged', '2024-10-26 08:39:04', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098471, 'news', 'Will a Trump Victory Ignite a Crypto ETF Boom? Discover What Experts Are Saying', 'Will-a-Trump-Victory-Ignite-a-Crypto-ETF-Boom-Discover-What-Experts-Are-Saying', 'https://cryptopanic.com/news/20098471/Will-a-Trump-Victory-Ignite-a-Crypto-ETF-Boom-Discover-What-Experts-Are-Saying', '2024-10-26 08:41:53', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098474, 'news', 'Bitcoin ETFs See $997M Weekly Inflows as BTC Outperforms Other Cryptos', 'Bitcoin-ETFs-See-997M-Weekly-Inflows-as-BTC-Outperforms-Other-Cryptos', 'https://cryptopanic.com/news/20098474/Bitcoin-ETFs-See-997M-Weekly-Inflows-as-BTC-Outperforms-Other-Cryptos', '2024-10-26 08:45:00', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098482, 'news', 'Cat in a Dogs World Price Prediction 2024 – 2030: Will MEW Price 2X This Q4?', 'Cat-in-a-Dogs-World-Price-Prediction-2024-2030-Will-MEW-Price-2X-This-Q4', 'https://cryptopanic.com/news/20098482/Cat-in-a-Dogs-World-Price-Prediction-2024-2030-Will-MEW-Price-2X-This-Q4', '2024-10-26 08:52:54', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098530, 'news', 'Terra Luna Classic Community Unanimously Approves Key Proposal', 'Terra-Luna-Classic-Community-Unanimously-Approves-Key-Proposal', 'https://cryptopanic.com/news/20098530/Terra-Luna-Classic-Community-Unanimously-Approves-Key-Proposal', '2024-10-26 09:00:20', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098688, 'news', 'Trader Says One Ethereum (ETH) Rival Will Break All-Time Highs, Updates Outlook on Goatseus Maximus (GOAT)', 'Trader-Says-One-Ethereum-ETH-Rival-Will-Break-All-Time-Highs-Updates-Outlook-on-Goatseus-Maximus-GOAT', 'https://cryptopanic.com/news/20098688/Trader-Says-One-Ethereum-ETH-Rival-Will-Break-All-Time-Highs-Updates-Outlook-on-Goatseus-Maximus-GOAT', '2024-10-26 09:15:59', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098703, 'news', 'Crypto Policy is Heating up Ahead of Close US Elections', 'Crypto-Policy-is-Heating-up-Ahead-of-Close-US-Elections', 'https://cryptopanic.com/news/20098703/Crypto-Policy-is-Heating-up-Ahead-of-Close-US-Elections', '2024-10-26 09:04:50', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098719, 'news', '#Bitcoin We saw a lot of volatility into the Friday close with the Tether FUD &amp; Middle Eastern Headlines.\n\nNot expecting too much this weekend as we gear up for our last full week before the elections. Think volatility will pick up a lot into next week.\n\nThe CME close ended up…', 'Bitcoin-We-saw-a-lot-of-volatility-into-the-Friday-close-with-the-Tether-FUD-amp-Middle-Eastern-Headlines-Not-expecting-too-much-this-weekend-as-we-gear-up-for-our-last-full-week-before-the-elections-Think-volatility-will-pick-up-a-lot-into-next-week-The-CME-close-ended-up', 'https://cryptopanic.com/news/20098719/Bitcoin-We-saw-a-lot-of-volatility-into-the-Friday-close-with-the-Tether-FUD-amp-Middle-Eastern-Headlines-Not-expecting-too-much-this-weekend-as-we-gear-up-for-our-last-full-week-before-the-elections-Think-volatility-will-pick-up-a-lot-into-next-week-The-C', '2024-10-26 09:32:17', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098722, 'news', 'The Importance of Digital Literacy in Metaverse Job Roles', 'The-Importance-of-Digital-Literacy-in-Metaverse-Job-Roles', 'https://cryptopanic.com/news/20098722/The-Importance-of-Digital-Literacy-in-Metaverse-Job-Roles', '2024-10-26 09:35:49', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098723, 'media', 'HUGE NEWS: These 35 Altcoins MIGHT PUMP IN PRICE, Public In 2025 & Bitcoin Will DESTROY Fiat', 'HUGE-NEWS-These-35-Altcoins-MIGHT-PUMP-IN-PRICE-Public-In-2025-Bitcoin-Will-DESTROY-Fiat', 'https://cryptopanic.com/news/20098723/HUGE-NEWS-These-35-Altcoins-MIGHT-PUMP-IN-PRICE-Public-In-2025-Bitcoin-Will-DESTROY-Fiat', '2024-10-26 09:29:43', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098746, 'news', 'SOL traders turn to this meme coin index as Solana price prediction points to a possible 5% slip', 'SOL-traders-turn-to-this-meme-coin-index-as-Solana-price-prediction-points-to-a-possible-5-slip', 'https://cryptopanic.com/news/20098746/SOL-traders-turn-to-this-meme-coin-index-as-Solana-price-prediction-points-to-a-possible-5-slip', '2024-10-26 09:52:18', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098752, 'news', 'Bitcoin Bull Run Not Over Yet? This Ratio Has Just Seen A Golden Cross', 'Bitcoin-Bull-Run-Not-Over-Yet-This-Ratio-Has-Just-Seen-A-Golden-Cross', 'https://cryptopanic.com/news/20098752/Bitcoin-Bull-Run-Not-Over-Yet-This-Ratio-Has-Just-Seen-A-Golden-Cross', '2024-10-26 10:00:19', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098770, 'news', 'Treasure Tapper Daily Code 27 October 2024, Tap to Earn $TREZ', 'Treasure-Tapper-Daily-Code-27-October-2024-Tap-to-Earn-TREZ', 'https://cryptopanic.com/news/20098770/Treasure-Tapper-Daily-Code-27-October-2024-Tap-to-Earn-TREZ', '2024-10-26 08:02:00', NULL, '2024-10-26 15:45:20', '2024-10-26 15:45:20'),
(20098771, 'news', 'The Economic Models and Profit Avenues for Metaverse Corporations', 'The-Economic-Models-and-Profit-Avenues-for-Metaverse-Corporations', 'https://cryptopanic.com/news/20098771/The-Economic-Models-and-Profit-Avenues-for-Metaverse-Corporations', '2024-10-26 10:01:36', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098772, 'news', 'Satoshi Nakamoto Statue Unveiled in Lugano, Honoring Bitcoin’s Legacy', 'Satoshi-Nakamoto-Statue-Unveiled-in-Lugano-Honoring-Bitcoins-Legacy', 'https://cryptopanic.com/news/20098772/Satoshi-Nakamoto-Statue-Unveiled-in-Lugano-Honoring-Bitcoins-Legacy', '2024-10-26 10:00:46', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098820, 'news', 'Memes Lab Daily Cipher Code Today 27 October 2024', 'Memes-Lab-Daily-Cipher-Code-Today-27-October-2024', 'https://cryptopanic.com/news/20098820/Memes-Lab-Daily-Cipher-Code-Today-27-October-2024', '2024-10-26 08:04:00', NULL, '2024-10-26 15:45:20', '2024-10-26 15:45:20'),
(20098824, 'news', 'CROS Airdrop Distribution Delayed to October 28: Fact or Fiction', 'CROS-Airdrop-Distribution-Delayed-to-October-28-Fact-or-Fiction', 'https://cryptopanic.com/news/20098824/CROS-Airdrop-Distribution-Delayed-to-October-28-Fact-or-Fiction', '2024-10-26 08:05:00', NULL, '2024-10-26 15:45:20', '2024-10-26 15:45:20'),
(20098909, 'news', 'Dropee Daily Combo October 27, 2024: Earn $DRP Coins', 'Dropee-Daily-Combo-October-27-2024-Earn-DRP-Coins', 'https://cryptopanic.com/news/20098909/Dropee-Daily-Combo-October-27-2024-Earn-DRP-Coins', '2024-10-26 08:07:00', NULL, '2024-10-26 15:45:20', '2024-10-26 15:45:20'),
(20098910, 'news', 'Polymarket Founder Sets the Record Straight: “Polymarket Is Not Focused on Politics”', 'Polymarket-Founder-Sets-the-Record-Straight-Polymarket-Is-Not-Focused-on-Politics', 'https://cryptopanic.com/news/20098910/Polymarket-Founder-Sets-the-Record-Straight-Polymarket-Is-Not-Focused-on-Politics', '2024-10-26 10:10:00', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098911, 'news', 'Brenda Lee’s classic gets an AI-driven Spanish makeover from Universal', 'Brenda-Lees-classic-gets-an-AI-driven-Spanish-makeover-from-Universal', 'https://cryptopanic.com/news/20098911/Brenda-Lees-classic-gets-an-AI-driven-Spanish-makeover-from-Universal', '2024-10-26 10:10:24', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098912, 'news', 'SHIB Team Mystifies Community with Recent 4-Word Tweet', 'SHIB-Team-Mystifies-Community-with-Recent-4-Word-Tweet', 'https://cryptopanic.com/news/20098912/SHIB-Team-Mystifies-Community-with-Recent-4-Word-Tweet', '2024-10-26 10:11:00', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098924, 'news', 'Bitcoin Bull Run on the Horizon: Will BTC Reach $100K by December?', 'Bitcoin-Bull-Run-on-the-Horizon-Will-BTC-Reach-100K-by-December', 'https://cryptopanic.com/news/20098924/Bitcoin-Bull-Run-on-the-Horizon-Will-BTC-Reach-100K-by-December', '2024-10-26 10:16:14', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098928, 'news', 'Justin Sun Predicts Meme Coin Boom With TRX Seeing New Peaks', 'Justin-Sun-Predicts-Meme-Coin-Boom-With-TRX-Seeing-New-Peaks', 'https://cryptopanic.com/news/20098928/Justin-Sun-Predicts-Meme-Coin-Boom-With-TRX-Seeing-New-Peaks', '2024-10-26 10:16:00', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098929, 'news', 'Why Crypto Transactions Fail and How to Prevent It', 'Why-Crypto-Transactions-Fail-and-How-to-Prevent-It', 'https://cryptopanic.com/news/20098929/Why-Crypto-Transactions-Fail-and-How-to-Prevent-It', '2024-10-26 10:25:19', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098936, 'news', 'MemeFi Ventures Launches Its First Memes Lab Project: Tap To Mine', 'MemeFi-Ventures-Launches-Its-First-Memes-Lab-Project-Tap-To-Mine', 'https://cryptopanic.com/news/20098936/MemeFi-Ventures-Launches-Its-First-Memes-Lab-Project-Tap-To-Mine', '2024-10-26 08:30:00', NULL, '2024-10-26 15:45:20', '2024-10-26 15:45:20'),
(20098938, 'news', 'Top 10 Crypto Mining Projects for High ROI', 'Top-10-Crypto-Mining-Projects-for-High-ROI', 'https://cryptopanic.com/news/20098938/Top-10-Crypto-Mining-Projects-for-High-ROI', '2024-10-26 10:30:01', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098952, 'news', 'Arkham Intelligence Adds Solana Blockchain Data', 'Arkham-Intelligence-Adds-Solana-Blockchain-Data', 'https://cryptopanic.com/news/20098952/Arkham-Intelligence-Adds-Solana-Blockchain-Data', '2024-10-26 10:00:00', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098966, 'news', 'Why Your Crypto Transactions Are Slow: Common Issues and Solutions', 'Why-Your-Crypto-Transactions-Are-Slow-Common-Issues-and-Solutions', 'https://cryptopanic.com/news/20098966/Why-Your-Crypto-Transactions-Are-Slow-Common-Issues-and-Solutions', '2024-10-26 10:54:36', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20098990, 'news', 'Agent 301 Airdrop Listing Date Update: Get All The Details Here', 'Agent-301-Airdrop-Listing-Date-Update-Get-All-The-Details-Here', 'https://cryptopanic.com/news/20098990/Agent-301-Airdrop-Listing-Date-Update-Get-All-The-Details-Here', '2024-10-26 09:00:00', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20098992, 'news', 'Western Union Expands Digital Services with New Mobile Wallet Acquisition', 'Western-Union-Expands-Digital-Services-with-New-Mobile-Wallet-Acquisition', 'https://cryptopanic.com/news/20098992/Western-Union-Expands-Digital-Services-with-New-Mobile-Wallet-Acquisition', '2024-10-26 11:00:47', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20099004, 'reddit', 'Can Bitcoin Hit an All-Time High of $73,679?', 'Can-Bitcoin-Hit-an-All-Time-High-of-73679', 'https://cryptopanic.com/news/20099004/Can-Bitcoin-Hit-an-All-Time-High-of-73679', '2024-10-26 08:03:39', NULL, '2024-10-26 15:45:20', '2024-10-26 15:45:20'),
(20099005, 'reddit', 'Do you think crypto will ever be regulated?', 'Do-you-think-crypto-will-ever-be-regulated', 'https://cryptopanic.com/news/20099005/Do-you-think-crypto-will-ever-be-regulated', '2024-10-26 09:29:15', NULL, '2024-10-26 15:45:19', '2024-10-26 15:45:19'),
(20099006, 'reddit', 'Daily Discussion Megathread - October 26, 2024 (GMT+0)', 'Daily-Discussion-Megathread-October-26-2024-GMT0', 'https://cryptopanic.com/news/20099006/Daily-Discussion-Megathread-October-26-2024-GMT0', '2024-10-26 11:00:16', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20099119, 'media', 'The Ultimate 2025 Crypto Portfolio', 'The-Ultimate-2025-Crypto-Portfolio', 'https://cryptopanic.com/news/20099119/The-Ultimate-2025-Crypto-Portfolio', '2024-10-26 11:00:15', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20099387, 'news', 'Seed Crypto Listing on Binance Confirmed for November: Check Now', 'Seed-Crypto-Listing-on-Binance-Confirmed-for-November-Check-Now', 'https://cryptopanic.com/news/20099387/Seed-Crypto-Listing-on-Binance-Confirmed-for-November-Check-Now', '2024-10-26 10:31:00', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20099414, 'news', 'Goats Listing Price on Binance: Explore Goats Token', 'Goats-Listing-Price-on-Binance-Explore-Goats-Token', 'https://cryptopanic.com/news/20099414/Goats-Listing-Price-on-Binance-Explore-Goats-Token', '2024-10-26 10:46:00', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20100020, 'news', 'Bitcoin Exchange Whale Ratio Hits New High Since 2022 — Impact On Price?', 'Bitcoin-Exchange-Whale-Ratio-Hits-New-High-Since-2022-Impact-On-Price', 'https://cryptopanic.com/news/20100020/Bitcoin-Exchange-Whale-Ratio-Hits-New-High-Since-2022-Impact-On-Price', '2024-10-26 16:00:43', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100024, 'news', 'Altcoin Plummets Over 98% Following Allegations of Rug Pull in Ecosystem', 'Altcoin-Plummets-Over-98-Following-Allegations-of-Rug-Pull-in-Ecosystem', 'https://cryptopanic.com/news/20100024/Altcoin-Plummets-Over-98-Following-Allegations-of-Rug-Pull-in-Ecosystem', '2024-10-26 16:00:34', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100040, 'news', 'Vitalik Buterin Shares Plan to Reduce Ethereum’s Bloat and Complexity', 'Vitalik-Buterin-Shares-Plan-to-Reduce-Ethereums-Bloat-and-Complexity', 'https://cryptopanic.com/news/20100040/Vitalik-Buterin-Shares-Plan-to-Reduce-Ethereums-Bloat-and-Complexity', '2024-10-26 16:01:57', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100043, 'news', 'After last week\'s surge, #Bitcoin ETFs have seen another great week.\n\nMonday: +$294.3M\nTuesday: -79.1M\nWednesday: +$192.4M\nThursday: +$188M\nFriday: +$402M\n\nThis comes down to a total net inflow of +$997.6M this week.\n\nThat makes for +$3B in inflows in the past two weeks.', 'After-last-weeks-surge-Bitcoin-ETFs-have-seen-another-great-week-Monday-2943M-Tuesday-791M-Wednesday-1924M-Thursday-188M-Friday-402M-This-comes-down-to-a-total-net-inflow-of-9976M-this-week-That-makes-for-3B-in-inflows-in-the-past-two-weeks', 'https://cryptopanic.com/news/20100043/After-last-weeks-surge-Bitcoin-ETFs-have-seen-another-great-week-Monday-2943M-Tuesday-791M-Wednesday-1924M-Thursday-188M-Friday-402M-This-comes-down-to-a-total-net-inflow-of-9976M-this-week-That-makes-for-3B-in-inflows-in-the-past-two-weeks', '2024-10-26 16:03:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100057, 'news', 'Netherlands Adopts EU Crypto Tax Rules to Boost Transparency', 'Netherlands-Adopts-EU-Crypto-Tax-Rules-to-Boost-Transparency', 'https://cryptopanic.com/news/20100057/Netherlands-Adopts-EU-Crypto-Tax-Rules-to-Boost-Transparency', '2024-10-26 16:04:31', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100101, 'news', 'Trading expert highlights ‘last short’ opportunity before the market changes', 'Trading-expert-highlights-last-short-opportunity-before-the-market-changes', 'https://cryptopanic.com/news/20100101/Trading-expert-highlights-last-short-opportunity-before-the-market-changes', '2024-10-26 16:08:42', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100102, 'news', 'Dogecoin Nears Rare Golden Cross', 'Dogecoin-Nears-Rare-Golden-Cross', 'https://cryptopanic.com/news/20100102/Dogecoin-Nears-Rare-Golden-Cross', '2024-10-26 16:08:12', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100104, 'news', 'Cardano founder Hoskinson sees DeFi on Bitcoin surpassing Ethereum and Solana', 'Cardano-founder-Hoskinson-sees-DeFi-on-Bitcoin-surpassing-Ethereum-and-Solana', 'https://cryptopanic.com/news/20100104/Cardano-founder-Hoskinson-sees-DeFi-on-Bitcoin-surpassing-Ethereum-and-Solana', '2024-10-26 16:00:45', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100105, 'news', 'Ripple Struggles to Recover as Downtrend Continues', 'Ripple-Struggles-to-Recover-as-Downtrend-Continues', 'https://cryptopanic.com/news/20100105/Ripple-Struggles-to-Recover-as-Downtrend-Continues', '2024-10-26 16:12:04', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100112, 'news', 'Guild.xyz: Potential Airdrop', 'Guildxyz-Potential-Airdrop', 'https://cryptopanic.com/news/20100112/Guildxyz-Potential-Airdrop', '2024-10-26 16:17:13', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100119, 'news', 'Best Software for Trading Cryptocurrency in 2024', 'Best-Software-for-Trading-Cryptocurrency-in-2024', 'https://cryptopanic.com/news/20100119/Best-Software-for-Trading-Cryptocurrency-in-2024', '2024-10-26 16:20:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100122, 'news', 'Monad Pad Prepares for Anticipated ICO in DeFi Space', 'Monad-Pad-Prepares-for-Anticipated-ICO-in-DeFi-Space', 'https://cryptopanic.com/news/20100122/Monad-Pad-Prepares-for-Anticipated-ICO-in-DeFi-Space', '2024-10-26 16:25:17', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100127, 'news', 'Cryptocurrencies Reshape Global Finance and Trade', 'Cryptocurrencies-Reshape-Global-Finance-and-Trade', 'https://cryptopanic.com/news/20100127/Cryptocurrencies-Reshape-Global-Finance-and-Trade', '2024-10-26 16:30:58', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100142, 'media', 'Power Hour October 26th 2024', 'Power-Hour-October-26th-2024', 'https://cryptopanic.com/news/20100142/Power-Hour-October-26th-2024', '2024-10-26 16:35:41', NULL, '2024-10-27 06:37:44', '2024-10-27 06:37:44'),
(20100146, 'news', 'XRP Price Prediction for October 26', 'XRP-Price-Prediction-for-October-26', 'https://cryptopanic.com/news/20100146/XRP-Price-Prediction-for-October-26', '2024-10-26 16:20:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100154, 'news', 'Bitcoin ETFs Are Booming as BlackRock Shatters Records', 'Bitcoin-ETFs-Are-Booming-as-BlackRock-Shatters-Records', 'https://cryptopanic.com/news/20100154/Bitcoin-ETFs-Are-Booming-as-BlackRock-Shatters-Records', '2024-10-26 16:42:54', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100162, 'news', 'JPMorgan Chase, Wells Fargo and Bank of America Refuse To Define ‘Unauthorized Transaction’ As Customers Lose $320,000,000,000 To Scams on Zelle: Report', 'JPMorgan-Chase-Wells-Fargo-and-Bank-of-America-Refuse-To-Define-Unauthorized-Transaction-As-Customers-Lose-320000000000-To-Scams-on-Zelle-Report', 'https://cryptopanic.com/news/20100162/JPMorgan-Chase-Wells-Fargo-and-Bank-of-America-Refuse-To-Define-Unauthorized-Transaction-As-Customers-Lose-320000000000-To-Scams-on-Zelle-Report', '2024-10-26 16:48:29', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100167, 'news', 'Hacker Who Looted $20,000,000 From a US Government Address Returns the Vast Majority of Stolen Funds: Arkham', 'Hacker-Who-Looted-20000000-From-a-US-Government-Address-Returns-the-Vast-Majority-of-Stolen-Funds-Arkham', 'https://cryptopanic.com/news/20100167/Hacker-Who-Looted-20000000-From-a-US-Government-Address-Returns-the-Vast-Majority-of-Stolen-Funds-Arkham', '2024-10-26 16:55:50', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100168, 'news', 'Bitcoin (BTC) Price Prediction for October 26', 'Bitcoin-BTC-Price-Prediction-for-October-26', 'https://cryptopanic.com/news/20100168/Bitcoin-BTC-Price-Prediction-for-October-26', '2024-10-26 16:35:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100171, 'news', 'Vitalik Buterin Introduces ‘The Purge’ to Tackle Ethereum’s Data and Storage Challenges', 'Vitalik-Buterin-Introduces-The-Purge-to-Tackle-Ethereums-Data-and-Storage-Challenges', 'https://cryptopanic.com/news/20100171/Vitalik-Buterin-Introduces-The-Purge-to-Tackle-Ethereums-Data-and-Storage-Challenges', '2024-10-26 16:00:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100185, 'news', 'BRICS Move Away from Dollar Could Boost Bitcoin’s Appeal as a Hedge Asset', 'BRICS-Move-Away-from-Dollar-Could-Boost-Bitcoins-Appeal-as-a-Hedge-Asset', 'https://cryptopanic.com/news/20100185/BRICS-Move-Away-from-Dollar-Could-Boost-Bitcoins-Appeal-as-a-Hedge-Asset', '2024-10-26 17:00:02', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100190, 'media', 'Ep. 434 Anne Winston | Institutional Asset Management with Wave Digital Assets', 'Ep-434-Anne-Winston-Institutional-Asset-Management-with-Wave-Digital-Assets', 'https://cryptopanic.com/news/20100190/Ep-434-Anne-Winston-Institutional-Asset-Management-with-Wave-Digital-Assets', '2024-10-26 17:00:00', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100203, 'news', 'Tether Denies WSJ Rumors: No Fed Probe, No IPO—Only Innovation', 'Tether-Denies-WSJ-Rumors-No-Fed-Probe-No-IPOOnly-Innovation', 'https://cryptopanic.com/news/20100203/Tether-Denies-WSJ-Rumors-No-Fed-Probe-No-IPOOnly-Innovation', '2024-10-26 17:05:00', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100327, 'news', 'WazirX Hack Victims Plan Class-Action Lawsuit Against the Exchange', 'WazirX-Hack-Victims-Plan-Class-Action-Lawsuit-Against-the-Exchange', 'https://cryptopanic.com/news/20100327/WazirX-Hack-Victims-Plan-Class-Action-Lawsuit-Against-the-Exchange', '2024-10-26 17:20:00', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100339, 'news', 'Fake Curve Finance app hits Apple’s top 100, exposing users to DeFi scam risks', 'Fake-Curve-Finance-app-hits-Apples-top-100-exposing-users-to-DeFi-scam-risks', 'https://cryptopanic.com/news/20100339/Fake-Curve-Finance-app-hits-Apples-top-100-exposing-users-to-DeFi-scam-risks', '2024-10-26 17:29:37', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(20100380, 'news', 'Simple Coin Listing Price on Binance: Explore Token Now', 'Simple-Coin-Listing-Price-on-Binance-Explore-Token-Now', 'https://cryptopanic.com/news/20100380/Simple-Coin-Listing-Price-on-Binance-Explore-Token-Now', '2024-10-26 15:59:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20100404, 'news', 'Boinkers Listing Price on Binance: Explore Boinkers Token', 'Boinkers-Listing-Price-on-Binance-Explore-Boinkers-Token', 'https://cryptopanic.com/news/20100404/Boinkers-Listing-Price-on-Binance-Explore-Boinkers-Token', '2024-10-26 16:04:00', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20101373, 'news', 'Why Solana Cannot Become the Global Blockchain Backbone', 'Why-Solana-Cannot-Become-the-Global-Blockchain-Backbone', 'https://cryptopanic.com/news/20101373/Why-Solana-Cannot-Become-the-Global-Blockchain-Backbone', '2024-10-27 04:11:20', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101385, 'news', 'What Makes a Good Penny Stock? Tips for New Investors', 'What-Makes-a-Good-Penny-Stock-Tips-for-New-Investors', 'https://cryptopanic.com/news/20101385/What-Makes-a-Good-Penny-Stock-Tips-for-New-Investors', '2024-10-27 04:30:11', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101445, 'news', 'Russia enacts control measure on Bitcoin mining operations', 'Russia-enacts-control-measure-on-Bitcoin-mining-operations', 'https://cryptopanic.com/news/20101445/Russia-enacts-control-measure-on-Bitcoin-mining-operations', '2024-10-27 05:17:45', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101448, 'news', 'Bitcoin Analyst Predicts New Highs Amid Market Stagnation: \'We Are Right On Track, Right On Schedule\'', 'Bitcoin-Analyst-Predicts-New-Highs-Amid-Market-Stagnation-We-Are-Right-On-Track-Right-On-Schedule', 'https://cryptopanic.com/news/20101448/Bitcoin-Analyst-Predicts-New-Highs-Amid-Market-Stagnation-We-Are-Right-On-Track-Right-On-Schedule', '2024-10-27 05:06:31', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101523, 'news', 'Vitalik Buterin Addresses ETH Sales Criticism Amid Increased Holdings', 'Vitalik-Buterin-Addresses-ETH-Sales-Criticism-Amid-Increased-Holdings', 'https://cryptopanic.com/news/20101523/Vitalik-Buterin-Addresses-ETH-Sales-Criticism-Amid-Increased-Holdings', '2024-10-27 06:00:30', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101557, 'reddit', 'Have coin on an exchange, and now my own full node, now what?', 'Have-coin-on-an-exchange-and-now-my-own-full-node-now-what', 'https://cryptopanic.com/news/20101557/Have-coin-on-an-exchange-and-now-my-own-full-node-now-what', '2024-10-27 04:18:02', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101561, 'reddit', 'Sparrow Wallet - Private Electrum Server over Private Bitcoin Core', 'Sparrow-Wallet-Private-Electrum-Server-over-Private-Bitcoin-Core', 'https://cryptopanic.com/news/20101561/Sparrow-Wallet-Private-Electrum-Server-over-Private-Bitcoin-Core', '2024-10-27 05:00:28', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101566, 'reddit', '\"You can\'t steal the wealth we\'ve stolen. That\'s not fair\"', 'You-cant-steal-the-wealth-weve-stolen-Thats-not-fair', 'https://cryptopanic.com/news/20101566/You-cant-steal-the-wealth-weve-stolen-Thats-not-fair', '2024-10-26 16:09:44', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(20101628, 'reddit', 'Daily Discussion, October 27, 2024', 'Daily-Discussion-October-27-2024', 'https://cryptopanic.com/news/20101628/Daily-Discussion-October-27-2024', '2024-10-27 06:08:31', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101632, 'news', 'ETF Recap: Another Strong Week for Bitcoin Funds, Ethereum Demand Lacks', 'ETF-Recap-Another-Strong-Week-for-Bitcoin-Funds-Ethereum-Demand-Lacks', 'https://cryptopanic.com/news/20101632/ETF-Recap-Another-Strong-Week-for-Bitcoin-Funds-Ethereum-Demand-Lacks', '2024-10-27 06:12:19', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101646, 'news', 'Top 10 GameFi (Gaming Finance) Projects to Watch', 'Top-10-GameFi-Gaming-Finance-Projects-to-Watch', 'https://cryptopanic.com/news/20101646/Top-10-GameFi-Gaming-Finance-Projects-to-Watch', '2024-10-27 06:30:39', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101651, 'news', 'Altcoin seasons ‘will be weaker’ moving forward, says analyst', 'Altcoin-seasons-will-be-weaker-moving-forward-says-analyst', 'https://cryptopanic.com/news/20101651/Altcoin-seasons-will-be-weaker-moving-forward-says-analyst', '2024-10-27 06:53:34', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101653, 'news', 'Ripple’s CEO Warns of Potential Tether Crisis Amid Controversial WSJ Report', 'Ripples-CEO-Warns-of-Potential-Tether-Crisis-Amid-Controversial-WSJ-Report', 'https://cryptopanic.com/news/20101653/Ripples-CEO-Warns-of-Potential-Tether-Crisis-Amid-Controversial-WSJ-Report', '2024-10-27 07:00:18', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101674, 'news', 'Chainlink: Is a 40% surge just around the corner for LINK?', 'Chainlink-Is-a-40-surge-just-around-the-corner-for-LINK', 'https://cryptopanic.com/news/20101674/Chainlink-Is-a-40-surge-just-around-the-corner-for-LINK', '2024-10-27 07:00:33', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101745, 'blog', 'Crypto horoscope from October 28 to December 3', 'Crypto-horoscope-from-October-28-to-December-3', 'https://cryptopanic.com/news/20101745/Crypto-horoscope-from-October-28-to-December-3', '2024-10-27 07:00:00', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101746, 'news', 'Bitcoin Gearing Up for ‘Monstrous’ Breakout Amid Shallower Dips, Says Top Analyst – Here’s His Outlook', 'Bitcoin-Gearing-Up-for-Monstrous-Breakout-Amid-Shallower-Dips-Says-Top-Analyst-Heres-His-Outlook', 'https://cryptopanic.com/news/20101746/Bitcoin-Gearing-Up-for-Monstrous-Breakout-Amid-Shallower-Dips-Says-Top-Analyst-Heres-His-Outlook', '2024-10-27 07:04:13', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101753, 'reddit', '/r/Stellar Weekly Discussion Thread', 'rStellar-Weekly-Discussion-Thread', 'https://cryptopanic.com/news/20101753/rStellar-Weekly-Discussion-Thread', '2024-10-27 07:00:48', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101759, 'news', 'Circle CEO stands firm on IPO plans, says no extra funding needed', 'Circle-CEO-stands-firm-on-IPO-plans-says-no-extra-funding-needed', 'https://cryptopanic.com/news/20101759/Circle-CEO-stands-firm-on-IPO-plans-says-no-extra-funding-needed', '2024-10-27 07:24:05', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101801, 'news', 'Bitcoin (BTC) Enthusiasm Grows as Capital Inflows Surge', 'Bitcoin-BTC-Enthusiasm-Grows-as-Capital-Inflows-Surge', 'https://cryptopanic.com/news/20101801/Bitcoin-BTC-Enthusiasm-Grows-as-Capital-Inflows-Surge', '2024-10-27 08:00:53', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(20101908, 'news', '#Bitcoin\'s Massive liquidity cluster still sitting at $70K+.\n\nWe only have one full week left until the elections. It will be interesting to see if the market will try to get that liquidity prior to that.\n\nI\'m assuming as long as price trades right below, it will try to do so.', 'Bitcoins-Massive-liquidity-cluster-still-sitting-at-70K-We-only-have-one-full-week-left-until-the-elections-It-will-be-interesting-to-see-if-the-market-will-try-to-get-that-liquidity-prior-to-that-Im-assuming-as-long-as-price-trades-right-below-it-will-try-to-do-so', 'https://cryptopanic.com/news/20101908/Bitcoins-Massive-liquidity-cluster-still-sitting-at-70K-We-only-have-one-full-week-left-until-the-elections-It-will-be-interesting-to-see-if-the-market-will-try-to-get-that-liquidity-prior-to-that-Im-assuming-as-long-as-price-trades-right-below-it-will-try', '2024-10-27 08:02:00', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `title`, `region`, `domain`, `path`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'coinpedia', 'en', 'coinpedia.org', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(2, 'Dailycoin', 'en', 'dailycoin.com', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(3, 'ecoinimist.com', 'en', 'ecoinimist.com', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(4, 'NewsBTC', 'en', 'newsbtc.com', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(5, 'sfctoday', 'en', 'sfctoday.com', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(6, 'coingabbar', 'en', 'coingabbar.com', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(7, 'r/CryptoMarkets', 'en', 'reddit.com', 'r/cryptomarkets', 'reddit', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(8, 'cryptodnes', 'en', 'cryptodnes.bg', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(9, 'BeInCrypto', 'en', 'beincrypto.com', NULL, 'feed', NULL, '2024-10-26 15:09:47', '2024-10-26 15:09:47'),
(10, 'Twitter - daancrypto', 'en', 'DaanCrypto', '@daancrypto', 'twitter', NULL, '2024-10-26 15:36:41', '2024-10-26 15:36:41'),
(11, 'The Modern Investor', 'en', 'youtube.com', NULL, 'media', NULL, '2024-10-26 15:36:41', '2024-10-26 15:36:41'),
(12, 'The Daily Hodl', 'en', 'dailyhodl.com', NULL, 'feed', NULL, '2024-10-26 15:36:41', '2024-10-26 15:36:41'),
(13, 'The Street Crypto', 'en', 'thestreet.com', NULL, 'feed', NULL, '2024-10-26 15:36:41', '2024-10-26 15:36:41'),
(14, 'coinscreed.com', 'en', 'coinscreed.com', NULL, 'feed', NULL, '2024-10-26 15:43:30', '2024-10-26 15:43:30'),
(15, 'The Crypto Lark', 'en', 'youtube.com', NULL, 'media', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(16, 'The Coin Republic', 'en', 'thecoinrepublic.com', NULL, 'feed', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(17, 'U.Today', 'en', 'u.today', NULL, 'feed', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(18, 'Feed - Cryptopolitan.Com', 'en', 'cryptopolitan.com', NULL, 'feed', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(19, 'CoinJournal', 'en', 'coinjournal.net', NULL, 'feed', NULL, '2024-10-26 16:34:50', '2024-10-26 16:34:50'),
(20, 'Real-Crypto', 'en', 'youtube.com', NULL, 'media', NULL, '2024-10-27 06:37:44', '2024-10-27 06:37:44'),
(21, 'coinpaprika', 'en', 'coinpaprika.com', NULL, 'feed', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(22, 'Bitcoin - The Currency of the Internet', 'en', 'reddit.com', 'r/bitcoin', 'reddit', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(23, 'Finbold', 'en', 'finbold.com', NULL, 'feed', NULL, '2024-10-27 06:37:45', '2024-10-27 06:37:45'),
(24, 'Anchor', 'en', 'anchor.fm', NULL, 'media', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(25, 'Decrypt', 'en', 'decrypt.co', NULL, 'feed', NULL, '2024-10-27 08:07:47', '2024-10-27 08:07:47'),
(26, 'CryptoBriefing', 'en', 'cryptobriefing.com', NULL, 'feed', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(27, 'Stellar Reddit', 'en', 'reddit.com', 'r/stellar', 'reddit', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(28, 'AMBCrypto', 'en', 'ambcrypto.com', NULL, 'feed', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(29, 'En Cryptonomist', 'en', 'en.cryptonomist.ch', NULL, 'blog', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(30, 'CoinTelegraph', 'en', 'cointelegraph.com', NULL, 'feed', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(31, 'Feed - Cryptopotato.Com', 'en', 'cryptopotato.com', NULL, 'feed', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(32, 'Benzinga', 'en', 'feeds2.benzinga.com', NULL, 'feed', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14'),
(33, 'coincu', 'en', 'coincu.com', NULL, 'feed', NULL, '2024-10-27 08:27:14', '2024-10-27 08:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `source_news`
--

CREATE TABLE `source_news` (
  `id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `source_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `source_news`
--

INSERT INTO `source_news` (`id`, `news_id`, `source_id`, `created_at`, `updated_at`) VALUES
(23, 20098723, 11, NULL, NULL),
(24, 20099005, 7, NULL, NULL),
(25, 20098688, 12, NULL, NULL),
(26, 20098703, 13, NULL, NULL),
(27, 20098530, 8, NULL, NULL),
(28, 20098990, 6, NULL, NULL),
(29, 20098482, 1, NULL, NULL),
(30, 20098474, 2, NULL, NULL),
(31, 20098471, 3, NULL, NULL),
(32, 20098470, 1, NULL, NULL),
(33, 20098440, 4, NULL, NULL),
(34, 20098445, 5, NULL, NULL),
(35, 20098936, 6, NULL, NULL),
(36, 20098909, 6, NULL, NULL),
(37, 20098824, 6, NULL, NULL),
(38, 20098820, 6, NULL, NULL),
(39, 20099004, 7, NULL, NULL),
(40, 20098770, 6, NULL, NULL),
(41, 20098992, 8, NULL, NULL),
(42, 20099006, 7, NULL, NULL),
(43, 20099119, 15, NULL, NULL),
(44, 20098966, 14, NULL, NULL),
(45, 20099414, 6, NULL, NULL),
(46, 20099387, 6, NULL, NULL),
(47, 20098938, 5, NULL, NULL),
(48, 20098929, 14, NULL, NULL),
(49, 20098924, 1, NULL, NULL),
(50, 20098928, 16, NULL, NULL),
(51, 20098912, 17, NULL, NULL),
(52, 20098911, 18, NULL, NULL),
(53, 20098910, 3, NULL, NULL),
(54, 20098771, 14, NULL, NULL),
(55, 20098772, 8, NULL, NULL),
(56, 20098752, 4, NULL, NULL),
(57, 20098952, 9, NULL, NULL),
(58, 20098746, 19, NULL, NULL),
(59, 20098722, 14, NULL, NULL),
(60, 20098719, 10, NULL, NULL),
(73, 20100404, 6, NULL, NULL),
(74, 20100043, 10, NULL, NULL),
(75, 20100040, 2, NULL, NULL),
(76, 20100104, 18, NULL, NULL),
(77, 20100020, 4, NULL, NULL),
(78, 20100024, 8, NULL, NULL),
(79, 20100171, 9, NULL, NULL),
(80, 20100380, 6, NULL, NULL),
(161, 20100339, 18, NULL, NULL),
(162, 20100327, 2, NULL, NULL),
(163, 20100203, 2, NULL, NULL),
(164, 20100185, 8, NULL, NULL),
(165, 20100190, 24, NULL, NULL),
(166, 20100167, 12, NULL, NULL),
(167, 20100162, 12, NULL, NULL),
(168, 20100154, 25, NULL, NULL),
(169, 20100142, 20, NULL, NULL),
(170, 20100168, 17, NULL, NULL),
(171, 20100127, 21, NULL, NULL),
(172, 20100122, 21, NULL, NULL),
(173, 20100146, 17, NULL, NULL),
(174, 20100119, 3, NULL, NULL),
(175, 20100112, 21, NULL, NULL),
(176, 20100105, 21, NULL, NULL),
(177, 20101566, 22, NULL, NULL),
(178, 20100101, 23, NULL, NULL),
(179, 20100102, 21, NULL, NULL),
(180, 20100057, 21, NULL, NULL),
(181, 20101908, 10, NULL, NULL),
(182, 20101801, 8, NULL, NULL),
(183, 20101759, 26, NULL, NULL),
(184, 20101746, 12, NULL, NULL),
(185, 20101753, 27, NULL, NULL),
(186, 20101674, 28, NULL, NULL),
(187, 20101653, 8, NULL, NULL),
(188, 20101745, 29, NULL, NULL),
(189, 20101651, 30, NULL, NULL),
(190, 20101646, 5, NULL, NULL),
(191, 20101632, 31, NULL, NULL),
(192, 20101628, 22, NULL, NULL),
(193, 20101523, 8, NULL, NULL),
(194, 20101445, 26, NULL, NULL),
(195, 20101448, 32, NULL, NULL),
(196, 20101561, 22, NULL, NULL),
(197, 20059391, 20, NULL, NULL),
(198, 20101385, 5, NULL, NULL),
(199, 20101557, 22, NULL, NULL),
(200, 20101373, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `currency_news`
--
ALTER TABLE `currency_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sources_title_unique` (`title`);

--
-- Indexes for table `source_news`
--
ALTER TABLE `source_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `currency_news`
--
ALTER TABLE `currency_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20101909;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `source_news`
--
ALTER TABLE `source_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
