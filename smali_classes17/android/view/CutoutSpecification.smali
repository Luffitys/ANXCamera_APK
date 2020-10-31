.class public Landroid/view/CutoutSpecification;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CutoutSpecification$Parser;
    }
.end annotation


# static fields
.field private static final BIND_LEFT_CUTOUT_MARKER:Ljava/lang/String; = "@bind_left_cutout"

.field private static final BIND_RIGHT_CUTOUT_MARKER:Ljava/lang/String; = "@bind_right_cutout"

.field private static final BOTTOM_MARKER:Ljava/lang/String; = "@bottom"

.field private static final CENTER_VERTICAL_MARKER:Ljava/lang/String; = "@center_vertical"

.field private static final CUTOUT_MARKER:Ljava/lang/String; = "@cutout"

.field private static final DEBUG:Z = false

.field private static final DP_MARKER:Ljava/lang/String; = "@dp"

.field private static final LEFT_MARKER:Ljava/lang/String; = "@left"

.field private static final MARKER_START_CHAR:C = '@'

.field private static final MINIMAL_ACCEPTABLE_PATH_LENGTH:I

.field private static final RIGHT_MARKER:Ljava/lang/String; = "@right"

.field private static final TAG:Ljava/lang/String; = "CutoutSpecification"


# instance fields
.field private final mBottomBound:Landroid/graphics/Rect;

.field private final mInsets:Landroid/graphics/Insets;

.field private final mLeftBound:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private final mRightBound:Landroid/graphics/Rect;

.field private final mTopBound:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "H1V1Z"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/view/CutoutSpecification;->MINIMAL_ACCEPTABLE_PATH_LENGTH:I

    return-void
.end method

.method private constructor <init>(Landroid/view/CutoutSpecification$Parser;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->access$000(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    # getter for: Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->access$100(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mLeftBound:Landroid/graphics/Rect;

    # getter for: Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->access$200(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mTopBound:Landroid/graphics/Rect;

    # getter for: Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->access$300(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mRightBound:Landroid/graphics/Rect;

    # getter for: Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->access$400(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mBottomBound:Landroid/graphics/Rect;

    # getter for: Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;
    invoke-static {p1}, Landroid/view/CutoutSpecification$Parser;->access$500(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification;->mInsets:Landroid/graphics/Insets;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;)V

    return-void
.end method

.method static synthetic access$600(ZZZ)I
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/view/CutoutSpecification;->decideWhichEdge(ZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    sget v0, Landroid/view/CutoutSpecification;->MINIMAL_ACCEPTABLE_PATH_LENGTH:I

    return v0
.end method

.method private static decideWhichEdge(ZZZ)I
    .registers 7

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x30

    const/16 v3, 0x50

    if-eqz p0, :cond_15

    if-eqz p1, :cond_10

    if-eqz p2, :cond_e

    move v0, v2

    goto :goto_21

    :cond_e
    move v0, v3

    goto :goto_21

    :cond_10
    if-eqz p2, :cond_13

    goto :goto_21

    :cond_13
    move v0, v1

    goto :goto_21

    :cond_15
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1a

    goto :goto_21

    :cond_1a
    move v0, v1

    goto :goto_21

    :cond_1c
    if-eqz p2, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    return v0
.end method


# virtual methods
.method public getBottomBound()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mBottomBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLeftBound()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mLeftBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getRightBound()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mRightBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSafeInset()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTopBound()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/CutoutSpecification;->mTopBound:Landroid/graphics/Rect;

    return-object v0
.end method
