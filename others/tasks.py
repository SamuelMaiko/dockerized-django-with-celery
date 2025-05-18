from core import celery_app as app
# from core import celery_app as app


@app.task
def product(x, y):
    return x * y
