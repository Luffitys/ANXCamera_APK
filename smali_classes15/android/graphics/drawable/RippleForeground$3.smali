.class Landroid/graphics/drawable/RippleForeground$3;
.super Landroid/util/FloatProperty;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/RippleForeground;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;
    .registers 3

    # getter for: Landroid/graphics/drawable/RippleForeground;->mTweenX:F
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$700(Landroid/graphics/drawable/RippleForeground;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleForeground$3;->get(Landroid/graphics/drawable/RippleForeground;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/RippleForeground;F)V
    .registers 3

    # setter for: Landroid/graphics/drawable/RippleForeground;->mTweenX:F
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->access$702(Landroid/graphics/drawable/RippleForeground;F)F

    # setter for: Landroid/graphics/drawable/RippleForeground;->mTweenY:F
    invoke-static {p1, p2}, Landroid/graphics/drawable/RippleForeground;->access$802(Landroid/graphics/drawable/RippleForeground;F)F

    # invokes: Landroid/graphics/drawable/RippleForeground;->onAnimationPropertyChanged()V
    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$600(Landroid/graphics/drawable/RippleForeground;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground$3;->setValue(Landroid/graphics/drawable/RippleForeground;F)V

    return-void
.end method
