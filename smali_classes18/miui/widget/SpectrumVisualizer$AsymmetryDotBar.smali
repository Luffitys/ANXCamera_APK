.class Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lmiui/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lmiui/widget/SpectrumVisualizer;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .registers 15

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v1, v1, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v0, v1, :cond_4d

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v3, v1, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v4, v1, v0

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v5, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v6, v1, p2

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v8, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v9, v1, v0

    const/4 v10, 0x1

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v11, v1, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v0

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_4d
    return-void
.end method
