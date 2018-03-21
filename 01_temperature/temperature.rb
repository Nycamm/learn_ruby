def ftoc f_temp
  c_temp = ((f_temp.to_f - 32.0) * (5.0/9.0))
end

def ctof c_temp
  f_temp = ((c_temp.to_f * (9.0/5.0)) + 32.0)
end
