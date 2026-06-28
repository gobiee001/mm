.class public Lcom/chartboost/sdk/Libraries/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    .line 55
    return-void
.end method
