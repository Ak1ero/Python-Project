-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 03:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', '2025-04-05 23:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_reactions`
--

CREATE TABLE `comment_reactions` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_recipes`
--

CREATE TABLE `featured_recipes` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `featured_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `follower_id`, `followed_id`, `created_at`) VALUES
(4, 6, 8, '2025-04-21 17:47:45'),
(5, 6, 7, '2025-04-21 17:47:50'),
(6, 7, 8, '2025-05-14 00:06:50'),
(7, 7, 6, '2025-05-14 00:06:57'),
(8, 9, 8, '2025-05-14 00:33:00'),
(9, 9, 7, '2025-05-14 00:33:00'),
(10, 9, 6, '2025-05-14 00:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `notification_type` varchar(50) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(50) NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `notification_type`, `entity_id`, `entity_type`, `is_read`, `message`, `created_at`) VALUES
(1, 6, 7, 'recipe_like', 25, 'recipe', 0, '<strong>Aleonah  Reese</strong> liked your recipe <strong>asda</strong>', '2025-04-22 03:41:47'),
(2, 8, 6, 'recipe_like', 22, 'recipe', 0, '<strong>Jezell Nadon</strong> liked your recipe <strong>Paella</strong>', '2025-04-22 07:37:34'),
(3, 9, 8, 'recipe_like', 30, 'recipe', 0, '<strong>Kyla Ampo</strong> liked your recipe <strong>Chicken Curry</strong>', '2025-05-14 00:30:04'),
(4, 6, 7, 'recipe_like', 32, 'recipe', 0, '<strong>Aleonah  Reese</strong> liked your recipe <strong>Pancit Molo (Iloilo)</strong>', '2025-05-17 23:50:12'),
(5, 10, 7, 'recipe_like', 31, 'recipe', 0, '<strong>Aleonah  Reese</strong> liked your recipe <strong>Sisig (Pampanga)</strong>', '2025-05-17 23:50:13'),
(6, 9, 7, 'recipe_like', 30, 'recipe', 0, '<strong>Aleonah  Reese</strong> liked your recipe <strong>Chicken Curry</strong>', '2025-05-17 23:50:15'),
(7, 8, 7, 'recipe_like', 22, 'recipe', 0, '<strong>Aleonah  Reese</strong> liked your recipe <strong>Seafood Paella</strong>', '2025-05-17 23:50:16'),
(8, 7, 9, 'recipe_like', 33, 'recipe', 0, '<strong>Beverly Batisanan</strong> liked your recipe <strong>Beef Rendang</strong>', '2025-05-17 23:50:33'),
(9, 6, 9, 'recipe_like', 32, 'recipe', 0, '<strong>Beverly Batisanan</strong> liked your recipe <strong>Pancit Molo (Iloilo)</strong>', '2025-05-17 23:50:34'),
(10, 10, 9, 'recipe_like', 31, 'recipe', 0, '<strong>Beverly Batisanan</strong> liked your recipe <strong>Sisig (Pampanga)</strong>', '2025-05-17 23:50:36'),
(11, 8, 9, 'recipe_like', 22, 'recipe', 0, '<strong>Beverly Batisanan</strong> liked your recipe <strong>Seafood Paella</strong>', '2025-05-17 23:50:38'),
(12, 7, 9, 'recipe_like', 21, 'recipe', 0, '<strong>Beverly Batisanan</strong> liked your recipe <strong>Beef Bulgogi</strong>', '2025-05-17 23:50:40'),
(13, 7, 6, 'recipe_like', 33, 'recipe', 0, '<strong>Jezell Nadon</strong> liked your recipe <strong>Beef Rendang</strong>', '2025-05-18 01:23:39'),
(14, 10, 6, 'recipe_like', 31, 'recipe', 0, '<strong>Jezell Nadon</strong> liked your recipe <strong>Sisig (Pampanga)</strong>', '2025-05-18 01:23:42'),
(15, 9, 6, 'recipe_like', 30, 'recipe', 0, '<strong>Jezell Nadon</strong> liked your recipe <strong>Chicken Curry</strong>', '2025-05-18 01:23:44'),
(16, 7, 6, 'recipe_like', 21, 'recipe', 0, '<strong>Jezell Nadon</strong> liked your recipe <strong>Beef Bulgogi</strong>', '2025-05-18 01:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `prep_time` int(11) DEFAULT NULL,
  `cook_time` int(11) DEFAULT NULL,
  `servings` int(11) DEFAULT NULL,
  `ingredients` text NOT NULL,
  `instructions` text NOT NULL,
  `photo_path` text DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `cuisine_type` enum('International','Luzon','Visayas','Mindanao','Other') DEFAULT 'Other',
  `privacy` varchar(20) NOT NULL DEFAULT 'public',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes_count` int(11) DEFAULT 0,
  `comments_count` int(11) DEFAULT 0,
  `avg_rating` float DEFAULT 0,
  `ratings_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `title`, `description`, `prep_time`, `cook_time`, `servings`, `ingredients`, `instructions`, `photo_path`, `calories`, `cuisine_type`, `privacy`, `created_at`, `updated_at`, `likes_count`, `comments_count`, `avg_rating`, `ratings_count`) VALUES
(21, 7, 'Beef Bulgogi', 'Beef Bulgogi is a delicious Korean barbecue dish that consists of thinly sliced beef marinated in a flavorful mixture of soy sauce, sesame oil, garlic, and sugar. It’s typically cooked on a grill or in a pan and served with steamed rice and vegetables. The result is a juicy, tender, and aromatic beef dish that’s packed with flavor.', 30, 10, 4, '500g (1 lb) beef ribeye or sirloin, thinly sliced\r\n\r\n1/2 onion, thinly sliced\r\n\r\n2 green onions, chopped\r\n\r\n1 tablespoon sesame seeds (optional, for garnish)\r\n\r\n1 tablespoon vegetable oil (for cooking)\r\n\r\nFor the Marinade\r\n4 tablespoons soy sauce\r\n\r\n2 tablespoons brown sugar\r\n\r\n1 tablespoon honey (optional, for extra sweetness)\r\n\r\n2 tablespoons sesame oil\r\n\r\n2 garlic cloves, minced\r\n\r\n1 teaspoon grated ginger\r\n\r\n1/4 teaspoon black pepper\r\n\r\n1/2 Asian pear or apple, grated (helps tenderize the meat)', 'In a bowl, combine all the marinade ingredients: soy sauce, brown sugar, honey, sesame oil, garlic, ginger, black pepper, and grated pear or apple.\r\n\r\nAdd the sliced beef to the marinade and mix well to coat evenly.\r\n\r\nCover and refrigerate for at least 30 minutes, or preferably 2–4 hours for better flavor.\r\n\r\nHeat the vegetable oil in a large skillet or grill pan over medium-high heat.\r\n\r\nAdd the marinated beef and sliced onion. Cook for 4–6 minutes, stirring occasionally, until the beef is fully cooked and caramelized.\r\n\r\nToss in the chopped green onions in the last minute of cooking.\r\n\r\nTransfer to a serving plate, sprinkle with sesame seeds if desired.\r\n\r\nServe hot with steamed rice and side dishes (banchan).', 'uploads/recipe_photos/ce5e69c0593a4092bed90a8ce4af0f57_istockphoto-1460479014-612x612.jpg', 400, 'International', 'public', '2025-04-20 18:06:56', '2025-05-17 23:52:07', 2, 1, 4.3333, 3),
(22, 8, 'Seafood Paella', 'Paella is a traditional Spanish rice dish originally from the region of Valencia. It’s a one-pan meal, typically made with a variety of proteins like seafood, chicken, and rabbit, combined with aromatic spices such as saffron and paprika. Paella is famous for its vibrant color, rich flavors, and the delicious crispy rice at the bottom called “socarrat.”', 20, 45, 4, '2 tablespoons olive oil\r\n\r\n1 onion, finely chopped\r\n\r\n3 garlic cloves, minced\r\n\r\n1 red bell pepper, sliced\r\n\r\n1 teaspoon smoked paprika\r\n\r\n1/2 teaspoon saffron threads (soaked in 2 tablespoons warm water)\r\n\r\n2 cups paella rice (e.g., Bomba or Arborio)\r\n\r\n4 cups chicken or seafood stock (warm)\r\n\r\n1/2 cup dry white wine (optional)\r\n\r\n1 cup chopped tomatoes (fresh or canned)\r\n\r\n200g (7 oz) mussels, cleaned\r\n\r\n200g (7 oz) clams, cleaned\r\n\r\n200g (7 oz) shrimp or prawns, peeled and deveined\r\n\r\n150g (5 oz) squid, cleaned and sliced into rings\r\n\r\nSalt and pepper to taste\r\n\r\nLemon wedges and fresh parsley for garnish', 'Heat olive oil in a large paella pan or wide skillet over medium heat.\r\n\r\nSauté the onion, garlic, and red bell pepper until soft and fragrant, about 5–7 minutes.\r\n\r\nStir in the smoked paprika and chopped tomatoes. Cook for another 2–3 minutes.\r\n\r\nAdd the rice and stir to coat it well with the tomato mixture.\r\n\r\nPour in the white wine (if using) and let it simmer for 1–2 minutes.\r\n\r\nAdd the saffron with its soaking water, then pour in the warm stock. Stir gently to combine.\r\n\r\nBring to a gentle boil, then reduce heat to low and simmer uncovered for 10 minutes. Do not stir.\r\n\r\nArrange the shrimp, mussels, clams, and squid over the rice.\r\n\r\nCover with a lid or foil and cook for another 10–15 minutes, until the seafood is cooked and the rice is tender.\r\n\r\nRemove from heat and let the paella rest for 5 minutes before serving.\r\n\r\nGarnish with chopped parsley and lemon wedges. Serve hot.', 'uploads/recipe_photos/ba81873201c3457b8dd31276ab5d8c1f_images.jpg', 600, 'International', 'public', '2025-04-20 18:11:27', '2025-05-17 23:51:06', 3, 0, 5, 2),
(30, 9, 'Chicken Curry', 'A rich and flavorful chicken curry made with tender chicken pieces simmered in a spiced tomato and coconut milk-based sauce. Perfect with rice or naan.', 15, 30, 4, '2 tablespoons vegetable oil\r\n,\r\n,1 large onion, finely chopped\r\n,\r\n,3 garlic cloves, minced\r\n,\r\n,1 tablespoon ginger, grated\r\n,\r\n,500g (1 lb) boneless chicken thighs or breasts, cut into bite-sized pieces\r\n,\r\n,2 tablespoons curry powder\r\n,\r\n,1 teaspoon ground cumin\r\n,\r\n,1/2 teaspoon turmeric\r\n,\r\n,1/2 teaspoon chili powder (optional for heat)\r\n,\r\n,1 teaspoon salt (adjust to taste)\r\n,\r\n,1/2 teaspoon ground black pepper\r\n,\r\n,1 cup canned diced tomatoes\r\n,\r\n,1 cup coconut milk\r\n,\r\n,1/2 cup water or chicken broth (as needed for consistency)\r\n,\r\n,Fresh cilantro for garnish', 'Heat oil in a large skillet or pot over medium heat.\r\n,\r\n,Add the chopped onions and sauté until golden brown, about 5–7 minutes.\r\n,\r\n,Stir in garlic and ginger and cook for 1–2 minutes until fragrant.\r\n,\r\n,Add the chicken pieces and cook until lightly browned on all sides.\r\n,\r\n,Sprinkle in curry powder, cumin, turmeric, chili powder, salt, and pepper. Stir well to coat the chicken with the spices.\r\n,\r\n,Pour in the diced tomatoes and coconut milk. Mix thoroughly.\r\n,\r\n,Bring to a gentle boil, then reduce the heat to low and cover. Simmer for 20–25 minutes, stirring occasionally.\r\n,\r\n,If the curry becomes too thick, add water or chicken broth to adjust the consistency.\r\n,\r\n,Taste and adjust seasoning if needed.\r\n,\r\n,Garnish with chopped cilantro and serve hot with rice or naan.\r\n,\r\n,', 'uploads/recipe_photos/9eb1f9c13add4fd8a55ef73f8a7b0471_120be357fc8541587d05dcfcfa347e1942684287-2500x1500.jpg', 350, 'International', 'public', '2025-05-14 00:27:23', '2025-05-17 23:51:59', 2, 2, 3.3333, 3),
(31, 10, 'Sisig (Pampanga)', 'Sisig is a classic Kapampangan dish made from parts of a pig’s head and liver, seasoned with calamansi, onions, and chili peppers, then served on a sizzling plate. Originally a way to avoid food waste, it has evolved into a celebrated and flavorful delicacy in Filipino cuisine.\r\n\r\n', 20, 40, 4, '1 lb pig\'s face (cheek, ears, jowls) or pork belly (boiled and grilled or broiled)\r\n\r\n½ cup chicken liver (grilled or pan-fried, then mashed)\r\n\r\n1 medium red onion, finely chopped\r\n\r\n2 tablespoons calamansi juice (or lemon/lime juice)\r\n\r\n2 tablespoons soy sauce\r\n\r\n1 tablespoon vinegar\r\n\r\n1–2 pieces Thai chili (siling labuyo), chopped (adjust to heat preference)\r\n\r\n1 egg (optional, for sizzling version)\r\n\r\n1 tablespoon mayonnaise (optional, for creamy style)\r\n\r\nSalt and pepper to taste\r\n\r\nButter or oil for sizzling plate', 'Boil and Grill:\r\n\r\nBoil the pork face or belly until tender (about 30 minutes).\r\n\r\nLet it cool, then grill or broil until crispy. Chop into small, bite-sized pieces.\r\n\r\nCook Chicken Liver:\r\n\r\nGrill or fry chicken liver until fully cooked. Mash or finely chop.\r\n\r\nMix Flavors:\r\n\r\nIn a bowl, combine chopped pork, mashed liver, soy sauce, vinegar, calamansi juice, onions, and chili. Add mayonnaise if using. Season with salt and pepper.\r\n\r\nSizzle:\r\n\r\nHeat a sizzling plate (or cast iron skillet) with butter or oil. Add the sisig mixture and let it crackle.\r\n\r\nOptional: crack an egg on top and mix in while hot.\r\n\r\nServe Immediately:\r\n\r\nServe hot with rice, extra calamansi, and chili on the side.\r\n\r\n', 'uploads/recipe_photos/9ddf805e7f6d4d6abec5e69843806daf_sisig.jpg', 450, 'Luzon', 'public', '2025-05-17 23:43:49', '2025-05-17 23:51:56', 2, 0, 4, 3),
(32, 6, 'Pancit Molo (Iloilo)', 'Pancit Molo is a Filipino soup dish with Chinese influence, made of wonton dumplings filled with ground pork, simmered in a rich chicken broth. Despite the name, it doesn’t use noodles — the wonton wrappers substitute as pasta. It\'s a warm, savory favorite especially in Iloilo households.\r\n\r\n', 30, 30, 6, 'For the Molo Dumplings:\r\n\r\n½ lb ground pork\r\n\r\n1 small onion, minced\r\n\r\n2 cloves garlic, minced\r\n\r\n1 tablespoon soy sauce\r\n\r\nSalt and pepper to taste\r\n\r\n25–30 pieces wonton wrappers\r\n\r\nFor the Soup:\r\n\r\n1 tablespoon cooking oil\r\n\r\n4 cloves garlic, minced\r\n\r\n1 small onion, chopped\r\n\r\n4–5 cups chicken broth (homemade or store-bought)\r\n\r\n1 cup shredded cooked chicken (optional)\r\n\r\n2 tablespoons fish sauce (patis), or to taste\r\n\r\nChopped green onions or scallions (for garnish)\r\n\r\nToasted garlic (optional garnish)', '1. Make the Dumpling Filling:\r\nIn a bowl, mix ground pork, minced onion, garlic, soy sauce, salt, and pepper.\r\n\r\n2. Assemble the Dumplings:\r\nPlace 1 teaspoon of filling in the center of each wonton wrapper.\r\n\r\nWet the edges with water, fold diagonally into a triangle, and seal tightly. Fold the two corners together to form a \"molo\" shape (optional).\r\n\r\n3. Prepare the Soup Base:\r\nHeat oil in a pot. Sauté garlic and onion until fragrant.\r\n\r\nAdd chicken broth and bring to a boil.\r\n\r\n4. Cook the Dumplings:\r\nGently add the dumplings to the boiling broth. Simmer for 10–15 minutes or until the dumplings float and are cooked through.\r\n\r\n5. Add Shredded Chicken (optional):\r\nMix in the cooked shredded chicken and fish sauce to season. Simmer for another 2–3 minutes.\r\n\r\n6. Garnish and Serve:\r\nLadle into bowls. Top with chopped scallions and toasted garlic.\r\n\r\nServe hot, often with a side of bread or rice.\r\n\r\n', 'uploads/recipe_photos/1dd7a86c76514b1fa0dd44729ea9de75_pancit.jpg', 280, 'Visayas', 'public', '2025-05-17 23:47:14', '2025-05-17 23:51:53', 2, 0, 3, 2),
(33, 7, 'Beef Rendang', 'Beef Rendang is a slow-cooked dry curry dish where beef is simmered in coconut milk and a blend of spices until tender and deeply infused with rich, complex flavors. Originating from Mindanao’s Muslim communities, this dish reflects strong Southeast Asian influences with a uniquely Filipino twist.\r\n\r\n', 20, 120, 6, '2 lbs beef chuck, cut into cubes\r\n\r\n2 cups coconut milk (thick)\r\n\r\n2 tablespoons toasted grated coconut (optional, for texture)\r\n\r\n4 tablespoons cooking oil\r\n\r\n2 stalks lemongrass, pounded and tied\r\n\r\n5 kaffir lime leaves (optional)\r\n\r\n1 cinnamon stick\r\n\r\n2 teaspoons tamarind paste or 1 tablespoon vinegar\r\n\r\nSalt and pepper to taste\r\n\r\nSpice Paste (blend into a smooth paste):\r\n\r\n8 cloves garlic\r\n\r\n1 large onion, chopped\r\n\r\n3 inches fresh ginger, peeled\r\n\r\n3 inches fresh turmeric or 1 teaspoon turmeric powder\r\n\r\n5 dried red chilies (soaked to soften) or fresh long red chilies\r\n\r\n2 teaspoons coriander seeds (toasted)\r\n\r\n1 teaspoon cumin seeds (toasted)\r\n\r\n', 'Prepare the Spice Paste:\r\n\r\nGrind garlic, onion, ginger, turmeric, chilies, coriander, and cumin into a smooth paste using a food processor or mortar and pestle.\r\n\r\nSauté the Paste:\r\n\r\nHeat oil in a heavy pot or deep pan. Sauté the spice paste until fragrant and slightly darkened (about 5–7 minutes).\r\n\r\nAdd Lemongrass and Cinnamon:\r\n\r\nAdd lemongrass stalks, cinnamon stick, and kaffir lime leaves. Stir to combine.\r\n\r\nCook the Beef:\r\n\r\nAdd beef cubes and sear until lightly browned, coating the meat in the spice paste.\r\n\r\nAdd Coconut Milk and Tamarind:\r\n\r\nPour in coconut milk and tamarind paste (or vinegar). Stir well.\r\n\r\nSimmer Slowly:\r\n\r\nReduce heat to low and simmer uncovered for 2–3 hours, stirring occasionally to prevent sticking. The sauce will thicken and coat the beef.\r\n\r\nAdjust Seasoning:\r\n\r\nSeason with salt and pepper to taste. Add toasted grated coconut if using for extra texture and flavor.\r\n\r\nServe:\r\n\r\nServe hot with steamed rice or traditional Mindanao rice dishes.\r\n\r\n', 'uploads/recipe_photos/e6cac1545fea49eb921afd189ed5348f_beef.jpg', 450, 'Mindanao', 'public', '2025-05-17 23:50:07', '2025-05-18 01:24:05', 1, 1, 4.6667, 3);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_collections`
--

