.class Landroid/widget/AbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$500(Landroid/widget/AbsListView;)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
