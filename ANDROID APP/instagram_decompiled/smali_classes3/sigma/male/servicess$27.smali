.class Lsigma/male/servicess$27;
.super Ljava/lang/Object;
.source "servicess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/servicess;->clips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsigma/male/servicess;

.field private final synthetic val$clipboard:[Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Lsigma/male/servicess;[Landroid/content/ClipboardManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/servicess$27;->this$0:Lsigma/male/servicess;

    iput-object p2, p0, Lsigma/male/servicess$27;->val$clipboard:[Landroid/content/ClipboardManager;

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1061
    iget-object v1, p0, Lsigma/male/servicess$27;->val$clipboard:[Landroid/content/ClipboardManager;

    const/4 v2, 0x0

    iget-object v0, p0, Lsigma/male/servicess$27;->this$0:Lsigma/male/servicess;

    const-string v3, "NjgvXVo6NTRJ"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsigma/male/servicess;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    aput-object v0, v1, v2

    .line 1063
    return-void
.end method
