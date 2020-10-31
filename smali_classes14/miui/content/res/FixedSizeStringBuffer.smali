.class public Lmiui/content/res/FixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "FixedSizeStringBuffer.java"


# static fields
.field private static final STRING_CAPACITY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FixedSizeStringBuffer"

.field private static sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/SoftReference<",
            "Lmiui/content/res/FixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMutex:Ljava/lang/Object;


# instance fields
.field private mBuf:[C

.field private mLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    new-array v0, p1, [C

    iput-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    return-void
.end method

.method public static freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V
    .registers 4

    sget-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static getBuffer()Lmiui/content/res/FixedSizeStringBuffer;
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_52

    if-nez v2, :cond_42

    :try_start_c
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/FixedSizeStringBuffer;
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_1c} :catch_20
    .catchall {:try_start_c .. :try_end_1c} :catchall_52

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    move-object v0, v3

    goto :goto_42

    :catch_20
    move-exception v2

    :try_start_21
    const-string v3, "FixedSizeStringBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sBufferPool remove() throw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    :cond_42
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_52

    if-nez v0, :cond_4d

    new-instance v1, Lmiui/content/res/FixedSizeStringBuffer;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;-><init>(I)V

    move-object v0, v1

    :cond_4d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    return-object v0

    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .registers 8

    sub-int v0, p3, p2

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v3, v2

    if-gt v0, v3, :cond_14

    invoke-virtual {p1, p2, p3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    :cond_14
    return-void
.end method

.method public assign(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    return-void
.end method

.method public assign(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v1, v0

    if-gt p2, v1, :cond_b

    iput p2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_b
    return-void
.end method

.method public move(I)V
    .registers 3

    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    return-void
.end method

.method public setLength(I)V
    .registers 2

    iput p1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
