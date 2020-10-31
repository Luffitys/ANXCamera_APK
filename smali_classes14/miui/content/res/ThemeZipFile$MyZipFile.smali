.class Lmiui/content/res/ThemeZipFile$MyZipFile;
.super Ljava/util/zip/ZipFile;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyZipFile"
.end annotation


# static fields
.field private static final MY_ZIP_FILE_INIT_THREAD:Ljava/lang/String; = "MyZipFileInitThread"


# instance fields
.field private volatile mEntryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMutex:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/content/res/ThemeZipFile;


# direct methods
.method public constructor <init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->this$0:Lmiui/content/res/ThemeZipFile;

    invoke-direct {p0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mMutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/content/res/ThemeZipFile$MyZipFile$1;

    invoke-direct {v1, p0, p1}, Lmiui/content/res/ThemeZipFile$MyZipFile$1;-><init>(Lmiui/content/res/ThemeZipFile$MyZipFile;Lmiui/content/res/ThemeZipFile;)V

    const-string p1, "MyZipFileInitThread"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lmiui/content/res/ThemeZipFile$MyZipFile;)V
    .registers 1

    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->initCache()V

    return-void
.end method

.method private initCache()V
    .registers 6

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    if-nez v0, :cond_3b

    iget-object v1, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    move-object v0, v2

    if-nez v0, :cond_36

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v2

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    goto :goto_1a

    :cond_34
    iput-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    :cond_36
    monitor-exit v1

    goto :goto_3b

    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v2

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 3

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile$MyZipFile;->mEntryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object v0

    :cond_d
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method
