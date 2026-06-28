.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private eInfo1:Ljava/lang/String;

.field private eInfo2:Ljava/lang/String;

.field private eInfo3:Ljava/lang/String;

.field private eInfo4:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public geteInfo1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo1:Ljava/lang/String;

    return-object v0
.end method

.method public geteInfo2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo2:Ljava/lang/String;

    return-object v0
.end method

.method public geteInfo3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo3:Ljava/lang/String;

    return-object v0
.end method

.method public geteInfo4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo4:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public seteInfo1(Ljava/lang/String;)V
    .locals 0
    .param p1, "eInfo1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo1:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public seteInfo2(Ljava/lang/String;)V
    .locals 0
    .param p1, "eInfo2"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo2:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public seteInfo3(Ljava/lang/String;)V
    .locals 0
    .param p1, "eInfo3"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo3:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public seteInfo4(Ljava/lang/String;)V
    .locals 0
    .param p1, "eInfo4"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->eInfo4:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
