require 'spec_helper'
require 'lista'

describe '# COMPARABLE' do
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
      LIBRO1.setNRef(100)
  
  
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
      LIBRO2.setNRef(100)
      
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
      LIBRO3.setNRef(100)
      
  it "# Objetos LIBRO son iguales" do 
      expect(LIBRO1==LIBRO2).to eq(true) 
      expect(LIBRO1==LIBRO3).to eq(false) 
      
      LIBRO2.setNRef(200)
      expect(LIBRO1==LIBRO2).to eq(false) 

  end 
  
  it "# Igualación y diferencia de Objetos hijos" do
      r1=Libro::Revista.new("HOLA")
      r1.setT("Título 1")
    
      r2=Libro::Revista.new("HOLA")
      r2.setT("Título 1")
      
      r21=Libro::Revista.new("HOLA")
      r21.setT("Título 2")
      
      r3=Libro::Revista.new("SUPER ABC")
      r3.setT("Título 1")
    
      p1=Libro::Periodico.new("Col. 3")
      p1.setT("Periodico 1")
      
      p11=Libro::Periodico.new("Col. 3")
      p11.setT("Periodico 1")
      
      p2=Libro::Periodico.new("Col. 2")
      p2.setT("Periodico 1")
      
      p21=Libro::Periodico.new("Col. 2")
      p21.setT("Periodico 2")
    
      d1=Libro::Documento.new("http://rubyLibroLearn.io")
      d1.setT("Documento 1")
    
      d12=Libro::Documento.new("http://rubyLibroLearn.io")
      d12.setT("Documento 2")
      
      d3=Libro::Documento.new("http://HelloWorld.org")
      d3.setT("Documento 1")
      
      d11=Libro::Documento.new("http://rubyLibroLearn.io")
      d11.setT("Documento 1")
      
      expect(r1==r2).to eq(true) 
    
      expect(r1==r21).to eq(false) 
      
      expect(r1==r3).to eq(false) 
      
      
      expect(p1==p2).to eq(false) 
      expect(p11==p1).to eq(true)
      expect(p21==p2).to eq(false)
      
      expect(d1==d3).to eq(false) 
      expect(d11==d1).to eq(true)
      expect(d12==d1).to eq(false)
  end
  
  it '# Objeto libro mayor y menor' do
     LIBRO1.setNRef(120)
    
    expect(LIBRO1).to be >  LIBRO3
    expect(LIBRO3).to be <  LIBRO1
  end
end

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
      LIBRO1.setNRef(100)
  
  
     LIBRO4 = Libro::Libro.new()
      aut04=%w{Dave.Thomas Andy.Hunt Chad.Fowler}
      Tit04 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser04 = "(The Facets of Ruby)"
      Edt04 = "Pragmatic Bookshelf"
      Edc04 = "4 edition"
      fch04 = "(July 7, 2013)"
      num04 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO4.setA(aut04)
      LIBRO4.setT(Tit04)
      LIBRO4.setS(Ser04)
      LIBRO4.setEdt(Edt04)
      LIBRO4.setEdc(Edc04)
      LIBRO4.setFecha(fch04)
      LIBRO4.setNum(num04)
      LIBRO4.setNRef(50)
      
      
       LIBRO5 = Libro::Libro.new()
      aut05=%w{Dave.Thomas Andy.Hunt Chad.Fowler}
      Tit05 = "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
      Ser05 = "(The Facets of Ruby)"
      Edt05 = "Pragmatic Bookshelf"
      Edc05 = "4 edition"
      fch05 = "(July 7, 2013)"
      num05 = %w{ ISBN-13:978-1937785499 ISBN-10:1937785491 }
      
      LIBRO5.setA(aut05)
      LIBRO5.setT(Tit05)
      LIBRO5.setS(Ser05)
      LIBRO5.setEdt(Edt05)
      LIBRO5.setEdc(Edc05)
      LIBRO5.setFecha(fch05)
      LIBRO5.setNum(num05)
      LIBRO5.setNRef(400)
      
      #LIBRO6 = Libro::Libro.new(nil)

    it '# Comprobar max y min lista' do
        L = Lista::Lista.new()
       
        L.insert(LIBRO1)
        L.insert(LIBRO2)
        L.insert(LIBRO5)
        L.insert(LIBRO3)
         L.insert(LIBRO4)
    
          expect(L.max).to eq(LIBRO5)
          expect(L.min).to eq(LIBRO4)
          
               
      #expect(L.all?{|i| i == LIBRO6}).to eq(false)   
          
    end
    
     it "#comprobrando el metodo any? con un bloque vacio" do
         expect(L.any?{|i| i == LIBRO5}).to eq(true)
     end 
end


