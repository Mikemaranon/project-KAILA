# SLM implementation

for this project we are going to use the model [DistilBERT](https://huggingface.co/docs/transformers/model_doc/distilbert) through the `transformers` library
```bash
pip install transformers
```
now we need to create our SLM in a python file
```python
from transformers import DistilBertTokenizer, DistilBertModel

# Load the tokenizer
tokenizer = DistilBertTokenizer.from_pretrained('distilbert-base-uncased')

# Load the model
model = DistilBertModel.from_pretrained('distilbert-base-uncased')

# Example usage
input_text = "Hello, how can I optimize my system?"
inputs = tokenizer(input_text, return_tensors='pt')

outputs = model(**inputs)
print(outputs)
```
