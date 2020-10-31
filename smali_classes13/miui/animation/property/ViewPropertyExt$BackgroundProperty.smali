.class public Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;
.super Lmiui/animation/property/ViewProperty;
.source "ViewPropertyExt.java"

# interfaces
.implements Lmiui/animation/property/IIntValueProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/property/ViewPropertyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/ViewProperty;",
        "Lmiui/animation/property/IIntValueProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string v0, "background"

    invoke-direct {p0, v0}, Lmiui/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/property/ViewPropertyExt$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;->getIntValue(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getValue(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setIntValue(Landroid/view/View;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;->setIntValue(Landroid/view/View;I)V

    return-void
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
