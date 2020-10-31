.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field final insetsType:I

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I


# direct methods
.method private constructor <init>(IIIIILjava/lang/String;III)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    iput p9, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/lang/String;IIILcom/android/internal/policy/DecorView$1;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public isPresent(IIZ)Z
    .registers 5

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    and-int/2addr v0, p1

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_13

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_11

    if-eqz p3, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public isPresent(ZIZ)Z
    .registers 5

    if-eqz p1, :cond_b

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_9

    if-eqz p3, :cond_b

    :cond_9
    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isVisible(IIIZ)Z
    .registers 7

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v1

    return v1
.end method

.method public isVisible(Landroid/view/InsetsState;IIZ)Z
    .registers 7

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v1

    return v1
.end method

.method public isVisible(ZIIZ)Z
    .registers 6

    if-eqz p1, :cond_10

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_e

    if-eqz p4, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
