.class public Lcom/android/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# instance fields
.field private mHintView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;
    .locals 2

    const v0, 0x7f0900e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/camera/OnScreenHint;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenHint;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public getHintViewVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    return p0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    const-string v0, "This OnScreenHint was not created with OnScreenHint.makeText()"

    if-eqz p0, :cond_1

    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/OnScreenHint;->mHintView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method
