#accept array as argument to essay_writer method
#assign each array element to a variable from the template
#return the essay template using the variables given as arguments

template = "TITLE: NAME was an American author. His most notable body of work was NOVEL. THESIS."

essay_1 = "J. D. Salinger:

J. D. Salinger was an American author. His most notable body of work was The Catcher in the Rye. It was very a influential coming of age story."

essay_2 = "Truman Capote:

Truman Capote was an American author. His most notable body of work was In Cold Blood. He was also influential as a screenwriter and playwright."

essay_3 = "Sinclair Lewis:

Sinclair Lewis was an American author. His most notable body of work was Main Street. He was influential in his views of American capitalism."



def essay_writer(title, name, novel, thesis, pronoun)

  if pronoun == "male"
    pronoun = "His"
  else
    pronoun = "Her"
  end

  return "#{title}:\n\n#{name} was an American author. #{pronoun} most notable body of work was #{novel}. #{thesis}."

end

awesome_essay = (["J. D. Salinger", "J. D. Salinger", "The Catcher in the Rye", "It was very a influential coming of age story", "male"])

p essay_writer(*awesome_essay) == essay_1












