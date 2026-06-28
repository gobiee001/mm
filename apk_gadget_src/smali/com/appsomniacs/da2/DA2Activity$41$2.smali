.class Lcom/appsomniacs/da2/DA2Activity$41$2;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity$41;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsomniacs/da2/DA2Activity$41;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity$41;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/appsomniacs/da2/DA2Activity$41;

    .prologue
    .line 4991
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$41$2;->this$1:Lcom/appsomniacs/da2/DA2Activity$41;

    iput-object p2, p0, Lcom/appsomniacs/da2/DA2Activity$41$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4993
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$41$2;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4994
    return-void
.end method
