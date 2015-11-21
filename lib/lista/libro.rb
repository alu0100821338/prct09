module Libro

 
  class Libro
     include Comparable
    attr_reader :a,:t, :s, :e, :ed, :f, :vect, :n_Ref
    
   
    def initialize()
     
      @a = nil
      @t = 0
      @s = 0
      @e = 0
      @ed = 0
      @f = 0
      @vect = nil
      @n_Ref = 0
    end
    #########################################
    
    def setA(a)
      @a=a
    end
    
    def setT(t)
      @t=t
    end
    
    def setS(s)
      @s=s
    end
    
    def setEdt(edt)
      @e=edt
    end
    
    def setEdc(edc)
      @ed=edc
    end
    
    def setFecha(f)
      @f=f
    end
    
    def setNum(n)
      @vect=n
    end
    
    def setNRef(ref)
      @n_Ref=ref
    end
    
    #########################################
    def geta
      return "#{@a}"
    end

    def gett
      return "#{@t}"
    end

    def getss
      return "#{@s}"
    end
    
    def geteditorial
      return "#{@e}"
    end
    
    def getedicion
      return "#{@ed}"
    end
    
    def getfecha
      return "#{@f}"
    end
    
    def getISBN
      return "#{@vect}"
    end
    
    def formatea()
        puts "#{@t}, #{@a}\n#{@s}\n#{@e}; #{@ed} #{@f}\n#{@vect}"
        return "#{@t}, #{@a}\n#{@s}\n#{@e}; #{@ed} #{@f}\n#{@vect}"
    end
#############################################################

    def <=> (other)
       return nil unless other.kind_of? Libro
       @n_Ref <=> other.n_Ref
   
    end
    
    def == (other)
       if @a==other.a && @t==other.t && @s==other.s && @e==other.e && @ed==other.ed && @f==other.f && @vect==other.vect && @n_Ref==other.n_Ref
         return true
       else
        return false
       end  
    end 

  end
  
  
  class Revista < Libro
    
    attr_reader :nombrerevista
    def initialize(n)
      @nombrerevista=n
      super()
    end
  end
  
  class Periodico < Libro
    attr_reader :articulo
    def initialize(columna)
      @articulo=columna
      super()
    end
  end
  
  class Documento < Libro
    attr_reader :url
    def initialize(dir)
      @url=dir
      super()
    end
  end
  
end