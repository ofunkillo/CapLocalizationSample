using {BusinessPartnerDb as BP} from '../db/BusinessPartner';

@(path: '/Businesspartner')

service BusinessPartner {
    entity BusinessPartners as projection on BP.BusinessPartners;
    entity Divisions as select from BP.Divisions;
    // entity Divisions_texts as projection on BP.Divisions.texts;
}