module ApplicationHelper
  SHIRT_SIZES = ["PP", "P", "M", "G", "GG", "EGG"]
  ESTADOS_BRASILEIROS = [
    ["Acre", "AC"],
    ["Alagoas", "AL"],
    ["Amapá", "AP"],
    ["Amazonas", "AM"],
    ["Bahia", "BA"],
    ["Ceará", "CE"],
    ["Distrito Federal", "DF"],
    ["Espírito Santo", "ES"],
    ["Goiás", "GO"],
    ["Maranhão", "MA"],
    ["Mato Grosso", "MT"],
    ["Mato Grosso do Sul", "MS"],
    ["Minas Gerais", "MG"],
    ["Pará", "PA"],
    ["Paraíba", "PB"],
    ["Paraná", "PR"],
    ["Pernambuco", "PE"],
    ["Piauí", "PI"],
    ["Rio de Janeiro", "RJ"],
    ["Rio Grande do Norte", "RN"],
    ["Rio Grande do Sul", "RS"],
    ["Rondônia", "RO"],
    ["Roraima", "RR"],
    ["Santa Catarina", "SC"],
    ["São Paulo", "SP"],
    ["Sergipe", "SE"],
    ["Tocantins", "TO"]
]

def options_for_shirts(selected)
    options_for_select(SHIRT_SIZES, selected)
end
def options_for_states(selected)
    options_for_select(ESTADOS_BRASILEIROS, selected)
end
def bootstrap_class_for(flash_type)
  case flash_type
  when "success"
    "alert-success"   # Green
when "error"
    "alert-danger"    # Red
when "alert"
    "alert-warning"   # Yellow
when "notice"
    "alert-info"      # Blue
else
    flash_type.to_s
end
end
end

