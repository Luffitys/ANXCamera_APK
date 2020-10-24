.class Lcom/android/camera/fragment/sticker/FragmentSticker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {p0}, Lcom/android/camera/fragment/sticker/FragmentSticker;->access$000(Lcom/android/camera/fragment/sticker/FragmentSticker;)Landroid/widget/RadioGroup;

    move-result-object p0

    const p1, 0x7f0902ad

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$1;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {p0}, Lcom/android/camera/fragment/sticker/FragmentSticker;->access$000(Lcom/android/camera/fragment/sticker/FragmentSticker;)Landroid/widget/RadioGroup;

    move-result-object p0

    const p1, 0x7f0902ac

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_1
    return-void
.end method