CREATE TABLE `recipe_collections` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_comments`
--

CREATE TABLE `recipe_comments` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes_count` int(11) DEFAULT 0,
  `reactions_count` int(11) DEFAULT 0,
  `replies_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_comments`
--

INSERT INTO `recipe_comments` (`id`, `recipe_id`, `user_id`, `parent_comment_id`, `comment_text`, `created_at`, `updated_at`, `likes_count`, `reactions_count`, `replies_count`) VALUES
(13, 30, 8, NULL, 'Yay yay HAHAHAHAHAHAHAHAH', '2025-05-14 00:30:19', '2025-05-14 00:30:19', 0, 0, 0),
(14, 21, 9, NULL, 'asdasd', '2025-05-17 17:02:37', '2025-05-17 17:02:37', 0, 0, 0),
(15, 30, 6, NULL, 'aaa', '2025-05-17 23:17:00', '2025-05-17 23:17:00', 0, 0, 0),
(16, 33, 6, NULL, 'WOW WOW naay sud.an', '2025-05-18 01:24:05', '2025-05-18 01:24:05', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_likes`
--

CREATE TABLE `recipe_likes` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_likes`
--

INSERT INTO `recipe_likes` (`id`, `recipe_id`, `user_id`, `created_at`) VALUES
(31, 21, 7, '2025-04-20 18:08:26'),
(37, 22, 6, '2025-04-22 07:37:34'),
(39, 30, 8, '2025-05-14 00:30:04'),
(40, 32, 7, '2025-05-17 23:50:12'),
(41, 31, 7, '2025-05-17 23:50:13'),
(42, 30, 7, '2025-05-17 23:50:15'),
(43, 22, 7, '2025-05-17 23:50:16'),
(44, 33, 9, '2025-05-17 23:50:33'),
(45, 32, 9, '2025-05-17 23:50:34'),
(46, 31, 9, '2025-05-17 23:50:36'),
(47, 22, 9, '2025-05-17 23:50:38'),
(48, 21, 9, '2025-05-17 23:50:40'),
(49, 33, 6, '2025-05-18 01:23:39'),
(50, 31, 6, '2025-05-18 01:23:42'),
(51, 30, 6, '2025-05-18 01:23:44'),
(52, 21, 6, '2025-05-18 01:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_photos`
--

CREATE TABLE `recipe_photos` (
  `id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `photo_path` text NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ratings`
--

CREATE TABLE `recipe_ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_ratings`
--

INSERT INTO `recipe_ratings` (`id`, `user_id`, `recipe_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 9, 30, 3, '', '2025-05-17 23:09:24', '2025-05-17 23:09:24'),
(2, 6, 30, 2, '', '2025-05-17 23:09:50', '2025-05-17 23:09:50'),
(3, 6, 22, 5, 'WOW', '2025-05-17 23:16:24', '2025-05-17 23:16:24'),
(4, 9, 33, 4, '', '2025-05-17 23:50:47', '2025-05-17 23:50:47'),
(5, 9, 32, 3, '', '2025-05-17 23:50:51', '2025-05-17 23:50:51'),
(6, 9, 31, 5, '', '2025-05-17 23:50:53', '2025-05-17 23:50:53'),
(7, 9, 22, 5, '', '2025-05-17 23:50:56', '2025-05-17 23:50:56'),
(8, 9, 21, 5, '', '2025-05-17 23:50:59', '2025-05-17 23:50:59'),
(9, 6, 33, 5, '', '2025-05-17 23:51:10', '2025-05-17 23:51:10'),
(10, 6, 31, 3, '', '2025-05-17 23:51:16', '2025-05-17 23:51:16'),
(11, 6, 21, 4, '', '2025-05-17 23:51:28', '2025-05-17 23:51:28'),
(12, 8, 33, 5, '', '2025-05-17 23:51:49', '2025-05-17 23:51:49'),
(13, 8, 32, 3, '', '2025-05-17 23:51:53', '2025-05-17 23:51:53'),
(14, 8, 31, 4, '', '2025-05-17 23:51:56', '2025-05-17 23:51:56'),
(15, 8, 30, 5, '', '2025-05-17 23:51:59', '2025-05-17 23:51:59'),
(16, 8, 21, 4, '', '2025-05-17 23:52:07', '2025-05-17 23:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `saved_recipes`
--

CREATE TABLE `saved_recipes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_recipes`
--

INSERT INTO `saved_recipes` (`id`, `user_id`, `recipe_id`, `created_at`) VALUES
(12, 6, 21, '2025-04-24 00:20:56'),
(14, 6, 22, '2025-04-24 01:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_pic` varchar(255) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `profile_visibility` enum('public','followers','private') DEFAULT 'public',
  `comment_settings` enum('allowed','followers','disabled') DEFAULT 'allowed',
  `show_online_status` tinyint(1) DEFAULT 1,
  `show_activity_status` tinyint(1) DEFAULT 1,
  `allow_tagging` tinyint(1) DEFAULT 1,
  `email_comments` tinyint(1) DEFAULT 1,
  `email_likes` tinyint(1) DEFAULT 1,
  `email_followers` tinyint(1) DEFAULT 1,
  `email_messages` tinyint(1) DEFAULT 0,
  `email_newsletter` tinyint(1) DEFAULT 1,
  `push_comments` tinyint(1) DEFAULT 1,
  `push_likes` tinyint(1) DEFAULT 1,
  `push_followers` tinyint(1) DEFAULT 1,
  `push_messages` tinyint(1) DEFAULT 1,
  `is_suspended` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `birthday`, `password`, `created_at`, `profile_pic`, `display_name`, `bio`, `location`, `website`, `profile_visibility`, `comment_settings`, `show_online_status`, `show_activity_status`, `allow_tagging`, `email_comments`, `email_likes`, `email_followers`, `email_messages`, `email_newsletter`, `push_comments`, `push_likes`, `push_followers`, `push_messages`, `is_suspended`) VALUES
(6, 'Jezell', 'Nadon', 'mike@gmail.com', '09123123321', '2025-04-24', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2025-04-06 07:01:18', 'uploads/profile_photos/user_6_1745293365_475023943_992811476026510_8124974231880712904_n.jpg', 'jezellnadon', 'Heeee', 'Banga, South Cotabato', NULL, 'public', 'allowed', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
(7, 'Aleonah ', 'Reese', 'aleo@gmail.com', '09621237489', '2006-07-18', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2025-04-20 15:51:09', 'uploads/profile_photos/user_7_1745172035_profile-icon-design-free-vector.jpg', 'aleonah reese', NULL, NULL, NULL, 'public', 'allowed', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
(8, 'Kyla', 'Ampo', 'kyla@gmail.com', '09123566127', '2004-12-08', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2025-04-20 18:10:43', 'uploads/profile_photos/user_8_1747500871_a.jpg', 'kylaampo', NULL, NULL, NULL, 'public', 'allowed', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
(9, 'Beverly', 'Batisanan', 'beverly@gmail.com', '0921489449928', '2004-03-04', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2025-05-14 00:17:00', 'uploads/profile_photos/user_9_1747525094_493226856_122205626336134681_2738880263255647549_n.jpg', 'beverlybatisanan', 'Maganda lang! bakit ba? ', 'Tupi, South Cotabato', NULL, 'public', 'allowed', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
(10, 'Emil Jan', 'Abordo', 'bords@gmail.com', '09510245102', '2001-07-17', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '2025-05-17 23:39:25', 'uploads/profile_photos/user_5408bcaa926741848ece639cfa68adc5_bords.jpg', 'emil janabordo', NULL, NULL, NULL, 'public', 'allowed', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_comment_like` (`comment_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comment_reactions`
--
ALTER TABLE `comment_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_reaction` (`comment_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `featured_recipes`
--
ALTER TABLE `featured_recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_featured` (`recipe_id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_follow` (`follower_id`,`followed_id`),
  ADD KEY `followed_id` (`followed_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_collections`
--
ALTER TABLE `recipe_collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_collection` (`user_id`,`recipe_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe_comments`
--
ALTER TABLE `recipe_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_comment_id` (`parent_comment_id`);

--
-- Indexes for table `recipe_likes`
--
ALTER TABLE `recipe_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipe_id` (`recipe_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe_photos`
--
ALTER TABLE `recipe_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipe_ratings`
--
ALTER TABLE `recipe_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`recipe_id`),
  ADD KEY `idx_recipe_ratings_recipe_id` (`recipe_id`),
  ADD KEY `idx_recipe_ratings_user_id` (`user_id`);

--
-- Indexes for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_save` (`user_id`,`recipe_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment_reactions`
--
ALTER TABLE `comment_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `featured_recipes`
--
ALTER TABLE `featured_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `recipe_collections`
--
ALTER TABLE `recipe_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_comments`
--
ALTER TABLE `recipe_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `recipe_likes`
--
ALTER TABLE `recipe_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `recipe_photos`
--
ALTER TABLE `recipe_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipe_ratings`
--
ALTER TABLE `recipe_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `comment_likes_comment_fk` FOREIGN KEY (`comment_id`) REFERENCES `recipe_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_likes_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_reactions`
--
ALTER TABLE `comment_reactions`
  ADD CONSTRAINT `comment_reactions_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `recipe_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_reactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `featured_recipes`
--
ALTER TABLE `featured_recipes`
  ADD CONSTRAINT `featured_recipes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`followed_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `recipe_collections`
--
ALTER TABLE `recipe_collections`
  ADD CONSTRAINT `recipe_collections_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_collections_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_comments`
--
ALTER TABLE `recipe_comments`
  ADD CONSTRAINT `recipe_comments_parent_fk` FOREIGN KEY (`parent_comment_id`) REFERENCES `recipe_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_comments_recipe_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_comments_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_likes`
--
ALTER TABLE `recipe_likes`
  ADD CONSTRAINT `recipe_likes_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_photos`
--
ALTER TABLE `recipe_photos`
  ADD CONSTRAINT `recipe_photos_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_ratings`
--
ALTER TABLE `recipe_ratings`
  ADD CONSTRAINT `recipe_ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_ratings_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  ADD CONSTRAINT `saved_recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_recipes_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
