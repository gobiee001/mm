.class Lcom/appsomniacs/da2/DA2Activity$24;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3125
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$24;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$24;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$1400(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 3128
    return-void
.end method
