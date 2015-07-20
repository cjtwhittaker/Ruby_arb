def oddconverter(odd)
  if odd == 'EVS'
    return 2.0
  else
    numerator = odd[/\d*/].to_f
    denominator = odd[/\d*$/].to_f
    decimal = (numerator / denominator) + 1
    return decimal
  end
end
