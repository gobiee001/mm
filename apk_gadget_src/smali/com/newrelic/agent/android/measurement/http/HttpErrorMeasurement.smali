.class public Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;
.super Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.source "HttpErrorMeasurement.java"


# instance fields
.field private bytesReceived:J

.field private bytesSent:J

.field private errorCode:I

.field private httpMethod:Ljava/lang/String;

.field private httpStatusCode:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseBody:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private totalTime:D

.field private url:Ljava/lang/String;

.field private wanType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpStatusCode"    # I

    .prologue
    .line 25
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setUrl(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setHttpStatusCode(I)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setStartTime(J)V

    .line 30
    return-void
.end method


# virtual methods
.method public getBytesReceived()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->bytesReceived:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->bytesSent:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->errorCode:I

    return v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->httpStatusCode:I

    return v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->totalTime:D

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWanType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->wanType:Ljava/lang/String;

    return-object v0
.end method

.method public setBytesReceived(J)V
    .locals 1
    .param p1, "bytesReceived"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->bytesReceived:J

    .line 110
    return-void
.end method

.method public setBytesSent(J)V
    .locals 1
    .param p1, "bytesSent"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->bytesSent:J

    .line 102
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->errorCode:I

    .line 118
    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->httpMethod:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->httpStatusCode:I

    .line 38
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->params:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->responseBody:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->stackTrace:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTotalTime(D)V
    .locals 1
    .param p1, "totalTime"    # D

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->totalTime:D

    .line 94
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->url:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setWanType(Ljava/lang/String;)V
    .locals 0
    .param p1, "wanType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->wanType:Ljava/lang/String;

    .line 86
    return-void
.end method
