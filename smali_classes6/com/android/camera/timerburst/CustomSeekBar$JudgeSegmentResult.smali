.class public Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bothSidesMarginBuffer:F

.field private elementArray:[I

.field private judgeValue:I

.field private perSegmentWidth:F

.field private segmentCount:I

.field final synthetic this$0:Lcom/android/camera/timerburst/CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/android/camera/timerburst/CustomSeekBar;F[IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->elementArray:[I

    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->segmentCount:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->perSegmentWidth:F

    iput p4, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->bothSidesMarginBuffer:F

    return-void
.end method


# virtual methods
.method public getJudgePosition(F)F
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->segmentCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->elementArray:[I

    aget v2, v1, v0

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    aget v2, v1, v2

    aget v3, v1, v0

    sub-int/2addr v2, v3

    aget v1, v1, v0

    int-to-float v1, v1

    sub-float/2addr p1, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 p1, 0x0

    :goto_1
    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->perSegmentWidth:F

    mul-float/2addr v0, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p0, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->bothSidesMarginBuffer:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public getJudgeValue(F)I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$2000(Lcom/android/camera/timerburst/CustomSeekBar;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->perSegmentWidth:F

    div-float/2addr p1, v0

    float-to-int v0, p1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$2100(Lcom/android/camera/timerburst/CustomSeekBar;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->elementArray:[I

    aget v0, v2, v0

    aget v1, v2, v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p1}, Lcom/android/camera/timerburst/CustomSeekBar;->access$2100(Lcom/android/camera/timerburst/CustomSeekBar;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$2100(Lcom/android/camera/timerburst/CustomSeekBar;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    :goto_0
    iput p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->judgeValue:I

    iget p0, p0, Lcom/android/camera/timerburst/CustomSeekBar$JudgeSegmentResult;->judgeValue:I

    return p0
.end method
