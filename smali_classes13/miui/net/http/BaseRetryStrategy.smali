.class public Lmiui/net/http/BaseRetryStrategy;
.super Ljava/lang/Object;
.source "BaseRetryStrategy.java"

# interfaces
.implements Lmiui/net/http/RetryStrategy;


# static fields
.field private static BLACK_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_TIMEOUT:I = 0x2710


# instance fields
.field private final mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeout:I

.field private final mMaxNumRetries:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/net/http/BaseRetryStrategy;->BLACK_LIST:Ljava/util/ArrayList;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/net/http/BaseRetryStrategy;->BLACK_LIST:Ljava/util/ArrayList;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2710

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lmiui/net/http/BaseRetryStrategy;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentTimeout:I

    iput p2, p0, Lmiui/net/http/BaseRetryStrategy;->mMaxNumRetries:I

    iput p3, p0, Lmiui/net/http/BaseRetryStrategy;->mBackoffMultiplier:F

    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .registers 2

    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentRetryCount:I

    return v0
.end method

.method public getCurrentTimeout()I
    .registers 2

    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentTimeout:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .registers 3

    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentRetryCount:I

    iget v1, p0, Lmiui/net/http/BaseRetryStrategy;->mMaxNumRetries:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected isUnretryThrowable(Ljava/lang/Throwable;)Z
    .registers 5

    sget-object v0, Lmiui/net/http/BaseRetryStrategy;->BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public retry(Ljava/lang/Throwable;)Z
    .registers 6

    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentRetryCount:I

    iget v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentTimeout:I

    int-to-float v2, v0

    int-to-float v0, v0

    iget v3, p0, Lmiui/net/http/BaseRetryStrategy;->mBackoffMultiplier:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lmiui/net/http/BaseRetryStrategy;->mCurrentTimeout:I

    invoke-virtual {p0}, Lmiui/net/http/BaseRetryStrategy;->hasAttemptRemaining()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lmiui/net/http/BaseRetryStrategy;->isUnretryThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method
