from fastapi import FastAPI
from transformers import pipeline 


# FastAPI app instance
app = FastAPI()

# pipeline initlization
pipe = pipeline("text2text-generation", model="google/flan-t5-small") 


@app.get("/")
def home():
    return {"message":"Hello docker"}

# define /generate get request
@app.get("/generate")
def generate(text:str):
    output = pipe(text) # use pipeline to generate text
    return {"output": output[0]['generated_text']} # return the generated output
