.class Lcom/appsomniacs/da2/DA2Activity$2;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/amazon/ags/api/AmazonGamesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$2;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceNotReady(Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/amazon/ags/api/AmazonGamesStatus;

    .prologue
    .line 562
    const-string v0, "DA2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Amazon Service is NOT ready. Status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ags/api/AmazonGamesStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method public onServiceReady(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 2
    .param p1, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 567
    const-string v0, "DA2"

    const-string v1, "Amazon Service is ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$2;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0, p1}, Lcom/appsomniacs/da2/DA2Activity;->access$502(Lcom/appsomniacs/da2/DA2Activity;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;

    .line 570
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$2;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$600(Lcom/appsomniacs/da2/DA2Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const-string v0, "DA2"

    const-string v1, "Amazon Service is starting initialized its JNI components."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$2;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$500(Lcom/appsomniacs/da2/DA2Activity;)Lcom/amazon/ags/api/AmazonGamesClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->initializeJni()V

    .line 573
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$2;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->access$602(Lcom/appsomniacs/da2/DA2Activity;Z)Z

    .line 574
    const-string v0, "DA2"

    const-string v1, "Amazon Service has initialized its JNI components."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    return-void
.end method
