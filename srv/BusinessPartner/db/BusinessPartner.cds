
using {
  cuid,  
  managed
} from '@sap/cds/common';

namespace BusinessPartnerDb;

using { MasterData as MD } from '../srv/external/MasterData';

entity BusinessPartners : cuid, managed {
  name: String;
  division : Association to one MD.Divisions;
}

@readonly entity Divisions as projection on MD.Divisions;