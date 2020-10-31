.class public final synthetic Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;

    invoke-direct {v0}, Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;->INSTANCE:Landroid/os/-$$Lambda$ThreadLocalWorkSource$IP9vRFCDG5YwbWbXAEGHH52B9IE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->lambda$static$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
