.class Lmiui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/SensorBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/SensorBinder;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    iget-object v2, v2, Lmiui/maml/data/SensorBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/VariableBinder$Variable;

    move-object v4, v3

    check-cast v4, Lmiui/maml/data/SensorBinder$Variable;

    iget v5, v4, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ltz v5, :cond_49

    iget v5, v4, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ge v5, v0, :cond_49

    invoke-virtual {v4}, Lmiui/maml/data/SensorBinder$Variable;->getNumber()D

    move-result-wide v5

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v8, v4, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    aget v7, v7, v8

    float-to-double v7, v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v7, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    # getter for: Lmiui/maml/data/SensorBinder;->mThreshold:F
    invoke-static {v7}, Lmiui/maml/data/SensorBinder;->access$000(Lmiui/maml/data/SensorBinder;)F

    move-result v7

    float-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_49

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v6, v4, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    aget v5, v5, v6

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lmiui/maml/data/SensorBinder$Variable;->set(D)V

    const/4 v1, 0x1

    :cond_49
    goto :goto_c

    :cond_4a
    if-eqz v1, :cond_51

    iget-object v2, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-virtual {v2}, Lmiui/maml/data/SensorBinder;->onUpdateComplete()V

    :cond_51
    return-void
.end method
