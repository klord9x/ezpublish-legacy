<?php
/**
 * File containing the ezpTestCase class
 *
 * @copyright Copyright (C) 1999-2011 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU GPLv2
 * @package tests
 */

class ezpTestCase extends PHPUnit_Framework_TestCase
{
    protected $sharedFixture;
    

    protected function setUp()
    {
        //echo("Running test : ". $this->getName() . "\n");
        parent::setUp();
    }

}

?>
