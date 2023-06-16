from fastapi import APIRouter
from fastapi import HTTPException
from models import *
from database import engineconn
from datetime import datetime
import random

router = APIRouter(
    prefix="/api/order",
)

engine = engineconn()
session = engine.sessionmaker()

@router.get("/")
async def get_all():
    result = session.query(Order).all()
    return result

@router.get("/{id}")
async def get_order(id: int):
    order = session.query(Order).filter(Order.id == id).first()

    if not order:
        raise HTTPException(status_code=404, detail="order not found")

    order_dict = order.__dict__
    order_dict.pop("_sa_instance_state")  

    return order_dict


@router.post("/payment/")
async def order(customer_id: int, product_id: int):
    customer = session.query(Customer).filter(Customer.id == customer_id).first()
    product = session.query(Product).filter(Product.id == product_id).first()

    if not customer:
        raise HTTPException(status_code=404, detail="Customer not found")
    if not product:
        raise HTTPException(status_code=404, detail="Product not found")
    
    # 주문 생성
    order_cnt = random.randint(1, 5)
    order_dt = datetime.now().strftime("%Y-%m-%d")
    order = Order(
        promo_id=None,
        order_cnt=order_cnt,
        order_price=order_cnt*product.price,
        order_dt=order_dt,
        last_update_time=datetime.now(),
        cust_id=customer_id,
        prd_id=product_id
    )
    
    session.add(order)
    session.commit()

    msg = {"message": "Order placed successfully"}
    
    return msg