FROM centos:latest
COPY src/salary_pred.* .
COPY src/salary.py .
RUN yum install python3 -y && pip3 install joblib scikit-learn && \
        yum clean all
CMD ["python","./salary_pred.py"]
