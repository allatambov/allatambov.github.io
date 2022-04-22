from string import punctuation
with open("text.txt") as f:
    text = f.read()
text = text.lower()
to_delete = punctuation + "–" + "—" + "»" + "«"

for s in to_delete:
    text = text.replace(s, " ")
text = text.replace("  ", " ")

with open("text_clean.txt", "w") as g:
    g.write(text)