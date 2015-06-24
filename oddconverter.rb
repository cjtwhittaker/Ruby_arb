def oddconverter(odd)
  numerator = odd[/\d*/].to_f
  denominator = odd[/\d*$/].to_f
  decimal = (numerator / denominator) + 1
  return decimal
end
