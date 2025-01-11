from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from create_database import create_database

create_database()
app = FastAPI()
 
@app.get("/")
def read_root():
    html_content = "<h2>Hello Tamagochi API!</h2>"
    return HTMLResponse(content=html_content)