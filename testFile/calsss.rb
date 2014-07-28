class A
  def test
    protected_mth
    private_mth

    self.protected_mth
    #self.private_mth     #wrong

    obj = B.new
    obj.protected_mth
    #obj.private_mth       #wrong
  end

  protected
  def protected_mth
    puts "#{self.class}-protected"
  end

  private
  def private_mth
    puts "#{self.class}-private"
  end
end

class B < A
  def test
    protected_mth
    private_mth

    self.protected_mth
    #self.private_mth     #wrong

    obj = B.new
    obj.protected_mth
    #obj.private_mth       #wrong
  end
end

obj = B.new
obj.test


class C
  def test
    a = A.new
    #a.protected_mth          #wrong
    #a.private_mth            #wrong
  end
end