.class public Landroid/graphics/text/LineBreaker$Result;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field private static final END_HYPHEN_MASK:I = 0x7

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final START_HYPHEN_MASK:I = 0x18

.field private static final TAB_MASK:I = 0x20000000

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final mPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/text/LineBreaker$Result;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    # invokes: Landroid/graphics/text/LineBreaker;->nGetReleaseResultFunc()J
    invoke-static {}, Landroid/graphics/text/LineBreaker;->access$100()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreaker$Result;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    sget-object v0, Landroid/graphics/text/LineBreaker$Result;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(JLandroid/graphics/text/LineBreaker$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/text/LineBreaker$Result;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getEndLineHyphenEdit(I)I
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$700(JI)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getLineAscent(I)F
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineAscent(JI)F
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$500(JI)F

    move-result v0

    return v0
.end method

.method public getLineBreakOffset(I)I
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineBreakOffset(JI)I
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$300(JI)I

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineCount(J)I
    invoke-static {v0, v1}, Landroid/graphics/text/LineBreaker;->access$200(J)I

    move-result v0

    return v0
.end method

.method public getLineDescent(I)F
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineDescent(JI)F
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$600(JI)F

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineWidth(JI)F
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$400(JI)F

    move-result v0

    return v0
.end method

.method public getStartLineHyphenEdit(I)I
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$700(JI)I

    move-result v0

    and-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public hasLineTab(I)Z
    .registers 4

    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    # invokes: Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I
    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->access$700(JI)I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
