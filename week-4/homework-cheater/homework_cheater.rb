essay_1 = "J. D. Salinger: J. D. Salinger was an American author. His most notable body of work was The Catcher in the Rye. It was very a influential coming of age story."

essay_2 = "Truman Capote: Truman Capote was an American author. His most notable body of work was In Cold Blood. He was also influential as a screenwriter and playwright."

essay_3 = "Sinclair Lewis: Sinclair Lewis was an American author. His most notable body of work was Main Street. He was influential in his views of American capitalism."


def essay_writer(essay)
  title = essay[0]
  name = essay[1]
  novel = essay[2]
  thesis = essay[3]

  template = "#{title}: #{name} was an American author. His most notable body of work was #{novel}. #{thesis}."

  return template
end

novelist_1 = ["J. D. Salinger", "J. D. Salinger", "The Catcher in the Rye", "It was very a influential coming of age story"]

puts essay_writer(novelist_1) == essay_1


