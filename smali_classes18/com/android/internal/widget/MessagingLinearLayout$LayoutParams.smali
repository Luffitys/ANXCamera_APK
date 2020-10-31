.class public Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MessagingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MessagingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public hide:Z

.field public lastVisibleHeight:I

.field public visibleBefore:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    return-void
.end method
