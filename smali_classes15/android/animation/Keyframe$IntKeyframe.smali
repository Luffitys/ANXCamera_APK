.class Landroid/animation/Keyframe$IntKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FI)V
    .registers 4

    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    iput p2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$IntKeyframe;
    .registers 4

    iget-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    if-eqz v0, :cond_10

    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    goto :goto_19

    :cond_10
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    :goto_19
    nop

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    iput-boolean v1, v0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .registers 2

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .registers 2

    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_16

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    :cond_16
    return-void
.end method
