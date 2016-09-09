class ActionCorreo < ApplicationMailer
  	  default from: 'factura-electronica@valuemiperu.com'

	  def bienvenido_email(invoice)
		  @invoices=invoice 			
		   @url  = 'http://www.apple.com'
		  #attachments["Factura"] = File.read("#{$lcFileName1}")
		  #attachments['Factura'] = File.read($lcFileName1)
<<<<<<< HEAD
=======
		  email_with_copy = "Factura Enviada <administracion@valuemiperu.com>"	
		  email_with_name = "Factura Enviada <factura-electronica@valuemiperu.com>"	
>>>>>>> f73fc28c868609a97618127025826cb6b8de093e

		  email_with_name = "Factura Enviada <factura-electronica@hidrotransp.com>"	
		  email_with_copy = "Administracion <zportal@hidrotransp.com>"	
		  attachments[$lcFileName] =  open($lcFileName1).read

		  attachments[$lcFilezip] =  open($lcFile2).read

<<<<<<< HEAD
		  mail(to: [$lcMail,$lcMail2,$lcMail3], cc: email_with_copy,   bcc:email_with_name, subject: 'Factura Electrónica : '+$lcFileNameIni )
=======
		  mail(to: [$lcMail,$lcMail2,$lcMail3], cc: email_with_copy, bcc:email_with_name, subject: 'Factura Electrónica : '+$lcFileNameIni )
>>>>>>> f73fc28c868609a97618127025826cb6b8de093e


	  end
end
