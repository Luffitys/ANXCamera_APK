.class public Lmiui/os/DropBoxManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "miui.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final QUEUE_QUOTA:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mEntries:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/os/DropBoxManager$1;

    invoke-direct {v0}, Lmiui/os/DropBoxManager$1;-><init>()V

    sput-object v0, Lmiui/os/DropBoxManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

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
    .locals 0

    invoke-direct {p0}, Lmiui/os/DropBoxManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private addEntry(Lmiui/os/DropBoxManager$Entry;)V
    .locals 1

    iget-object v0, p0, Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DropBoxManager"

    const-string v0, "Fail to addEntry for queue is full"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/os/DropBoxManager;->bindService()Z

    :goto_0
    return-void
.end method

.method private bindService()Z
    .locals 4

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.internal.action.BIND_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.core"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_service_name"

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lmiui/os/DropBoxManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DropBoxManager"

    const-string v1, "Fail to bind service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lmiui/os/DropBoxManager;
    .locals 1

    sget-object v0, Lmiui/os/DropBoxManager;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/os/DropBoxManager;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 7

    if-eqz p2, :cond_0

    new-instance v6, Lmiui/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    invoke-direct {p0, v6}, Lmiui/os/DropBoxManager;->addEntry(Lmiui/os/DropBoxManager$Entry;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 7

    if-eqz p2, :cond_0

    new-instance v6, Lmiui/os/DropBoxManager$Entry;

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    invoke-direct {p0, v6}, Lmiui/os/DropBoxManager;->addEntry(Lmiui/os/DropBoxManager$Entry;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lmiui/os/DropBoxManager$Entry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lmiui/os/DropBoxManager;->addEntry(Lmiui/os/DropBoxManager$Entry;)V

    return-void
.end method
