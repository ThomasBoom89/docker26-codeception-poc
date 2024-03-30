<?php

namespace Tests\Acceptance;

use Tests\Support\AcceptanceTester;

class SigninCest
{
    public function testAll(AcceptanceTester $I): void
    {
        $I->amOnPage("/");
        $I->see('I am in!');
    }
}
