trigger accounttrigger on account (before insert, after update) {
    System.debug('Test trigger sfdx' + trigger.new);
    accountTriggerHandler.SayHello(trigger.new);

}