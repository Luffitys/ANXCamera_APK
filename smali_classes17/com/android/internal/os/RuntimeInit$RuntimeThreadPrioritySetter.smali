.class Lcom/android/internal/os/RuntimeInit$RuntimeThreadPrioritySetter;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ldalvik/system/ThreadPrioritySetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuntimeThreadPrioritySetter"
.end annotation


# static fields
.field private static final NICE_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/os/RuntimeInit$RuntimeThreadPrioritySetter;->NICE_VALUES:[I

    return-void

    :array_a
    .array-data 4
        0x13
        0x10
        0xd
        0xa
        0x0
        -0x2
        -0x4
        -0x5
        -0x6
        -0x8
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$RuntimeThreadPrioritySetter;-><init>()V

    return-void
.end method


# virtual methods
.method public setPriority(II)V
    .registers 6

    sget-object v0, Lcom/android/internal/os/RuntimeInit$RuntimeThreadPrioritySetter;->NICE_VALUES:[I

    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    if-lt p2, v1, :cond_14

    if-gt p2, v2, :cond_14

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected NICE_VALUES.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/os/RuntimeInit$RuntimeThreadPrioritySetter;->NICE_VALUES:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
