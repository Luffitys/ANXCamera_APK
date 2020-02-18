.class Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FragmentParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentParameterDescription;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-static {p1}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->access$000(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-static {p0}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->access$100(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-static {p0}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->access$100(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
