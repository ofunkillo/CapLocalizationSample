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
  descr : localized String(1000);
  key division : String(20) not null;
};

@cds.external : true
service MasterData {};
