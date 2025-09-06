.class Lsigma/male/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsigma/male/MainActivity;


# direct methods
.method constructor <init>(Lsigma/male/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/MainActivity$2;->this$0:Lsigma/male/MainActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    .line 261
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    .line 263
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lsigma/male/MainActivity$2$1;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$2$1;-><init>(Lsigma/male/MainActivity$2;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    .line 233
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 235
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lsigma/male/MainActivity$2$2;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$2$2;-><init>(Lsigma/male/MainActivity$2;)V

    .line 240
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    .line 241
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 243
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lsigma/male/MainActivity$2$3;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$2$3;-><init>(Lsigma/male/MainActivity$2;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    .line 254
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 256
    return-void
.end method
