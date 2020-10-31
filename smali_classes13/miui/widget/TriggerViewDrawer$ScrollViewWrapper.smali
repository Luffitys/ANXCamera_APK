.class Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;
.super Ljava/lang/Object;
.source "TriggerViewDrawer.java"

# interfaces
.implements Lmiui/widget/TriggerViewDrawer$ScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/TriggerViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollViewWrapper"
.end annotation


# instance fields
.field private iScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .registers 2

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
