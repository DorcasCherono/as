# SQL Manager 2010 Lite for MySQL 4.6.0.5
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : blankdb


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

SET FOREIGN_KEY_CHECKS=0;

#
# Structure for the `x_accounts` table : 
#

DROP TABLE IF EXISTS `x_accounts`;

CREATE TABLE `x_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_roles` table : 
#

DROP TABLE IF EXISTS `x_roles`;

CREATE TABLE `x_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_branches` table : 
#

DROP TABLE IF EXISTS `x_branches`;

CREATE TABLE `x_branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_users` table : 
#

DROP TABLE IF EXISTS `x_users`;

CREATE TABLE `x_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'admin',
  `is_active` tinyint(1) DEFAULT NULL,
  `branch_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `username` (`username`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `x_users_fk` FOREIGN KEY (`branch_id`) REFERENCES `x_branches` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_assigned_roles` table : 
#

DROP TABLE IF EXISTS `x_assigned_roles`;

CREATE TABLE `x_assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `x_roles` (`id`),
  CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `x_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_audits` table : 
#

DROP TABLE IF EXISTS `x_audits`;

CREATE TABLE `x_audits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_autoprocesses` table : 
#

DROP TABLE IF EXISTS `x_autoprocesses`;

CREATE TABLE `x_autoprocesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_categories` table : 
#

DROP TABLE IF EXISTS `x_categories`;

CREATE TABLE `x_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_charges` table : 
#

DROP TABLE IF EXISTS `x_charges`;

CREATE TABLE `x_charges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calculation_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage_of` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `fee` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_loanproducts` table : 
#

DROP TABLE IF EXISTS `x_loanproducts`;

CREATE TABLE `x_loanproducts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interest_rate` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `amortization` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'EI',
  `period` int(11) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_charge_loanproduct` table : 
#

DROP TABLE IF EXISTS `x_charge_loanproduct`;

CREATE TABLE `x_charge_loanproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charge_id` int(10) unsigned NOT NULL,
  `loanproduct_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loancharges_charge_id_foreign` (`charge_id`),
  KEY `loancharges_loanproduct_id_foreign` (`loanproduct_id`),
  CONSTRAINT `loancharges_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `x_charges` (`id`),
  CONSTRAINT `loancharges_loanproduct_id_foreign` FOREIGN KEY (`loanproduct_id`) REFERENCES `x_loanproducts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_savingproducts` table : 
#

DROP TABLE IF EXISTS `x_savingproducts`;

CREATE TABLE `x_savingproducts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opening_balance` double NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_charge_savingproduct` table : 
#

DROP TABLE IF EXISTS `x_charge_savingproduct`;

CREATE TABLE `x_charge_savingproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charge_id` int(10) unsigned NOT NULL,
  `savingproduct_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `savingcharges_charge_id_foreign` (`charge_id`),
  KEY `savingcharges_savingproduct_id_foreign` (`savingproduct_id`),
  CONSTRAINT `savingcharges_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `x_charges` (`id`),
  CONSTRAINT `savingcharges_savingproduct_id_foreign` FOREIGN KEY (`savingproduct_id`) REFERENCES `x_savingproducts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_currencies` table : 
#

DROP TABLE IF EXISTS `x_currencies`;

CREATE TABLE `x_currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_groups` table : 
#

DROP TABLE IF EXISTS `x_groups`;

CREATE TABLE `x_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_journals` table : 
#

DROP TABLE IF EXISTS `x_journals`;

CREATE TABLE `x_journals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `trans_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `amount` double NOT NULL,
  `initiated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `void` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_account_id_foreign` (`account_id`),
  CONSTRAINT `journals_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `x_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_members` table : 
#

DROP TABLE IF EXISTS `x_members`;

CREATE TABLE `x_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `membership_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default_photo.png',
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_number` bigint(20) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `group_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `monthly_remittance_amount` double(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) DEFAULT '1',
  `is_css_active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `membership_no` (`membership_no`),
  KEY `members_group_id_foreign` (`group_id`),
  KEY `members_branch_id_foreign` (`branch_id`),
  CONSTRAINT `members_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `x_branches` (`id`),
  CONSTRAINT `members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `x_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=909 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_kins` table : 
#

DROP TABLE IF EXISTS `x_kins`;

CREATE TABLE `x_kins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goodwill` double DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `kins_member_id_foreign` (`member_id`),
  CONSTRAINT `kins_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `x_members` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_loanaccounts` table : 
#

DROP TABLE IF EXISTS `x_loanaccounts`;

CREATE TABLE `x_loanaccounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `loanproduct_id` int(10) unsigned NOT NULL,
  `is_new_application` tinyint(1) NOT NULL DEFAULT '1',
  `application_date` date NOT NULL,
  `amount_applied` double NOT NULL,
  `interest_rate` double NOT NULL,
  `period` int(11) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `date_approved` date DEFAULT NULL,
  `amount_approved` double DEFAULT NULL,
  `is_rejected` tinyint(1) NOT NULL DEFAULT '0',
  `rejection_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_amended` tinyint(1) NOT NULL DEFAULT '0',
  `date_amended` date DEFAULT NULL,
  `is_disbursed` tinyint(1) NOT NULL DEFAULT '0',
  `amount_disbursed` double DEFAULT NULL,
  `date_disbursed` date DEFAULT NULL,
  `repayment_start_date` date DEFAULT NULL,
  `is_matured` tinyint(1) NOT NULL DEFAULT '0',
  `is_written_off` tinyint(1) NOT NULL DEFAULT '0',
  `is_defaulted` tinyint(1) NOT NULL DEFAULT '0',
  `is_overpaid` tinyint(1) NOT NULL DEFAULT '0',
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `repayment_duration` int(11) DEFAULT NULL,
  `is_top_up` tinyint(1) DEFAULT '0',
  `top_up_amount` double(15,3) DEFAULT '0.000',
  `loan_purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top_up_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loanaccounts_member_id_foreign` (`member_id`),
  KEY `loanaccounts_loanproduct_id_foreign` (`loanproduct_id`),
  CONSTRAINT `loanaccounts_loanproduct_id_foreign` FOREIGN KEY (`loanproduct_id`) REFERENCES `x_loanproducts` (`id`),
  CONSTRAINT `loanaccounts_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `x_members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_loanguarantors` table : 
#

DROP TABLE IF EXISTS `x_loanguarantors`;

CREATE TABLE `x_loanguarantors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `loanaccount_id` int(10) unsigned NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanguarantors_member_id_foreign` (`member_id`),
  KEY `loanguarantors_loanaccount_id_foreign` (`loanaccount_id`),
  CONSTRAINT `loanguarantors_loanaccount_id_foreign` FOREIGN KEY (`loanaccount_id`) REFERENCES `x_loanaccounts` (`id`),
  CONSTRAINT `loanguarantors_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `x_members` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_loanpostings` table : 
#

DROP TABLE IF EXISTS `x_loanpostings`;

CREATE TABLE `x_loanpostings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanproduct_id` int(10) unsigned NOT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debit_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanpostings_loanproduct_id_foreign` (`loanproduct_id`),
  CONSTRAINT `loanpostings_loanproduct_id_foreign` FOREIGN KEY (`loanproduct_id`) REFERENCES `x_loanproducts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_loanrepayments` table : 
#

DROP TABLE IF EXISTS `x_loanrepayments`;

CREATE TABLE `x_loanrepayments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanaccount_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `principal_paid` double(12,2) NOT NULL DEFAULT '0.00',
  `interest_paid` double(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loanrepayments_loanaccount_id_foreign` (`loanaccount_id`),
  CONSTRAINT `loanrepayments_loanaccount_id_foreign` FOREIGN KEY (`loanaccount_id`) REFERENCES `x_loanaccounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2984 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_loantransactions` table : 
#

DROP TABLE IF EXISTS `x_loantransactions`;

CREATE TABLE `x_loantransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanaccount_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `loantransactions_loanaccount_id_foreign` (`loanaccount_id`),
  CONSTRAINT `loantransactions_loanaccount_id_foreign` FOREIGN KEY (`loanaccount_id`) REFERENCES `x_loanaccounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=689 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_migrations` table : 
#

DROP TABLE IF EXISTS `x_migrations`;

CREATE TABLE `x_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_vendors` table : 
#

DROP TABLE IF EXISTS `x_vendors`;

CREATE TABLE `x_vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_products` table : 
#

DROP TABLE IF EXISTS `x_products`;

CREATE TABLE `x_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_vendor_id_index` (`vendor_id`),
  CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `x_vendors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_orders` table : 
#

DROP TABLE IF EXISTS `x_orders`;

CREATE TABLE `x_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_date` date NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sacco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orders_product_id_index` (`product_id`),
  CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `x_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_organizations` table : 
#

DROP TABLE IF EXISTS `x_organizations`;

CREATE TABLE `x_organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'XARA CBS',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `license_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'evaluation',
  `license_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licensed` bigint(20) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_password_reminders` table : 
#

DROP TABLE IF EXISTS `x_password_reminders`;

CREATE TABLE `x_password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_permissions` table : 
#

DROP TABLE IF EXISTS `x_permissions`;

CREATE TABLE `x_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_permission_role` table : 
#

DROP TABLE IF EXISTS `x_permission_role`;

CREATE TABLE `x_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `x_permissions` (`id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `x_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_savingaccounts` table : 
#

DROP TABLE IF EXISTS `x_savingaccounts`;

CREATE TABLE `x_savingaccounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `savingproduct_id` int(10) unsigned NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `savingaccounts_member_id_foreign` (`member_id`),
  KEY `x_savingaccounts_fk` (`savingproduct_id`),
  CONSTRAINT `savingaccounts_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `x_members` (`id`),
  CONSTRAINT `x_savingaccounts_fk` FOREIGN KEY (`savingproduct_id`) REFERENCES `x_savingproducts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_savingpostings` table : 
#

DROP TABLE IF EXISTS `x_savingpostings`;

CREATE TABLE `x_savingpostings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savingproduct_id` int(10) unsigned NOT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debit_account` int(11) NOT NULL,
  `credit_account` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `savingpostings_savingproduct_id_foreign` (`savingproduct_id`),
  CONSTRAINT `savingpostings_savingproduct_id_foreign` FOREIGN KEY (`savingproduct_id`) REFERENCES `x_savingproducts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_savingtransactions` table : 
#

DROP TABLE IF EXISTS `x_savingtransactions`;

CREATE TABLE `x_savingtransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `savingaccount_id` int(10) unsigned NOT NULL,
  `amount` double(12,2) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transacted_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `savingtransactions_savingaccount_id_foreign` (`savingaccount_id`),
  CONSTRAINT `savingtransactions_savingaccount_id_foreign` FOREIGN KEY (`savingaccount_id`) REFERENCES `x_savingaccounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_shareaccounts` table : 
#

DROP TABLE IF EXISTS `x_shareaccounts`;

CREATE TABLE `x_shareaccounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `shareaccounts_member_id_foreign` (`member_id`),
  CONSTRAINT `shareaccounts_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `x_members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_shares` table : 
#

DROP TABLE IF EXISTS `x_shares`;

CREATE TABLE `x_shares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL DEFAULT '0',
  `transfer_charge` double NOT NULL DEFAULT '0',
  `charged_on` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'donor',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_sharetransactions` table : 
#

DROP TABLE IF EXISTS `x_sharetransactions`;

CREATE TABLE `x_sharetransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `shareaccount_id` int(10) unsigned NOT NULL,
  `trans_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `sharetransactions_shareaccount_id_foreign` (`shareaccount_id`),
  CONSTRAINT `sharetransactions_shareaccount_id_foreign` FOREIGN KEY (`shareaccount_id`) REFERENCES `x_shareaccounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for the `x_user_role` table : 
#

DROP TABLE IF EXISTS `x_user_role`;

CREATE TABLE `x_user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `x_user_role_fk1` (`role_id`),
  CONSTRAINT `x_user_role_fk` FOREIGN KEY (`user_id`) REFERENCES `x_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `x_user_role_fk1` FOREIGN KEY (`role_id`) REFERENCES `x_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for the `x_branches` table  (LIMIT 0,500)
#

INSERT INTO `x_branches` (`id`, `name`, `created_at`, `updated_at`) VALUES 
  (3,'Head Office','2015-11-20 13:57:44','2015-11-20 13:57:44'),
  (4,'Head Office','2015-11-20 13:59:19','2015-11-20 13:59:19');
COMMIT;

#
# Data for the `x_currencies` table  (LIMIT 0,500)
#

INSERT INTO `x_currencies` (`id`, `name`, `shortname`, `created_at`, `updated_at`) VALUES 
  (2,'Kenyan Shillings','KES','2015-11-20 13:57:44','2015-11-20 13:57:44'),
  (3,'Kenyan Shillings','KES','2015-11-20 13:59:19','2015-11-20 13:59:19');
COMMIT;

#
# Data for the `x_organizations` table  (LIMIT 0,500)
#

INSERT INTO `x_organizations` (`id`, `name`, `logo`, `email`, `website`, `address`, `phone`, `created_at`, `updated_at`, `license_type`, `license_code`, `license_key`, `licensed`) VALUES 
  (2,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-20 13:59:19','2015-11-20 13:59:19','evaluation',NULL,NULL,100);
COMMIT;

#
# Data for the `x_permissions` table  (LIMIT 0,500)
#

INSERT INTO `x_permissions` (`id`, `name`, `display_name`, `category`, `created_at`, `updated_at`) VALUES 
  (13,'edit_loan_product','edit loan products','Loanproduct','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (14,'view_loan_product','view loan products','Loanproduct','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (15,'delete_loan_product','delete loan products','Loanproduct','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (16,'create_loan_account','create loan account','Loanaccount','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (17,'view_loan_account','view loan account','Loanaccount','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (18,'approve_loan_account','approve loan','Loanaccount','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (19,'disburse_loan','disburse loan','Loanaccount','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (20,'view_savings_account','view savings account','Savingaccount','2015-11-20 13:59:19','2015-11-20 13:59:19'),
  (21,'open_saving_account','Open savings account','Savingaccount','2015-11-20 13:59:19','2015-11-20 13:59:19');
COMMIT;

#
# Data for the `x_shares` table  (LIMIT 0,500)
#

INSERT INTO `x_shares` (`id`, `value`, `transfer_charge`, `charged_on`, `created_at`, `updated_at`) VALUES 
  (2,0,0,'donor','2015-11-20 13:59:19','2015-11-20 13:59:19');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;