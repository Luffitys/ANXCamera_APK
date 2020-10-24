.class public abstract Lcom/android/camera/ui/drawable/snap/PaintPattern;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/CameraPaintBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->prepareTargetPattern()V

    return-void
.end method


# virtual methods
.method protected final calculateCurrentValue(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public abstract directlyResult()V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public abstract interceptDraw()Z
.end method

.method public abstract prepareTargetPattern()V
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public abstract updateValue(F)V
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
.end method
