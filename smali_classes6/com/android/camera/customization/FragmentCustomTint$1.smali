.class Lcom/android/camera/customization/FragmentCustomTint$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/customization/FragmentCustomTint;


# direct methods
.method constructor <init>(Lcom/android/camera/customization/FragmentCustomTint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$000(Lcom/android/camera/customization/FragmentCustomTint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p1}, Lcom/android/camera/customization/FragmentCustomTint;->access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$000(Lcom/android/camera/customization/FragmentCustomTint;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p1}, Lcom/android/camera/customization/FragmentCustomTint;->access$200(Lcom/android/camera/customization/FragmentCustomTint;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$000(Lcom/android/camera/customization/FragmentCustomTint;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p1}, Lcom/android/camera/customization/FragmentCustomTint;->access$300(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p1}, Lcom/android/camera/customization/FragmentCustomTint;->access$300(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->access$400(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->access$500(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
