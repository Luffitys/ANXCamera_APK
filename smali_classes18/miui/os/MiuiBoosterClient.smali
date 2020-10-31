.class public Lmiui/os/MiuiBoosterClient;
.super Ljava/lang/Object;
.source "MiuiBoosterClient.java"


# static fields
.field private static final MIUI_BOOSTER_SOCKET_NAME:Ljava/lang/String;

.field public static final SYSTEM_EVENT_BASE:I = 0x0

.field public static final SYSTEM_EVENT_SLIDE_CLOSE:I = 0x2

.field public static final SYSTEM_EVENT_SLIDE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiHardCoderClient"

.field private static volatile sMiuiBoosterClient:Lmiui/os/MiuiBoosterClient;


# instance fields
.field private mLocalSocketAddress:Landroid/net/LocalSocketAddress;

.field private mMiuiBoosterLocalSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/os/MiuiBoosterClient;->sMiuiBoosterClient:Lmiui/os/MiuiBoosterClient;

    const-string v0, "persist.sys.miuibooster.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/MiuiBoosterClient;->MIUI_BOOSTER_SOCKET_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lmiui/os/MiuiBoosterClient;->mMiuiBoosterLocalSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Lmiui/os/MiuiBoosterClient;->MIUI_BOOSTER_SOCKET_NAME:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lmiui/os/MiuiBoosterClient;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lmiui/os/MiuiBoosterClient;->mMiuiBoosterLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    const-string v1, "MiuiHardCoderClient"

    const-string v2, "IOException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method

.method public static getInstance()Lmiui/os/MiuiBoosterClient;
    .registers 2

    sget-object v0, Lmiui/os/MiuiBoosterClient;->sMiuiBoosterClient:Lmiui/os/MiuiBoosterClient;

    if-nez v0, :cond_17

    const-class v0, Lmiui/os/MiuiBoosterClient;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/os/MiuiBoosterClient;->sMiuiBoosterClient:Lmiui/os/MiuiBoosterClient;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/os/MiuiBoosterClient;

    invoke-direct {v1}, Lmiui/os/MiuiBoosterClient;-><init>()V

    sput-object v1, Lmiui/os/MiuiBoosterClient;->sMiuiBoosterClient:Lmiui/os/MiuiBoosterClient;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/os/MiuiBoosterClient;->sMiuiBoosterClient:Lmiui/os/MiuiBoosterClient;

    return-object v0
.end method


# virtual methods
.method public writeEvent(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiui/os/MiuiBoosterClient;->mMiuiBoosterLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_c

    nop

    const/4 v0, 0x1

    return v0

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
