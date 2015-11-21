require 'spec_helper'
require 'lista'

describe '# ENUMERABLE' do
     LIBRO1 = Libro::Libro.new()
      aut01=%w{Dave.Thomas Andy.Hunt Chad.Fowler}
      Tit01 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser01 = "(The Facets of Ruby)"
      Edt01 = "Pragmatic Bookshelf"
      Edc01 = "4 edition"
      fch01 = "(July 7, 2013)"
      num01 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO1.setA(aut01)
      LIBRO1.setT(Tit01)
      LIBRO1.setS(Ser01)
      LIBRO1.setEdt(Edt01)
      LIBRO1.setEdc(Edc01)
      LIBRO1.setFecha(fch01)
      LIBRO1.setNum(num01)
  
  
     LIBRO2 = Libro::Libro.new()
      aut02=%w{Dave.Thomas Andy.Hunt Chad.Fowler}
      Tit02 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser02 = "(The Facets of Ruby)"
      Edt02 = "Pragmatic Bookshelf"
      Edc02 = "4 edition"
      fch02 = "(July 7, 2013)"
      num02 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO2.setA(aut02)
      LIBRO2.setT(Tit02)
      LIBRO2.setS(Ser02)
      LIBRO2.setEdt(Edt02)
      LIBRO2.setEdc(Edc02)
      LIBRO2.setFecha(fch02)
      LIBRO2.setNum(num02)
      
      
      LIBRO3 = Libro::Libro.new()
      aut03=%w{Dave.Thomas Andy.Hunt Chad.Fowler}
      Tit03 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser03 = "(No Ruby)"
      Edt03 = "Pragmatic Bookshelf"
      Edc03 = "2 edition"
      fch03 = "(July 7, 2013)"
      num03 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO3.setA(aut03)
      LIBRO3.setT(Tit03)
      LIBRO3.setS(Ser03)
      LIBRO3.setEdt(Edt03)
      LIBRO3.setEdc(Edc03)
      LIBRO3.setFecha(fch03)
      LIBRO3.setNum(num03)
      
  it "# Objetos LIBRO son iguales" do 
      expect(LIBRO1==LIBRO2).to eq(true) 
      expect(LIBRO1==LIBRO3).to eq(false) 
  end 
  
end



