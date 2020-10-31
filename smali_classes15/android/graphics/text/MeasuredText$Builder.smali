.class public final Landroid/graphics/text/MeasuredText$Builder;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/MeasuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mComputeHyphenation:Z

.field private mComputeLayout:Z

.field private mCurrentOffset:I

.field private mHintMt:Landroid/graphics/text/MeasuredText;

.field private mNativePtr:J

.field private final mText:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    # invokes: Landroid/graphics/text/MeasuredText;->nGetReleaseFunc()J
    invoke-static {}, Landroid/graphics/text/MeasuredText;->access$000()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/text/MeasuredText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Landroid/graphics/text/MeasuredText;->mChars:[C
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->access$100(Landroid/graphics/text/MeasuredText;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    # getter for: Landroid/graphics/text/MeasuredText;->mComputeLayout:Z
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->access$200(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    if-eqz v0, :cond_32

    # getter for: Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->access$300(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    # getter for: Landroid/graphics/text/MeasuredText;->mComputeLayout:Z
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->access$200(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    return-void

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input MeasuredText must not be created with setComputeLayout(false)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([C)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    return-void
.end method

.method private ensureNativePtrNoReuse()V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can not be reused."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nAddReplacementRun(JJIIF)V
.end method

.method private static native nAddStyleRun(JJIIZ)V
.end method

.method private static native nBuildMeasuredText(JJ[CZZ)J
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nInitBuilder()J
.end method


# virtual methods
.method public appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int/2addr v2, p2

    iget-object v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v3, v3

    if-gt v2, v3, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    const-string v1, "Replacement exceeds the text length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move v8, v2

    move v9, p3

    invoke-static/range {v3 .. v9}, Landroid/graphics/text/MeasuredText$Builder;->nAddReplacementRun(JJIIF)V

    iput v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    return-object p0
.end method

.method public appendStyleRun(Landroid/graphics/Paint;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .registers 14

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int/2addr v2, p2

    iget-object v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v3, v3

    if-gt v2, v3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    const-string v1, "Style exceeds the text length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move v8, v2

    move v9, p3

    invoke-static/range {v3 .. v9}, Landroid/graphics/text/MeasuredText$Builder;->nAddStyleRun(JJIIZ)V

    iput v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    return-object p0
.end method

.method public build()Landroid/graphics/text/MeasuredText;
    .registers 16

    invoke-direct {p0}, Landroid/graphics/text/MeasuredText$Builder;->ensureNativePtrNoReuse()V

    iget v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    iget-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v1, v1

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-eqz v0, :cond_1f

    # getter for: Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z
    invoke-static {v0}, Landroid/graphics/text/MeasuredText;->access$300(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iget-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    if-ne v0, v1, :cond_17

    goto :goto_1f

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The hyphenation configuration is different from given hint MeasuredText"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    const-wide/16 v0, 0x0

    :try_start_21
    iget-object v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-nez v2, :cond_27

    move-wide v6, v0

    goto :goto_2e

    :cond_27
    iget-object v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v2}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v2

    move-wide v6, v2

    :goto_2e
    iget-wide v4, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    iget-object v8, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v9, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v10, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    invoke-static/range {v4 .. v10}, Landroid/graphics/text/MeasuredText$Builder;->nBuildMeasuredText(JJ[CZZ)J

    move-result-wide v2

    new-instance v4, Landroid/graphics/text/MeasuredText;

    iget-object v11, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v12, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v13, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    const/4 v14, 0x0

    move-object v8, v4

    move-wide v9, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZLandroid/graphics/text/MeasuredText$1;)V

    sget-object v5, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v5, v4, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_56

    nop

    iget-wide v8, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    return-object v4

    :catchall_56
    move-exception v2

    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    throw v2

    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Style info has not been provided for all text."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComputeHyphenation(Z)Landroid/graphics/text/MeasuredText$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    return-object p0
.end method

.method public setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    return-object p0
.end method
