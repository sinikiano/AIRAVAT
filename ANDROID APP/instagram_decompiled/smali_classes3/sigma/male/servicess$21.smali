.class Lsigma/male/servicess$21;
.super Ljava/lang/Object;
.source "servicess.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/servicess;->_setpres()V
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
    iput-object p1, p0, Lsigma/male/servicess$21;->this$0:Lsigma/male/servicess;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lsigma/male/servicess$21;->this$0:Lsigma/male/servicess;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_setpres2(Ljava/lang/String;)V

    .line 512
    return-void
.end method
