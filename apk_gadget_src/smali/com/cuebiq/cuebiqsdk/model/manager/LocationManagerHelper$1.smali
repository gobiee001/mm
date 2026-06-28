.class Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$1;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->getLocation(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->access$000(Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;Landroid/location/Location;)V

    .line 45
    return-void
.end method
