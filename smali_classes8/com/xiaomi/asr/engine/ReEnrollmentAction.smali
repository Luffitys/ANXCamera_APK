.class public final enum Lcom/xiaomi/asr/engine/ReEnrollmentAction;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/asr/engine/ReEnrollmentAction;

.field private static final ENROLL_AUDIO_PREFIX:Ljava/lang/String; = "enroll_"

.field private static final ENROLL_AUDIO_SUFFIX:Ljava/lang/String; = ".pcm"

.field public static final enum ReEnrollment:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

.field private static final TAG:Ljava/lang/String; = "ReEnrollmentAction"


# instance fields
.field private enrollAudioFilter:Ljava/io/FilenameFilter;

.field private fileNameComparator:Ljava/util/Comparator;

.field private mBlobFilePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentProcess:I

.field private mEnrollBackupFolder:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mReEnrollAudioFileList:Ljava/util/List;

.field private mReEnrollAudioFileListCache:Ljava/util/List;

.field private mReEnrollPhrase:Ljava/lang/String;

.field private mReEnrollPhraseCommittedList:Ljava/util/List;

.field private mReEnrollPhraseList:Ljava/util/List;

.field private mReEnrollRunnable:Ljava/lang/Runnable;

.field private mReEnrollmentActionListener:Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const-string v1, "ReEnrollment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->ReEnrollment:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    aput-object v0, v1, v2

    sput-object v1, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->$VALUES:[Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollAudioFileList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseCommittedList:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/xiaomi/asr/engine/ReEnrollmentAction$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$1;-><init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->enrollAudioFilter:Ljava/io/FilenameFilter;

    new-instance p1, Lcom/xiaomi/asr/engine/ReEnrollmentAction$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$2;-><init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->fileNameComparator:Ljava/util/Comparator;

    new-instance p1, Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;

    invoke-direct {p1, p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;-><init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollAudioFileList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollmentActionListener:Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseCommittedList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mCurrentProcess:I

    return p0
.end method

.method static synthetic access$202(Lcom/xiaomi/asr/engine/ReEnrollmentAction;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mCurrentProcess:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/asr/engine/ReEnrollmentAction;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->notifyFinished(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mBlobFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollAudioFileListCache:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->reEnrollmentForOnePhraseWithCheck()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhrase:Ljava/lang/String;

    return-object p0
.end method

.method private notifyFinished(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollmentActionListener:Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    iget-object v2, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseCommittedList:Ljava/util/List;

    invoke-interface {v1, p1, v2, p2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;->onFinished(ZLjava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollmentActionListener:Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    invoke-static {v0}, Lcom/xiaomi/asr/engine/W2VPEngine;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    return-void
.end method

.method private reEnrollmentForOnePhraseWithCheck()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhrase:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mEnrollBackupFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->reEnrollmentFromPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseCommittedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/asr/engine/W2VPEngine;->generateModel()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->notifyFinished(ZLjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private reEnrollmentFromPath(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reEnrollmentFromPath phrase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enrollAudioPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReEnrollmentAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->enrollAudioFilter:Ljava/io/FilenameFilter;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->scanFile(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollAudioFileListCache:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->fileNameComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollAudioFileListCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "wakeup_phrase.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhrase:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    new-instance p1, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$WVPCallback;-><init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;Lcom/xiaomi/asr/engine/ReEnrollmentAction$1;)V

    invoke-static {p1}, Lcom/xiaomi/asr/engine/W2VPEngine;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    iput v0, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mCurrentProcess:I

    invoke-static {}, Lcom/xiaomi/asr/engine/W2VPEngine;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception p0

    move v3, v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v3
.end method

.method private scanFile(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v3, p2, v4}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->scanFile(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/asr/engine/ReEnrollmentAction;
    .locals 1

    const-class v0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/asr/engine/ReEnrollmentAction;
    .locals 1

    sget-object v0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->$VALUES:[Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-virtual {v0}, [Lcom/xiaomi/asr/engine/ReEnrollmentAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    return-object v0
.end method


# virtual methods
.method public reEnrollmentWithBackupAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phrase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " blobFilePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReEnrollmentAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseCommittedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollPhraseList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p4, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mBlobFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mEnrollBackupFolder:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->mReEnrollmentActionListener:Lcom/xiaomi/asr/engine/ReEnrollmentAction$ReEnrollmentActionListener;

    invoke-direct {p0}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->reEnrollmentForOnePhraseWithCheck()V

    return-void
.end method
