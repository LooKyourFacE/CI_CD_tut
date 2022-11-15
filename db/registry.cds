namespace btp.academy;

using {
    cuid,
    managed,
    temporal,
    Country
} from '@sap/cds/common';
using btp.academy as types from './types';
using btp.academy as listvalues from './listvalues';

entity RegistryClients : managed {
    key IdClient : Integer;
        accounts : Composition of many RegistryAccounts
                       on accounts.IdAccount = $self;
}

entity RegistryAccounts : cuid, managed {
    key IdAccount   : Association to RegistryClients;
        AccountType : Association to listvalues.AccountType  @Core.Immutable  @assert.notNull  @title : 'Type of account';
}
