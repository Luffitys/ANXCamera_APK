.class public Lmiui/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "miui.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/os/DropBoxManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final QUEUE_QUOTA:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mEntries:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lmiui/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/os/DropBoxManager$1;

    invoke-direct {v0}, Lmiui/os/DropBoxManager$1;-><init>()V

    sput-object v0, Lmiui/os/DropBoxManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/os/DropBoxManager$2;

    invoke-direct {v0, p0}, Lmiui/os/DropBoxManager$2;-><init>(Lmiui/os/DropBoxManager;)V

    iput-object v0, p0, Lmiui/os/DropBoxManager;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/os/DropBoxManager$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/os/DropBoxManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 2

    iget-object v0, p0, Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method private addEntry(Lmiui/os/DropBoxManager$Entry;)V
    .registers 5

    iget-object v0, p0, Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v1, "DropBoxManager"

    const-string v2, "Fail to addEntry for queue is full"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    goto :goto_16

    :cond_13
    invoke-direct {p0}, Lmiui/os/DropBoxManager;->bindService()Z

    :goto_16
    return-void
.end method

.method private bindService()Z
    .registers 6

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.internal.action.BIND_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.core"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_service_name"

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_17
    iget-object v2, p0, Lmiui/os/DropBoxManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    return v2

    :catch_1f
    move-exception v2

    const-string v3, "DropBoxManager"

    const-string v4, "Fail to bind service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return v3
.end method

.method public static getInstance()Lmiui/os/DropBoxManager;
    .registers 1

    sget-object v0, Lmiui/os/DropBoxManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/os/DropBoxManager;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .registers 11

    if-eqz p2, :cond_11

    new-instance v6, Lmiui/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-direct {p0, v6}, Lmiui/os/DropBoxManager;->addEntry(Lmiui/os/DropBoxManager$Entry;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_11

    new-instance v6, Lmiui/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    invoke-direct {p0, v6}, Lmiui/os/DropBoxManager;->addEntry(Lmiui/os/DropBoxManager$Entry;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lmiui/os/DropBoxManager$Entry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lmiui/os/DropBoxManager;->addEntry(Lmiui/os/DropBoxManager$Entry;)V

    return-void
.end method
