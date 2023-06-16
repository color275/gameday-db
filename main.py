from fastapi import FastAPI, Depends, Path, HTTPException
from pydantic import BaseModel
from database import engineconn
from models import *
from sqlalchemy import text
from fastapi.encoders import jsonable_encoder
from fastapi.responses import JSONResponse
from fastapi.responses import RedirectResponse

import socket
import os

from domain.customer import customer_router
from domain.product import product_router
from domain.order import order_router
from starlette.middleware.cors import CORSMiddleware


app = FastAPI()

origins = [
    "http://127.0.0.1:8000",    # 또는 "http://localhost:5173"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


engine = engineconn()
session = engine.sessionmaker()

app.include_router(customer_router.router)
app.include_router(product_router.router)
app.include_router(order_router.router)

@app.get("/")
async def docs():    
    return RedirectResponse(url="/docs")

