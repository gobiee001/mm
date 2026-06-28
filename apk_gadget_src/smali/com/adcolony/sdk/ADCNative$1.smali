.class final Lcom/adcolony/sdk/ADCNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ADCNative;->EventTracker__logEvent(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ADCVMModule;

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ADCVMModule;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adcolony/sdk/ADCNative$1;->a:Lcom/adcolony/sdk/ADCVMModule;

    iput-object p2, p0, Lcom/adcolony/sdk/ADCNative$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adcolony/sdk/ADCNative$1;->a:Lcom/adcolony/sdk/ADCVMModule;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ADCVMModule;->d()J

    move-result-wide v2

    .line 46
    iget-object v0, p0, Lcom/adcolony/sdk/ADCNative$1;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adcolony/sdk/ADCNative;->access$100(Lorg/json/JSONObject;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADC3__EventTracker__logEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/adcolony/sdk/ADCNative$1;->b:Lorg/json/JSONObject;

    instance-of v4, v0, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 49
    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/ADCNative;->access$200(J[B)V

    .line 50
    return-void

    .line 47
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
