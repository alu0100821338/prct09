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
end


