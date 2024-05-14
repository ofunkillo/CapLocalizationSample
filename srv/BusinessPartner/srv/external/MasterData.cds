/* checksum : 5c9315d1871df558e309912fb5573ad8 */
@cds.external : true
@cds.persistence.skip : true
@UI.Identification : [
  {
    $Type: 'UI.DataField',
    Value: name
  }
]
entity MasterData.Divisions {
  @Common.Label : 'Name'
  name : String(255);
  @Common.Label : 'Description'
  descr : String(1000);
  key division : String(20) not null;
  @cds.ambiguous : 'missing on condition?'
  texts : Composition of many MasterData.Divisions_texts;
  @cds.ambiguous : 'missing on condition?'
  localized : Association to one MasterData.Divisions_texts on localized.division = division;
};

@cds.external : true
@cds.persistence.skip : true
entity MasterData.Divisions_texts {
  @Common.Label : 'Language Code'
  key locale : String(14) not null;
  @Common.Label : 'Name'
  name : String(255);
  @Common.Label : 'Description'
  descr : String(1000);
  key division : String(20) not null;
};

@cds.external : true
service MasterData {};

