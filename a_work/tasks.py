from core import celery_app as app
# from core import celery_app as app


@app.task
def add(x, y):
    return x + y
