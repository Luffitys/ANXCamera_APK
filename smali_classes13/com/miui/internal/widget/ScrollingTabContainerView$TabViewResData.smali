.class Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabViewResData"
.end annotation


# instance fields
.field barLayoutRes:I

.field iconZoom:F

.field marginHorizontal:I

.field tabLayoutRes:I

.field tabTextStyle:I

.field final synthetic this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method
