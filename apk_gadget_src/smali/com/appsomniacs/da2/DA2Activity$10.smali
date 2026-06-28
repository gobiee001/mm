.class final Lcom/appsomniacs/da2/DA2Activity$10;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->sessionRequestCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isSessionEstablished:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1541
    iput-boolean p1, p0, Lcom/appsomniacs/da2/DA2Activity$10;->val$isSessionEstablished:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity$10;->val$isSessionEstablished:Z

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->sessionRequestCompleted(Z)V

    .line 1544
    return-void
.end method
