.class Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;
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
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lmiui/widget/SpectrumVisualizer;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v1, v1, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v2, v2, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int/2addr v1, v2

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v1, v2, :cond_4f

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v6, v2, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v7, v2, v1

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v8, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v9, v2, p2

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v11, v2, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v12, v2, v1

    const/4 v13, 0x1

    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v14, v2, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v10, v1

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_4f
    iget-object v2, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v2, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    int-to-float v2, v2

    iget-object v5, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v5, v5, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v5, v5, p2

    mul-float/2addr v2, v5

    iget-object v5, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v5, v5, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-double v5, v2

    add-double/2addr v5, v3

    double-to-int v2, v5

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int/2addr v2, v3

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    if-le v2, v3, :cond_73

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v2, v3, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    :cond_73
    if-lez v2, :cond_97

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v4, v3, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v5, 0x0

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v6, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v3, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v7, v3, p2

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v8, v3, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget v9, v3, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    const/4 v11, 0x1

    iget-object v3, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    iget-object v12, v3, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v10, v2

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_97
    return-void
.end method
