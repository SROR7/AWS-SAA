FROM public.ecr.aws/lambda/python:3.12

COPY function/function.py ${LAMBDA_TASK_ROOT}/
COPY function/requirements.txt ${LAMBDA_TASK_ROOT}/

RUN pip install -r ${LAMBDA_TASK_ROOT}/requirements.txt

CMD ["function.handler"]