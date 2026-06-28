.class final Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventInfo1:Ljava/lang/String;

.field final synthetic val$eventInfo2:Ljava/lang/String;

.field final synthetic val$eventInfo3:Ljava/lang/String;

.field final synthetic val$eventInfo4:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo1:Ljava/lang/String;

    iput-object p4, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo2:Ljava/lang/String;

    iput-object p5, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo3:Ljava/lang/String;

    iput-object p6, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo4:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;-><init>()V

    .line 286
    .local v0, "locationManagerHelper":Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;

    invoke-direct {v2, p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;-><init>(Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->getLocation(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;)V

    .line 298
    return-void
.end method
