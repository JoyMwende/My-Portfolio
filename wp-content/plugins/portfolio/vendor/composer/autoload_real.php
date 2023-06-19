<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInite1a13d3199d0a0cf3414ff6a5a782a88
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        spl_autoload_register(array('ComposerAutoloaderInite1a13d3199d0a0cf3414ff6a5a782a88', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInite1a13d3199d0a0cf3414ff6a5a782a88', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInite1a13d3199d0a0cf3414ff6a5a782a88::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
