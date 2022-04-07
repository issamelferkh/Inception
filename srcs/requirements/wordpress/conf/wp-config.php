<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'issam' );

/** Database password */
define( 'DB_PASSWORD', 'issam123!' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'tU4UuC!tDqND 07DB2+,z^l7=K:ON+P)!>RHHf0(4Pxo{^Z3BB NL%;<;^vN$<o9' );
define( 'SECURE_AUTH_KEY',  'OP^IqFn6A71  %/_Mh$Zg-lIB~%mq{ss>Y@RQLP:/BsiX$ClJ8+ f>3RIw{6NfcA' );
define( 'LOGGED_IN_KEY',    'rQc#{U80}U~;~aqg?{F3ysMx.>K-/DXH2]?D%:3o4*b1Xlz^(:?|//{6pp_Y,(5^' );
define( 'NONCE_KEY',        'T96$1UuF@el@pp)ehzmI1XRzL.5&V<M(dq6EhtlUI%w XyAl p,!vo7]8jSB:HbF' );
define( 'AUTH_SALT',        '%hOk(F_vgg$cXW:1SNU|Zf`<Cv/@ F@{E*e0 TQwk)U@Vv3Pc^~PGpp_nB(zcBL3' );
define( 'SECURE_AUTH_SALT', '`YGlFWmhbU84X mEEqeDxIKtvz,Q:=#Ya73q}-)e:/M_,-vryqPW6F8%G%T,ZZ/C' );
define( 'LOGGED_IN_SALT',   'X>9k4_[A|^)G1eL2~[;P?y,TsmUPqun$$ MQh4R{a^it~]05a)wT5Mobn-]k3~Oo' );
define( 'NONCE_SALT',       '4o8b.}1hs;1&/TI;SUD_<0Ql!zlOB9-.:k^ITk4M?~Krd^Ejy;_xWI8/qa }&P2S' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
