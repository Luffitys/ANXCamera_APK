.class public Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static RECORD_DIR:Ljava/lang/String; = "/sdcard/miasr/voiceprint/record"

.field private static final TAG:Ljava/lang/String; = "SaveVoiceUtil"


# instance fields
.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mSaveHandle:Landroid/os/Handler;

.field private mSaveThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "save_voice"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;

    invoke-direct {v2, p0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil$SaveVoiceCallback;-><init>(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->RECORD_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->checkAndCreateDir(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mOutputStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mOutputStream:Ljava/io/FileOutputStream;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkAndCreateDir(Ljava/lang/String;)Z
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createFile(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSaveDir(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->RECORD_DIR:Ljava/lang/String;

    return-void
.end method

.method public writeFile([B)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/xiaomi/asr/engine/utils/SaveVoiceUtil;->mSaveHandle:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
