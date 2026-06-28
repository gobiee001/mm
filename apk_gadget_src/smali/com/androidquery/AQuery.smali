.class public Lcom/androidquery/AQuery;
.super Lcom/androidquery/AbstractAQuery;
.source "AQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/AbstractAQuery",
        "<",
        "Lcom/androidquery/AQuery;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;-><init>(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method
