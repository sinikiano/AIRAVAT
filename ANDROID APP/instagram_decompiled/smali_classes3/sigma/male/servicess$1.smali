.class Lsigma/male/servicess$1;
.super Ljava/lang/Object;
.source "servicess.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/servicess;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsigma/male/servicess;


# direct methods
.method constructor <init>(Lsigma/male/servicess;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/servicess$1;->this$0:Lsigma/male/servicess;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    .line 203
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lsigma/male/servicess$1$1;

    invoke-direct {v0, p0}, Lsigma/male/servicess$1$1;-><init>(Lsigma/male/servicess$1;)V

    .line 172
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    .line 173
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 175
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lsigma/male/servicess$1$2;

    invoke-direct {v0, p0}, Lsigma/male/servicess$1$2;-><init>(Lsigma/male/servicess$1;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    .line 181
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 183
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lsigma/male/servicess$1$3;

    invoke-direct {v0, p0}, Lsigma/male/servicess$1$3;-><init>(Lsigma/male/servicess$1;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    .line 194
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 196
    return-void
.end method
