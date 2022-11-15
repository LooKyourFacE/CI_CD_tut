using btp.academy as registry from '../db/registry';
using btp.academy as movments from '../db/movments';

service SflightService {
    entity RegistryAccounts as projection on registry.RegistryAccounts;
    entity MovmentsMaster   as projection on movments.MovmentsMaster;
}
