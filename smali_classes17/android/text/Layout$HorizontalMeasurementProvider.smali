.class Landroid/text/Layout$HorizontalMeasurementProvider;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalMeasurementProvider"
.end annotation


# instance fields
.field private mHorizontals:[F

.field private final mLine:I

.field private mLineStartOffset:I

.field private final mPrimary:Z

.field final synthetic this$0:Landroid/text/Layout;


# direct methods
.method constructor <init>(Landroid/text/Layout;IZ)V
    .registers 4

    iput-object p1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    iput-boolean p3, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    invoke-direct {p0}, Landroid/text/Layout$HorizontalMeasurementProvider;->init()V

    return-void
.end method

.method private init()V
    .registers 6

    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    # invokes: Landroid/text/Layout;->getLineHorizontals(IZZ)[F
    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->access$000(Landroid/text/Layout;IZZ)[F

    move-result-object v1

    iput-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    iput v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    return-void
.end method


# virtual methods
.method get(I)F
    .registers 5

    iget v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    if-eqz v1, :cond_11

    if-ltz v0, :cond_11

    array-length v2, v1

    if-lt v0, v2, :cond_e

    goto :goto_11

    :cond_e
    aget v1, v1, v0

    return v1

    :cond_11
    :goto_11
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget-boolean v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    # invokes: Landroid/text/Layout;->getHorizontal(IZ)F
    invoke-static {v1, p1, v2}, Landroid/text/Layout;->access$100(Landroid/text/Layout;IZ)F

    move-result v1

    return v1
.end method
