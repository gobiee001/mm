.class public Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "ObscuredSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field final delegate:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->access$000(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    .line 27
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->clear()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 72
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->access$100(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    return-object p0
.end method

.method public bridge synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->access$100(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    return-object p0
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->access$100(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    return-object p0
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->access$100(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->this$0:Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    invoke-static {v1, p2}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->access$100(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;->delegate:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    return-object p0
.end method
