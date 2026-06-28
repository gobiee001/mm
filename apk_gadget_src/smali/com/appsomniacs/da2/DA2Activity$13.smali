.class final Lcom/appsomniacs/da2/DA2Activity$13;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->setIdentity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1785
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$13;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$13;->val$accountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->setIdentity(Ljava/lang/String;)V

    .line 1788
    return-void
.end method
