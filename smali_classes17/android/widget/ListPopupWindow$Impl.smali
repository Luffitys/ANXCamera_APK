.class Landroid/widget/ListPopupWindow$Impl;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/ListPopupWindow$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    return-void
.end method

.method public show(Landroid/widget/ListPopupWindow;)V
    .registers 2

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->originalShow()V

    return-void
.end method
