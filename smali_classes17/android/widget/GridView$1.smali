.class Landroid/widget/GridView$1;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_GridView$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillGap(Landroid/widget/GridView;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->originalFillGap(Z)V

    return-void
.end method

.method public layoutChildren(Landroid/widget/GridView;)V
    .registers 2

    invoke-virtual {p1}, Landroid/widget/GridView;->originalLayoutChildren()V

    return-void
.end method
