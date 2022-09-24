from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def read_root():
    """
    Root API
    """
    return ["Hello, World"]
