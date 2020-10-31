.class Lmiui/widget/Rotation3DLayout$4;
.super Ljava/lang/Object;
.source "Rotation3DLayout.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/Rotation3DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42340000    # 45.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F
    invoke-static {v2}, Lmiui/widget/Rotation3DLayout;->access$400(Lmiui/widget/Rotation3DLayout;)F

    move-result v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v3

    # setter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F
    invoke-static {v2, v4}, Lmiui/widget/Rotation3DLayout;->access$302(Lmiui/widget/Rotation3DLayout;F)F

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F
    invoke-static {v2}, Lmiui/widget/Rotation3DLayout;->access$300(Lmiui/widget/Rotation3DLayout;)F

    move-result v4

    invoke-virtual {v2, v4}, Lmiui/widget/Rotation3DLayout;->setRotationX(F)V

    :cond_28
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_45

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F
    invoke-static {v2}, Lmiui/widget/Rotation3DLayout;->access$400(Lmiui/widget/Rotation3DLayout;)F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v1

    div-float/2addr v4, v3

    # setter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F
    invoke-static {v2, v4}, Lmiui/widget/Rotation3DLayout;->access$502(Lmiui/widget/Rotation3DLayout;F)F

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F
    invoke-static {v2}, Lmiui/widget/Rotation3DLayout;->access$500(Lmiui/widget/Rotation3DLayout;)F

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/Rotation3DLayout;->setRotationY(F)V

    :cond_45
    return-void
.end method
