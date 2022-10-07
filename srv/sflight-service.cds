using btp.academy as btp from '../db/sflight-model';

service SflightService{
    entity Customers as projection on btp.SCUSTOM;
    entity CustomersWalldorfView as projection on btp.SCUSTOM_V;
}