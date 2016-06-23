 lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'sunat'
require './config/config'
require './app/generators/invoice_generator'
require './app/generators/credit_note_generator'
require './app/generators/debit_note_generator'
require './app/generators/receipt_generator'
require './app/generators/daily_receipt_summary_generator'
require './app/generators/voided_documents_generator'

SUNAT.environment = :test

files_to_clean = Dir.glob("*.xml") + Dir.glob("./app/pdf_output/*.pdf") + Dir.glob("*.zip")
files_to_clean.each do |file|
  File.delete(file)
end 

case_3 = InvoiceGenerator.new(1, 3, 1, "FF01").with_igv(true)

#case_6 = CreditNoteGenerator.new(1, 6, "FF01").for_igv_document(case_3,true)
# case_6 = CreditNoteGenerator.new(1, 6, "FF01").for_igv_document(true)

#case_6 = CreditNoteGenerator.new(1, 6, "FF01").for_igv_document(true)
#VoidedDocumentsGenerator.new.generate

#Resumen Diario boletas de venta 13
#if groups.include?(13)
 # DailyReceiptSummaryGenerator.new.generate
#end

#Comunicacion de baja 14
#if groups.include?(14)
  #VoidedDocumentsGenerator.new.generate
#end




