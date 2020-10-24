.class public Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;
.super Lmiui/animation/property/ViewProperty;
.source ""

# interfaces
.implements Lmiui/animation/property/IIntValueProperty;


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "foreground"

    invoke-direct {p0, v0}, Lmiui/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/property/ViewPropertyExt$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue(Landroid/view/View;)I
    .locals 0

    const p0, 0x100b0003

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;->getIntValue(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getValue(Landroid/view/View;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setIntValue(Landroid/view/View;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const p2, 0x100b0003

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;->setIntValue(Landroid/view/View;I)V

    return-void
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
