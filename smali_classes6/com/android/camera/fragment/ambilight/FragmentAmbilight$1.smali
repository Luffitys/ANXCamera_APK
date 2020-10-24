.class Lcom/android/camera/fragment/ambilight/FragmentAmbilight$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/ambilight/FragmentAmbilight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight$1;->this$0:Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
