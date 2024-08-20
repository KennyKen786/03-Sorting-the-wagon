def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.downcase == "i am going to work right now!"
    return ""
  elsif your_message.end_with?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  return "" if your_message.strip.casecmp("i am going to work right now!").zero?

  shouting = your_message == your_message.upcase && your_message != your_message.downcase

if shouting
  if your_message.end_with?("?")
    "I can feel your motivation! Silly question, get dressed and go to work!"
  else
    "I can feel your motivation! I don't care, get dressed and go to work!"
  end
elsif your_message.end_with?("?")
  "Silly question, get dressed and go to work!"
else
  "I don't care, get dressed and go to work!"
end
end
