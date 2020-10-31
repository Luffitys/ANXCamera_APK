.class Lmiui/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/ViewPager;


# direct methods
.method private constructor <init>(Lmiui/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/ViewPager$PagerObserver;->this$0:Lmiui/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/ViewPager$PagerObserver;-><init>(Lmiui/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Lmiui/view/ViewPager$PagerObserver;->this$0:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Lmiui/view/ViewPager$PagerObserver;->this$0:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->dataSetChanged()V

    return-void
.end method
