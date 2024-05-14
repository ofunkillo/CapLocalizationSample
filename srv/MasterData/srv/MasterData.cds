using {MasterDataDb as MD} from '../db/MasterData';

@(path: '/MasterData')

service MasterData {
    entity Divisions as select from MD.Divisions;
    entity Divisions_texts as projection on MD.Divisions.texts;
}