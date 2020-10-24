.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public confident:F

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
