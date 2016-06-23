# Sample SUNAT configuration

SUNAT.configure do |config|
  config.credentials do |c|


    c.ruc       = "20555691263"
    c.username  = "FACTURA2"
    c.password  = "20555691263"
   end

  config.signature do |s|
    s.party_id    = "20555691263"
    s.party_name  = "INVERSIONES VALUEMI S.A.C."
    s.cert_file   = File.join(Dir.pwd, './app/keys', 'certicado.crt')
    s.pk_file     = File.join(Dir.pwd, './app/keys', 'CERTIFICADO.key') 
  end

  config.supplier do |s|
    s.legal_name = "INVERSIONES VALUEMI S.A.C."
    s.name       = "Cesar Jaime Manrique Milla"
    s.ruc        = "20555691263"
    s.address_id = "150117"
    s.street     = "JR. TOMAS CATARI NRO. 405 URB. EL TREBOL 1RA. ETAPA"
    s.district   = "LOS OLIVOS"
    s.city       = "LIMA"
    s.country    = "PE"
    s.logo_path  = "#{Dir.pwd}/app/assets/images/logo.PNG"
  end
end