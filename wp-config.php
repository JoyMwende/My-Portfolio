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
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'portfolio' );

/** Database username */
define( 'DB_USER', 'portfolioadmin' );

/** Database password */
define( 'DB_PASSWORD', 'portfolioadmin' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         'fCb!0YU,EB7Kp6F }CkA_qT$W?;~Chr]Rbf7FSxuZCf~oC,Cld]NXoEkP/_ lr_*' );
define( 'SECURE_AUTH_KEY',  'l^{3T9tuMG3*0Tkgm(YwkIholLlPuo@6,hYOl?#<5@|F@aJ(T}#*i4)k?Ld+c-eY' );
define( 'LOGGED_IN_KEY',    'X10]KF6T/?FL*H Y)Fb)3[.xnOFP]9,U6(_>n}oDw`-j/0ib1s+Vg>]V=lr1W|}9' );
define( 'NONCE_KEY',        'hqAV/S M>7Qpb%1{;.]/O1UYyon$b&!Ji@p(<^a#v{}F^]5 Dve@LaN&]>Sf2ADe' );
define( 'AUTH_SALT',        'Zd184a.&$UrxL`<A]Ay_*nY2Mo5*i9IrgO7#9d52g0S^13B8E:0S2cl%,sT#-~ns' );
define( 'SECURE_AUTH_SALT', 'aZa>4:=OdO{iH.lh9CqYEMI8ZA.$kia*rhxma@>bvk:{D@B6dR(vCK.fSp&^_ 1r' );
define( 'LOGGED_IN_SALT',   'p)`K%-z(p(8^ZNG0.=5.8}  @C~6?_63i@ t-yLY=u3p^4?Z%)+185)7+i{Fz$E3' );
define( 'NONCE_SALT',       'hdS .5>_=>R~GdVUc]4nc9o8}|i6G_2nw+Q)Ze~khY]DUS#wjr=I/82D-U{b:e77' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
