.class public final Landroid/os/ThreadLocalWorkSource;
.super Ljava/lang/Object;
.source "ThreadLocalWorkSource.java"


# static fields
.field public static final UID_NONE:I = -0x1

.field private static final sWorkSourceUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;->INSTANCE:Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()J
    .registers 2

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getToken()J
    .registers 2

    sget-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getUid()I
    .registers 1

    sget-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/Integer;
    .registers 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static parseUidFromToken(J)I
    .registers 3

    long-to-int v0, p0

    return v0
.end method

.method public static restore(J)V
    .registers 4

    sget-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-static {p0, p1}, Landroid/os/ThreadLocalWorkSource;->parseUidFromToken(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setUid(I)J
    .registers 5

    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getToken()J

    move-result-wide v0

    sget-object v2, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-wide v0
.end method
