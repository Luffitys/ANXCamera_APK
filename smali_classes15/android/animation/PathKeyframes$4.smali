.class Landroid/animation/PathKeyframes$4;
.super Landroid/animation/PathKeyframes$IntKeyframesBase;
.source "PathKeyframes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/PathKeyframes;


# direct methods
.method constructor <init>(Landroid/animation/PathKeyframes;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/PathKeyframes$4;->this$0:Landroid/animation/PathKeyframes;

    invoke-direct {p0}, Landroid/animation/PathKeyframes$IntKeyframesBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue(F)I
    .registers 4

    iget-object v0, p0, Landroid/animation/PathKeyframes$4;->this$0:Landroid/animation/PathKeyframes;

    invoke-virtual {v0, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
